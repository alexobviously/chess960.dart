chess960.dart
==========

chess960.dart is based on [chess.dart](https://pub.dev/packages/chess), with some light modifications
to adapt it to [Chess 960](https://en.wikipedia.org/wiki/Fischer_random_chess) rules.

It handles legal chess move generation, maintenance of chess game state, and conversion to and from the FEN and PGN formats.  It has no external dependencies.

## A Random Game

```dart
import "package:chess960/chess960.dart";

void main() {
  Chess960 chess = new Chess960();
  while (!chess.game_over) {
    print('position: ' + chess.fen);
    print(chess.ascii);
    var moves = chess.moves();
    moves.shuffle();
    var move = moves[0];
    chess.move(move);
    print('move: ' + move);
  }
}
```
## Documentation

The chess.js documentation is largely relevant, but see also the docs on [pub.dev](https://pub.dev/documentation/chess960/latest/)

### Versioning

Dart 2 is required.

### Testing

The *test* directory contains *tests.dart* which is a port of chess.js's unit tests. The program *random.dart* plays a random game of chess. *ai.dart* is an example of a simple 4 ply alpha beta search for black (yes a simple chess-playing program) that uses a purely material evaluation function (it is rather slow). You can run the unit tests using pub:
```dart
pub get
pub run test/tests.dart
```
And you can also run performance tests.
```dart
pub run test/perft.dart
```
And, finally you can run the simple AI:
```dart
dart test/ai.dart
```

## Links
- [chess.dart](https://pub.dev/packages/chess)
- [chess.js](https://github.com/jhlywa/chess.js)
- [Wikipedia's Article on FEN Format](https://en.wikipedia.org/wiki/Forsyth–Edwards_Notation)
- [Wikipedia's Article on PGN Format](https://en.wikipedia.org/wiki/Portable_Game_Notation)
