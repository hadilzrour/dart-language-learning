void main() {
  print(sum([]));
  print(sum([1,2]));
  print(sum([1,2,3,4]));
}

double sum (List<double> list) {
  var total = 0.0;
  for (var val in list) {
    total += val;
  }
  return total;
}
