
//if else das
// void main(){
//   final students ={ "Ann","John","Liza"};
//   if (students.contains("Ann")) {
//   print("yes is there Ann");
// } else if (students.contains("Liza")){
//   print(" Liza there too");
// } else{
//   print("no");
// }
// }


//if else and das
//void main(){
  // var temp =35;
  // if(temp > -10 && temp < 30 ){
  //   print("wolking");
  // } else{
  //   print("no wolking");
  // }
//}

//for i das
// void main(){
//   final a =2;
//   final n = 4;
//   var result = a;
//   for(var i =1; i<n; i++ ){
//    result = result * a;
//   }
//   print(result);
// }


//function

// void main(){
//   Function sum =( a, b){
//     return a + b;
// };
// print(sum(5,8));
// }

//sintax: typedef function_name(parameters);  ||assign variable to a function//typedef variable_name=function_name; || variable_name(parameters);
//defining alias name
// typedef GeeksForGeeks(int a, int b);

// //defining Geek1 function
// Geek1 (int a, int b){
//   print("This is Geek1");
//   print("$a +$b is equal to${a+b}.");
// }

// //defining Geek2 function
// Geek2 (int a, int b){
//   print("This is Geek2");
//   print("$a and $b are lucky geek numbers !!" );
// }
// void main(){
//   GeeksForGeeks 
//   number = Geek1;
//   number(1,2);
//   number = Geek2;
//   number(3,4);
// }

//using typedef as a parameter of a function
// typedef GeeksForGeeks(int a, int b);
// Geek1 (int a, int b){
//   print("This is Geek1");
// }
// number (int a, int b,GeeksForGeeks geek){
//   print("Welcom");
//   print("$a and $b are lucky geek numbers !!" );

// }

// void main(){
//   number(20,33,Geek1);
// }

/////////////////////
// void main(){
//   final List<int> list =[3,-8,6,-7,8,-54];
//   for(var i in list){
//     if(i < 0){
//   print(i);
//     }
//   }
//     for (var i in list){
//     if(i>0){
//   print(i);
//     }
//   }
// }
  
void main(){
  int posNum = 0;
  int negNum =0;
  final List<int> list =[3, -8, 6, -7, 8, -54];
  for(var i in list){
 if(i > 0){
   posNum++;
  }else if(i<0) {
    negNum++;
    }
  }

    print('$posNum');
    print('$negNum');
    }
