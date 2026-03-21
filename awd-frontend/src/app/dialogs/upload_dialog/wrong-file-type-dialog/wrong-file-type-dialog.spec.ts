import { ComponentFixture, TestBed } from '@angular/core/testing';

import { WrongFileTypeDialog } from './wrong-file-type-dialog';

describe('WrongFileTypeDialog', () => {
  let component: WrongFileTypeDialog;
  let fixture: ComponentFixture<WrongFileTypeDialog>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [WrongFileTypeDialog],
    }).compileComponents();

    fixture = TestBed.createComponent(WrongFileTypeDialog);
    component = fixture.componentInstance;
    await fixture.whenStable();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
