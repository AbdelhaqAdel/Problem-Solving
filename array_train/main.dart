import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);

  List<int> A = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  List<int> B = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  Map<int, int> freqA = {};
  Map<int, int> freqB = {};

  for (int i = 0; i < n; i++) {
    freqA[A[i]] = (freqA[A[i]] ?? 0) + 1;
  }
  print(freqA);

  for (int i = 0; i < n; i++) {
    freqB[B[i]] = (freqB[B[i]] ?? 0) + 1;
  }
  print(freqB);

  if (freqA.length == freqB.length && freqA.keys.every((k) {
    print(freqA[k]) ;
    print(freqB[k]) ;
    return freqA[k] == freqB[k];})) {
    print('yes');
  } else {
    print('no');
  }
}
