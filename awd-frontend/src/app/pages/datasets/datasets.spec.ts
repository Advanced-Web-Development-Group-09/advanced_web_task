import { ComponentFixture, TestBed } from '@angular/core/testing';
import { provideHttpClientTesting } from '@angular/common/http/testing';
import { provideHttpClient } from '@angular/common/http';
import { TranslateModule } from '@ngx-translate/core';
import { provideRouter } from '@angular/router';
import { NoopAnimationsModule } from '@angular/platform-browser/animations';
import { Datasets } from './datasets';
import { TrainService } from './train.service';
import { of } from 'rxjs';

describe('Datasets', () => {
  let component: Datasets;
  let fixture: ComponentFixture<Datasets>;

  beforeEach(async () => {
    const mockTrainService = {
      getUploadedDatasets: jasmine.createSpy('getUploadedDatasets').and.returnValue(of([])),
      getExports: jasmine.createSpy('getExports').and.returnValue(of([]))
    };

    await TestBed.configureTestingModule({
      imports: [Datasets, TranslateModule.forRoot(), NoopAnimationsModule],
      providers: [provideHttpClient(), provideHttpClientTesting(), provideRouter([]), { provide: TrainService, useValue: mockTrainService }]
    }).compileComponents();

    fixture = TestBed.createComponent(Datasets);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
