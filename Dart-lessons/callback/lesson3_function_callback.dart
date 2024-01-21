void getFileFromAPI() {
  final List<int> progress = List.generate(10, (int index) => index);
  for (int element in progress) {
    print(element);
  }
}

void downloadFile(Function getFileFromAPI) {
  print('Processing ...');
  getFileFromAPI();
  print('Downloaded.');
}

void pickImage() {
  print('PICKER: image picked');
  print('PICKER: video picked');
}

void sendMessage() {
  print('SEND_MESSAGE: sending message');
}

void chatField(Function onSend) {
  print('CHAT_FIELD: typing text');
  print('CHAT_FIELD: adding emoji');
  pickImage();
  onSend();
}

// function callback
// for, while, do while, forEach, for in
void main() {
  chatField(sendMessage);
  downloadFile(getFileFromAPI);
}
