import 'dart:io';

void main() async {
  try {
    print ("Enter the file to open : ");
    String? file_name = stdin.readLineSync();
    var file = File("$file_name");
    var contents = await file.readAsString();
    print("Reading file...");
    await Future.delayed(Duration(seconds : 2));
    print("Displaying content...");
    print(contents);

    print("Text you want to enter in the file provided : ");
    String? data = stdin.readLineSync();
    await file.writeAsString("$data");
  } catch (e) {
  }
   print("You did something wrong , file doesn't exist!!"); 
  }
