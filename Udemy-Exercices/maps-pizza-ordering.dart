void main() {
  const pizzaPrices = {
    'marghertita': 5.5,
    'pepperoni': 7.5,
    'vegeterian': 6.5,
  };

  const order = ['marghertita', 'pepperoni'];
  var total = 0.0;
  for (var ord in order) {
    final price = pizzaPrices[ord];
    if (price != null) {
      total += price;
    } else {
      print('$ord pizza is not on the menu');
    }
  }
  print('Total: \$$total');
}
