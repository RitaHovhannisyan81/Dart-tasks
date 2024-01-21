void main(){
  String name = "shirsh";
  print(name.capitalizeFirstLetter()); //Shirsh
}

extension CapitalizeData on String{
  String capitalizeFirstLetter() {
   return '${this[0].toUpperCase()}${substring(1)}';
   }  
}