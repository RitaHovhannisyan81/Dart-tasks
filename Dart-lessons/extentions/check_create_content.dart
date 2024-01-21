import 'dart:io';
void writeStringToFile(String filename,String content){

File file = File(filename);
IOSink sink;

if(file.existsSync()){
  sink = file.openWrite(mode: FileMode.append);
}else{
  sink = file.openWrite();

sink.write(content);
sink.close();
print('Content: $filename');
}
}
void main(){
  String inputFilename = 'inpute.txt';
  String outputFilename = 'output.txt';
  File inputFile = File(inputFilename);
  String inputContent = inputFile.readAsStringSync();
   writeStringToFile(outputFilename, inputContent);
}
