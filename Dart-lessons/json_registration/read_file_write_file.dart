import 'dart:io';
// void main(){
//   String filePath = 'file.txt';
//     File file = File(filePath);
//     String contents =file.readAsStringSync();
//     print('File Contents:');
//     print(contents);
//   }
void writeStringToFile(String filename,String content){
  File file = File(filename);
  IOSink sink = file.openWrite();
  sink.write(content);
  sink.close();
  print('The Content: $filename');
}
void main(){
  String filename ='file2.txt';
  String content ='Hello good and wonderfool worl Hello good and wonderfool worl Hello good and wonderfool worl';
  writeStringToFile(filename, content);
}