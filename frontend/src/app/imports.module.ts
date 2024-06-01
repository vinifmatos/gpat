import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { InputTextModule } from 'primeng/inputtext';
import { InputTextareaModule } from 'primeng/inputtextarea';
import { CalendarModule } from 'primeng/calendar';
import { InputNumberModule } from 'primeng/inputnumber';
import { AutoCompleteModule } from 'primeng/autocomplete';
import { RadioButtonModule } from 'primeng/radiobutton';
import { TableModule } from 'primeng/table';
import { TagModule } from 'primeng/tag';
import { DataViewModule } from 'primeng/dataview';
import { CheckboxModule } from 'primeng/checkbox';
import { RippleModule } from 'primeng/ripple';
import { CardModule } from 'primeng/card';
import { SkeletonModule } from 'primeng/skeleton';

@NgModule({
  declarations: [],
  imports: [
    CommonModule,
    InputTextModule,
    InputTextareaModule,
    CalendarModule,
    InputNumberModule,
    AutoCompleteModule,
    RadioButtonModule,
    TableModule,
    DataViewModule,
    CheckboxModule,
    RippleModule,
    CardModule,
    TagModule,
    SkeletonModule
  ],
  exports: [
    CommonModule,
    InputTextModule,
    InputTextareaModule,
    CalendarModule,
    InputNumberModule,
    AutoCompleteModule,
    RadioButtonModule,
    TableModule,
    TagModule,
    DataViewModule,
    CheckboxModule,
    RippleModule,
    CardModule,
    SkeletonModule
  ]
})
export class ImportsModule { }