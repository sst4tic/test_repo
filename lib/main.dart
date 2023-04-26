import 'dart:io';
import 'dart:math';

void main() {
  var input = stdin.readLineSync()!.split(' ');
  var a = int.parse(input[0]);
  var b = int.parse(input[1]);
  var c = int.parse(input[2]);

  var sum = a + b + c;
  var maxScore = max(max(a, b), c);
  var minScore = min(min(a, b), c);
  var midScore = sum - maxScore - minScore;

  if ((a == b && b == c) || (a != b && b != c && a != c)) {
    print((sum / 3).floor());
  } else if (a == b || a == c) {
    print(max(b, c));
  } else if (b == c) {
    print(max(a, c));
  } else if (midScore == maxScore) {
    print(maxScore);
  } else {
    print(midScore);
  }
}

// void main() {
//   var n = int.parse(stdin.readLineSync()!);
//   var sessions = 0;
//   var crashedSessions = 0;
//   var lastUid = "";
//   var eventName = "";
//   for (var i = 0; i < n; i++) {
//     eventName = stdin.readLineSync()!;
//     var uid = stdin.readLineSync()!;
//     if (eventName == "APPLICATION_FINISHED_LAUNCHING") {
//       sessions++;
//       if (lastUid != "" && lastUid != uid) {
//         crashedSessions++;
//       }
//     } else {
//       lastUid = uid;
//     }
//   }
//   var successRate = 100.0 * (sessions - crashedSessions) / sessions;
//   print(successRate.toStringAsFixed(6));
// }










// void main() {
//   var input = stdin.readLineSync();
//   if (input != null) {
//     var values = input.split(' ');
//     var a = int.parse(values[0]);
//     var b = int.parse(values[1]);
//     var c = int.parse(values[2]);
//
//     var maxScore = a > b ? (a > c ? a : c) : (b > c ? b : c);
//     var minScore = a < b ? (a < c ? a : c) : (b < c ? b : c);
//
//     if ((a >= maxScore && b >= maxScore) || (a >= maxScore && c >= maxScore) || (b >= maxScore && c >= maxScore)) {
//       if ((a <= minScore && b <= minScore) || (a <= minScore && c <= minScore) || (b <= minScore && c <= minScore)) {
//         print(maxScore);
//       } else {
//         print(max(minScore, maxScore + 1));
//       }
//     } else {
//       print(max(minScore, maxScore + 1));
//     }
//   }
// }