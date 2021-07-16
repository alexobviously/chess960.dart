import 'package:chess960/chess960.dart';

void main() {
  final chess = Chess960();
  print(chess.ascii);
  while (!chess.game_over) {
    print('position: ' + chess.fen);
    print(chess.ascii);
    var moves = chess.moves();
    moves.shuffle();
    var move = moves[0];
    chess.move(move);
    print('move: ' + move);
  }
  
  print(chess.ascii);
  if (chess.in_checkmate) {
    print('Checkmate');
  }
  if (chess.in_stalemate) {
    print('Stalemate');
  }
  if (chess.in_draw) {
    print('Draw');
  }
  if (chess.insufficient_material) {
    print('Insufficient Material');
  }

  print('\nPGN:\n${chess.pgn()}');
}