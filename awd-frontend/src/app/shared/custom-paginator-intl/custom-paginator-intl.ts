import { Injectable } from '@angular/core';
import { MatPaginatorIntl } from '@angular/material/paginator';
import { Subject } from 'rxjs';
import { TranslateService } from '@ngx-translate/core';

@Injectable()
export class CustomPaginatorIntl implements MatPaginatorIntl {
  changes = new Subject<void>();

  firstPageLabel = '';
  itemsPerPageLabel = '';
  lastPageLabel = '';
  nextPageLabel = '';
  previousPageLabel = '';

  constructor(private translate: TranslateService) {
    this.translate.onLangChange.subscribe(() => this.translateLabels());
    this.translateLabels();
  }

  private translateLabels() {
    this.translate
      .get([
        'PAGINATOR.FIRST_PAGE',
        'PAGINATOR.ITEMS_PER_PAGE',
        'PAGINATOR.LAST_PAGE',
        'PAGINATOR.NEXT_PAGE',
        'PAGINATOR.PREVIOUS_PAGE',
      ])
      .subscribe((t) => {
        this.firstPageLabel = t['PAGINATOR.FIRST_PAGE'];
        this.itemsPerPageLabel = t['PAGINATOR.ITEMS_PER_PAGE'];
        this.lastPageLabel = t['PAGINATOR.LAST_PAGE'];
        this.nextPageLabel = t['PAGINATOR.NEXT_PAGE'];
        this.previousPageLabel = t['PAGINATOR.PREVIOUS_PAGE'];

        this.changes.next(); // 🔥 required
      });
  }

  getRangeLabel(page: number, pageSize: number, length: number): string {
    if (length === 0) {
      return this.translate.instant('PAGINATOR.RANGE_EMPTY');
    }

    const amountPages = Math.ceil(length / pageSize);

    return this.translate.instant('PAGINATOR.RANGE_PAGE', {
      page: page + 1,
      totalPages: amountPages,
    });
  }
}
