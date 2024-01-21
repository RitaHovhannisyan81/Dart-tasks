// /////////
// void main(){
// List list = ["Steve", "John","Sara"];
// int x = 0;
// Map map = {
//     for(var item in list) 
//     x++ : "$item"
//     };
// print(map);

// //////////
// // void main(){
// //     var networkData={
// //         1:"str1",
// //         2:"str2",
// //         3:"str3"
// //     };
// //     myList()=>networkData.entries.map((e)=>e.value).toList();
// //     print(myList()[1]);
// // }
// //////////////////////////////

// // void main(){
// //     List list = [
// //         {"Code": "ABC", "Name":"N1"," Type":"111"}
// //         ];
// //     final List<String> namesList=list.map((e) => e["Name"].toString()).toList();
// //     print(namesList);
// // }

// //////////////////////////////
//     List list2 = [
//         {"Code": "ABC", "Name":"N1"," Type":"111"},
//         {"Code": "DFG", "Name":"N2"," Type":"222"}
//     ];
//     final List<String> namesList2=list2.map((e) => e["Name"].toString()).toList();
//     print(namesList2);

//     List list1 = [
//         {"Code": " ABC", "Name":"\"N1\"", "Type" : "111"},
//         {"Code": " CVB", "Name":"\"N2\"", "Type" : "222"},
//     ];
//     final List<String> namesList1 = list1.map((e) => "${e["Name"].toString()}").toList();
//     print(namesList1);
// }

///////////////////
// void main(){
// final List<int> list =List.generate(100, (i) {
//   return i;

// });
// final sum = 0;
// for(var i = 0; i<list.length; i++){
//  sum+=i;
//  print(i);
//import 'dart:io';

//tpel zuyg tver@
// void main(){
//   print("Enter num");
//   final n = int.tryParse(stdin.readLineSync()!);
//   final List<int> list = List.(n){
//     for( var i = 0; i<=n; i++){
//     if (n % 2 == 0){
//       print(n);
//     }
//     }

//   };
///min,max
// void main(){
//   List list = [2,8,1,6];
//    int? mmim = list[0];
//    int? mmax=list[0];
//   for( var i in list){
//    if (i > mmax  ){
//   mmax= i;
//   }
//   if (i< mmim){
//    mmim = i;
//    }
// }
// print(mmax);
// print(mmim);
// }


// //min & max function ov
// void main(){                 
// final  List list = [2,8,1,6];
//    int? mmim = list[0];
//    int? mmax=list[0];
//     for( var i in list){
//     if (i < mmim  ){
//    mmim= i;
//     }
//   }
//     for( var i in list){
//     if (i > mmax  ){
//    mmax= i;
//     }
//   }
// print(mmim);
// print(mmax);
// }


import 'dart:io';

void main() {
  // Data structures:
  // List, Set, Map
  // Queue (FIFO) <=> (HOME ->) Stack(LIFO), LinkedList
  // while, do, for, for in, do while

  final List<int> list = List.generate(10, (i) {
    return i * 2;
  });

  for (var element in list) {
    print(element);
  }

  final List<int> myList = [];

  for (var i = 0; i < 10; i++) {
    print(myList[i]);
  }

  print(list);
  print(myList);

  stdin.readLineSync();

  // final Set<String> set = {};
  // final Map<String, double> map = {};
}