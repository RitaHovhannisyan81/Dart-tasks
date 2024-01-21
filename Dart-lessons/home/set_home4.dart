void mySet(){
  final Set<String> uniqeName ={};
  uniqeName.add("Ann");
  uniqeName.add("John");
  uniqeName.add("Liza");
  print('Set elements: $uniqeName');
  String chackElement = "Ann";
  if(uniqeName.contains(chackElement)){
    print('$chackElement');
  }else{
    print('$chackElement in not in the uniqename');
  }
}
void main(){
 mySet();
}