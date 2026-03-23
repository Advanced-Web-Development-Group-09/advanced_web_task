import { ComponentFixture, TestBed } from '@angular/core/testing';
import { MatDialogRef, MAT_DIALOG_DATA } from '@angular/material/dialog';
import { TranslateModule } from '@ngx-translate/core';
import { ConfirmDeletionDialog } from './confirm-deletion-dialog';

describe('ConfirmDeletionDialog', () => {
  let component: ConfirmDeletionDialog;
  let fixture: ComponentFixture<ConfirmDeletionDialog>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [ConfirmDeletionDialog, TranslateModule.forRoot()],
      providers: [
        { provide: MatDialogRef, useValue: { close: () => {} } },
        { provide: MAT_DIALOG_DATA, useValue: {} }
      ]
    }).compileComponents();

    fixture = TestBed.createComponent(ConfirmDeletionDialog);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
