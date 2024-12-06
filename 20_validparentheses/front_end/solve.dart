import 'dart:io';

class FrontEnd{
  static void solve(){
    String? input =stdin.readLineSync();
    int n=int.parse(input!);
    String? inputList=stdin.readLineSync();
    List<String> strList=inputList!.split(' ');
    }
}

/////////////////////       provide pointer using FFI package ing dart     //////////////////////////////// 
// import 'dart:ffi'; // For FFI
// import 'dart:io';  // For Platform

// void main() {
//   // Allocate memory for an integer
//   final Pointer<Int32> pointer = malloc.allocate<Int32>(sizeOf<Int32>());

//   // Assign a value to the pointer
//   pointer.value = 42;
//   print('Pointer value: ${pointer.value}'); // Outputs: 42

//   // Free the allocated memory
//   malloc.free(pointer);
// }
