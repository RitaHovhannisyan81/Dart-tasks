void newMap(){
final Map<String, double> map = {
  'aple':20.5,
  'banana':45,
  'oringe':100
};
// for (var name in map.keys) {
//     print('$name: ${map[name]}');
//   }

  map.forEach((key, value) =>print('$key:$value') );
  }

void main() {
  newMap();
}

