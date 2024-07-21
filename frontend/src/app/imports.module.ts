import { CommonModule } from "@angular/common";
import { NgModule } from "@angular/core";
import { FormsModule, ReactiveFormsModule } from "@angular/forms";
import { RouterModule } from "@angular/router";
import { AutoCompleteModule } from "primeng/autocomplete";
import { BadgeModule } from "primeng/badge";
import { CalendarModule } from "primeng/calendar";
import { CardModule } from "primeng/card";
import { CheckboxModule } from "primeng/checkbox";
import { DataViewModule } from "primeng/dataview";
import { DialogModule } from "primeng/dialog";
import { InputGroupModule } from "primeng/inputgroup";
import { InputGroupAddonModule } from "primeng/inputgroupaddon";
import { InputNumberModule } from "primeng/inputnumber";
import { InputTextModule } from "primeng/inputtext";
import { InputTextareaModule } from "primeng/inputtextarea";
import { ListboxModule } from "primeng/listbox";
import { ProgressSpinnerModule } from "primeng/progressspinner";
import { RadioButtonModule } from "primeng/radiobutton";
import { RippleModule } from "primeng/ripple";
import { SkeletonModule } from "primeng/skeleton";
import { TableModule } from "primeng/table";
import { TagModule } from "primeng/tag";
import { ToolbarModule } from "primeng/toolbar";
import { TreeModule } from "primeng/tree";
import { TreeTableModule } from "primeng/treetable";

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
    SkeletonModule,
    RouterModule,
    ProgressSpinnerModule,
    BadgeModule,
    TreeModule,
    TreeTableModule,
    ReactiveFormsModule,
    FormsModule,
    InputGroupModule,
    InputGroupAddonModule,
    DialogModule,
    ListboxModule,
    ToolbarModule,
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
    SkeletonModule,
    RouterModule,
    ProgressSpinnerModule,
    BadgeModule,
    TreeModule,
    TreeTableModule,
    ReactiveFormsModule,
    FormsModule,
    InputGroupModule,
    InputGroupAddonModule,
    DialogModule,
    ListboxModule,
    ToolbarModule,
  ],
})
export class ImportsModule {}
