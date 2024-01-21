
import 'dart:convert';
import 'dart:io'; 
// void readFromJson(){
//   var file = File('users.json');
//   final String strJsonDarta = file.readAsStringSync();
//   final Map<String,dynamic> data = jsonDecode(strJsonData);
// final List<dynamic> list =data['contactList']??[];
//   for(int i=0;i < list.length; i++){
//     //print (element??'');
//    if (list[i]['id']==null){
//       list.removeAt(i);
   
// }
// //print(list[i]);
//   }
//   print (data);
// }
//   void main(){
//    readFromJson();

// }
 void checkLogin(){
  var file = File('new_user.json');
  final String strJsonData = file.readAsStringSync();
  final Map<String,dynamic> jsonList = jsonDecode(strJsonData);
  final List<dynamic> list =jsonList['contactList']??[];
  stdout.write('Enter new password: ');
  String newPassword = stdin.readLineSync() ?? '';
      for (int i = 0; i < jsonList.length; i++) {
      Map<String, dynamic> userMap = jsonList[i];
      if (userMap['password'] == newPassword) {
      jsonList[i] = list.jsonDecode(userMap).toJson();
        
      print('userMap');
    } 
  }
 }
  
   void main(){
   checkLogin();

}




   

