import { Component } from '@angular/core';
import { ImportsModule } from '../../../imports.module';

@Component({
  selector: 'app-spinner',
  standalone: true,
  imports: [ImportsModule],
  templateUrl: './spinner.component.html',
  styleUrl: './spinner.component.scss'
})
export class SpinnerComponent {

}
