void main() {
  List<int> numeros =[1,2,3,4,5,6,7,8,9,10];
  numeros.add(11);
  print(numeros);
  
  final masNumeros = List.generate(101, (int index) => index);
  print(masNumeros);
}