import 'package:flutter/material.dart';

class TicTacToeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TicTacToeScreen(),
    );
  }
}

class TicTacToeScreen extends StatefulWidget {
  @override
  _TicTacToeScreenState createState() => _TicTacToeScreenState();
}

class _TicTacToeScreenState extends State<TicTacToeScreen> {
  // Represents the state of the grid (empty by default)
  List<List<String>> grid = List.generate(3, (_) => List.filled(3, ''));

  // Tracks the current player (X or O)
  String currentPlayer = 'X';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tic Tac Toe'),
      ),
      body: Center(
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // 3 columns
            crossAxisSpacing: 8.0, // Spacing between columns
            mainAxisSpacing: 8.0, // Spacing between rows
          ),
          itemCount: 9, // Total cells in the grid (3x3)
          itemBuilder: (context, index) {
            int row = index ~/ 3; // Calculate row index
            int col = index % 3; // Calculate column index
            return GestureDetector(
              onTap: () {
                // Update the grid when a cell is tapped
                if (grid[row][col].isEmpty) {
                  setState(() {
                    grid[row][col] = currentPlayer;
                    // Switch players
                    currentPlayer = currentPlayer == 'X' ? 'O' : 'X';
                  });
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: Center(
                  child: Text(
                    grid[row][col],
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
