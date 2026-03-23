import { ComponentFixture, TestBed } from '@angular/core/testing';
import { MatDialogRef, MAT_DIALOG_DATA } from '@angular/material/dialog';
import { TranslateModule } from '@ngx-translate/core';
import { WrongFileTypeDialog } from './wrong-file-type-dialog';

describe('WrongFileTypeDialog', () => {
  let component: WrongFileTypeDialog;
  let fixture: ComponentFixture<WrongFileTypeDialog>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [WrongFileTypeDialog, TranslateModule.forRoot()],
      providers: [
        { provide: MatDialogRef, useValue: { close: () => {} } },
        { provide: MAT_DIALOG_DATA, useValue: {} }
      ]
    }).compileComponents();

    fixture = TestBed.createComponent(WrongFileTypeDialog);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
