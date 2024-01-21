//Տպում է դրական և բացասական թվերի քանակը։
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




//////////////////////
///տպում է բացասական թվերը, հետո դրական թվերը։
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