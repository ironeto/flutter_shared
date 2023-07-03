## Features

Esse pacote oferece um footer genérico para listas de itens.

## Getting started

Implemente a IGenericOverviewCard em seu provider, desta forma:
class Provider extends ChangeNotifier implements IGenericOverviewCard

Após isso, sobrescreva o método countItems, desta forma:

@override
int countItems() {
return itens.fold(0, (acc, p) => acc + p.effortHours);
}

## Usage

Agora é só usar o componente, onde desejar, dessa forma:
GenericOverviewCard<IGenericOverviewCard>(
labelForCounter: 'Total de Horas')