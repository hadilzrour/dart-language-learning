class Car {
  // Attributs privées de la classe
  final String _brand;
  final String _model;
  final int _year;
  final double _price;

  // Constructeur par défaut
  Car(this._brand, this._model, this._year, this._price);

  // Getters 
  String get brand => _brand;
  String get model => _model;
  int get year => _year;
  double get price => _price;

  // Méthode pour afficher les détails de la voiture
  void displayDetails() {
    print('Brand: $_brand');
    print('Model: $_model');
    print('Year: $_year');
    print('Price: \$$_price');
  }
}
