import { ComponentFixture, TestBed } from '@angular/core/testing';
import { MatDialogRef, MAT_DIALOG_DATA } from '@angular/material/dialog';
import { TranslateModule } from '@ngx-translate/core';
import { ConfirmDeletionDialog } from './confirm-deletion-dialog';
import { UserService } from '../../services/user/user.service';
import { Router } from '@angular/router';
import { of } from 'rxjs';

describe('ConfirmDeletionDialog', () => {
  let component: ConfirmDeletionDialog;
  let fixture: ComponentFixture<ConfirmDeletionDialog>;
  let mockUserService: any;
  let mockRouter: any;
  let mockDialogRef: any;

  beforeEach(async () => {
    mockUserService = { deleteUserProfile: jasmine.createSpy('deleteUserProfile').and.returnValue(of({})) };
    mockRouter = { navigate: jasmine.createSpy('navigate') };
    mockDialogRef = { close: jasmine.createSpy('close') };

    await TestBed.configureTestingModule({
      imports: [ConfirmDeletionDialog, TranslateModule.forRoot()],
      providers: [
        { provide: MatDialogRef, useValue: mockDialogRef },
        { provide: MAT_DIALOG_DATA, useValue: {} },
        { provide: UserService, useValue: mockUserService },
        { provide: Router, useValue: mockRouter }
      ]
    }).compileComponents();

    fixture = TestBed.createComponent(ConfirmDeletionDialog);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });

  it('should confirm deletion', () => {
    spyOn(localStorage, 'removeItem');
    component.onConfirm();
    expect(mockUserService.deleteUserProfile).toHaveBeenCalled();
    expect(mockDialogRef.close).toHaveBeenCalledWith(true);
    expect(localStorage.removeItem).toHaveBeenCalledWith('token');
    expect(mockRouter.navigate).toHaveBeenCalledWith(['/registration']);
  });
});
