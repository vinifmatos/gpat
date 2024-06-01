import { Component, Input } from '@angular/core';
import { ImportsModule } from '../../../imports.module';
import { Endereco } from '../../../interfaces/endereco';

@Component({
  selector: 'app-show-enderecos',
  standalone: true,
  imports: [ImportsModule],
  templateUrl: './show-enderecos.component.html',
  styleUrl: './show-enderecos.component.scss'
})
export class ShowEnderecosComponent {
  @Input() enderecos: Endereco[]
}
