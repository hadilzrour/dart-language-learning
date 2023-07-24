import 'package:car_project/car.dart';

void main(List<String> arguments) {
  // Création d'une instance de la classe Car
  Car myCar = Car('Toyota', 'Corolla', 2022, 25000.0);

  // Utilisation de la méthode displayDetails pour afficher les détails de la voiture
  myCar.displayDetails();
}
