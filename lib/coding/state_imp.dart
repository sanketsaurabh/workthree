import 'package:flutter/material.dart';

class Stful extends StatefulWidget {
  @override
  _StfulState createState() => _StfulState();
}

class _StfulState extends State<Stful> {
  bool _isFavorited = true;
  int _favoriteCount = 41;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.all(0),
            child: IconButton(
              padding: EdgeInsets.all(0),
              alignment: Alignment.centerRight,
              icon: (_isFavorited ? Icon(Icons.star) : Icon(Icons.star_border)),
              color: Colors.red[500],
              onPressed: _toggleFavorite,
            ),
          ),
          SizedBox(
            width: 18,
            child: Container(
              child: Text('$_favoriteCount'),
            ),
          ),
        ],
      ),
    );
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }
}
