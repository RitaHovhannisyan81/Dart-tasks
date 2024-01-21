import "dart:io";
typedef MapString =Map<String , dynamic>;
typedef MapList = List<MapString>;

final MapList db=[
{'login':'bob' , 'password':'123'},
{'login':'ann' , 'password':'456'},
{'login':'jak' , 'password':'000'}
];
String input()=>stdin.readLineSync()!;
void signin(String login, String password){
for(MapString element in db){
  if ( element['login']== login && element['password']==password){
    print('logged in');
return;
  }
}
print('invalid credentials');
}
void main(){
  print('login:');
  final String login =input();
  print('password:');
  final String password = input();
  signin(login,password);
}