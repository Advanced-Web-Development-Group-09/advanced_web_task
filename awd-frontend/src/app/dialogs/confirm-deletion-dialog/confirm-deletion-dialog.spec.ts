import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ConfirmDeletionDialog } from './confirm-deletion-dialog';

describe('ConfirmDeletionDialog', () => {
  let component: ConfirmDeletionDialog;
  let fixture: ComponentFixture<ConfirmDeletionDialog>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [ConfirmDeletionDialog],
    }).compileComponents();

    fixture = TestBed.createComponent(ConfirmDeletionDialog);
    component = fixture.componentInstance;
    await fixture.whenStable();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
