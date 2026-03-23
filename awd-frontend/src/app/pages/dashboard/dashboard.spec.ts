import { ComponentFixture, TestBed } from '@angular/core/testing';
import { provideHttpClientTesting } from '@angular/common/http/testing';
import { provideHttpClient } from '@angular/common/http';
import { TranslateModule } from '@ngx-translate/core';
import { provideRouter } from '@angular/router';
import { NoopAnimationsModule } from '@angular/platform-browser/animations';
import { Dashboard } from './dashboard';
import { TrainService } from '../../services/train/train.service';
import { of } from 'rxjs';

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

  it('should export selected items', () => {
    spyOn(window.URL, 'createObjectURL').and.returnValue('blob:url');
    spyOn(window.URL, 'revokeObjectURL');
    
    component.toggleAllRows();
    component.exportSelected();
    
    expect(trainService.exportSelectedTrains).toHaveBeenCalledWith(['1', '2']);
    expect(window.URL.createObjectURL).toHaveBeenCalled();
    expect(window.URL.revokeObjectURL).toHaveBeenCalled();
  });
});
