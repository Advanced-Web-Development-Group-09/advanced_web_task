import { ComponentFixture, TestBed } from '@angular/core/testing';
import { provideHttpClientTesting } from '@angular/common/http/testing';
import { provideHttpClient } from '@angular/common/http';
import { TranslateModule } from '@ngx-translate/core';
import { provideRouter } from '@angular/router';
import { NoopAnimationsModule } from '@angular/platform-browser/animations';
import { Dashboard } from './dashboard';
import { TrainService } from '../../services/train/train.service';
import { of, throwError } from 'rxjs';

describe('Dashboard', () => {
  let component: Dashboard;
  let fixture: ComponentFixture<Dashboard>;
  let trainService: any;

  beforeEach(async () => {
    trainService = {
      getTrains: jasmine.createSpy('getTrains').and.returnValue(of({ items: [{ id: '1' }, { id: '2' }], total: 2 })),
      exportSelectedTrains: jasmine.createSpy('exportSelectedTrains').and.returnValue(of(new Blob(['test'], { type: 'text/csv' })))
    };

    await TestBed.configureTestingModule({
      imports: [Dashboard, TranslateModule.forRoot(), NoopAnimationsModule],
      providers: [
        provideHttpClient(),
        provideHttpClientTesting(),
        provideRouter([]),
        { provide: TrainService, useValue: trainService }
      ]
    }).compileComponents();

    fixture = TestBed.createComponent(Dashboard);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });

  it('should load trains on init', () => {
    expect(trainService.getTrains).toHaveBeenCalled();
    expect(component.dataSource.data.length).toBe(2);
  });

  it('should trigger search', () => {
    component.searchValue = 'test';
    component.onSearch();
    expect(trainService.getTrains).toHaveBeenCalled();
  });

  it('should set search on select', () => {
    component.onSelect('suggestion');
    expect(component.searchValue).toBe('suggestion');
    expect(trainService.getTrains).toHaveBeenCalled();
  });

  it('should select all and deselect rows', () => {
    component.toggleAllRows();
    expect(component.isAllSelected()).toBeTrue();
    component.toggleAllRows();
    expect(component.isAllSelected()).toBeFalse();
  });

  it('should toggle expansion', () => {
    const row = component.dataSource.data[0];
    component.toggle(row);
    expect(component.isExpanded(row)).toBeTrue();
  });

  it('should close expanded element when toggled again', () => {
    const row = component.dataSource.data[0];
    component.toggle(row);
    expect(component.isExpanded(row)).toBeTrue();
    
    component.toggle(row);
    expect(component.isExpanded(row)).toBeFalse();
  });

  it('should export selected items', () => {
    spyOn(window.URL, 'createObjectURL').and.returnValue('blob:url');
    spyOn(window.URL, 'revokeObjectURL');
    
    component.toggleAllRows();
    component.exportSelected();
    
    expect(trainService.exportSelectedTrains).toHaveBeenCalledWith(['1', '2']);
    expect(window.URL.createObjectURL).toHaveBeenCalled();
    expect(window.URL.revokeObjectURL).toHaveBeenCalled();
  });

  it('should return correct checkbox label', () => {
    expect(component.checkboxLabel()).toBe('select all');
    component.toggleAllRows();
    expect(component.checkboxLabel()).toBe('deselect all');
    
    const row = component.dataSource.data[0];
    expect(component.checkboxLabel(row)).toBe('deselect row 1');
    component.selection.clear();
    expect(component.checkboxLabel(row)).toBe('select row 1');
  });

  it('should save search history up to 5 items', () => {
    component.searchValue = 'search1';
    component.onSearch();
    component.searchValue = 'search2';
    component.onSearch();
    component.searchValue = 'search3';
    component.onSearch();
    component.searchValue = 'search4';
    component.onSearch();
    component.searchValue = 'search5';
    component.onSearch();
    expect(component.lastSearches).toEqual(['search5', 'search4', 'search3', 'search2', 'search1']);
  });

  it('should load search history from localStorage on init', () => {
    localStorage.setItem('searchHistory', JSON.stringify(['history1', 'history2']));
    component.ngOnInit();
    expect(component.lastSearches).toEqual(['history1', 'history2']);
  });

  it('should not save search if value is empty', () => {
    component.lastSearches = [];
    component.searchValue = '   '; // Will be trimmed to empty
    component.onSearch();
    expect(component.lastSearches.length).toBe(0);
  });

  it('should move duplicate search to top', () => {
    component.searchValue = 'search1';
    component.onSearch();
    component.searchValue = 'search2';
    component.onSearch();
    component.searchValue = 'search1';
    component.onSearch();
    expect(component.lastSearches).toEqual(['search1', 'search2']);
    
    component.searchValue = ''; // empty search check
    component.onSearch();
    expect(component.lastSearches).toEqual(['search1', 'search2']);
  });

  it('should handle pagination change', () => {
    component.paginator.page.emit({ pageIndex: 1, pageSize: 20, length: 100 });
    expect(trainService.getTrains).toHaveBeenCalledWith(20, 20, '');
  });

  it('should handle load trains error', () => {
    trainService.getTrains.and.returnValue(throwError(() => new Error('Error')));
    component.loadTrains(0, 10);
    expect(trainService.getTrains).toHaveBeenCalled();
  });
});
