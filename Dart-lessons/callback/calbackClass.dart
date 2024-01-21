// num add(num a, num b)=>a+b;
// void performOperation(num Function() callback){
//   num result = callback();
//   print(result);

// }
// void main(){
//    performOperation(() => add(1,2));
// }



// num add(num a, num b)=>a+b;
// void performOperation(num Function(num a,num b) operation){
//   num a = 5;
//   num b = 6;
//   num result = operation(a ,b);
//   print(result);

// }
// void main(){
//    performOperation(add);
// }



void printResult({int Function()? callback}) {
  callback?.call();
}

// String sendMessage() {
//   const String message = 'Hello';
//   return message;
// }

typedef AddFunction = num Function(num a, num b);

// void example(VoidCallback callback) => callback();

// printResult(function) => function, null, optional
// {
// if null - return
// if no - call the function
// }

num add(num a, num b) => a + b;

// void performOperation(void Function() operation) {
//   final num a = 5;
//   final num b = 5;
//   num result = operation(a, b);
//   print(result);
// }






void main() {
  // performOperation(add);
  // callbacks, callback arguments, typedef, nullable callback
}