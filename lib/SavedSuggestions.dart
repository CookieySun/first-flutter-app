import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class SavedSuggestions {
  Scaffold Function(BuildContext) create(
      Set<WordPair> _saved, TextStyle _biggerFont) {
    return (BuildContext context) {
      final tiles = _saved.map(
        (WordPair pair) {
          return ListTile(
            title: Text(pair.asPascalCase, style: _biggerFont),
          );
        },
      );
      final divided =
          ListTile.divideTiles(context: context, tiles: tiles).toList();

      return Scaffold(
          appBar: AppBar(
            title: Text('Saved Suggestions'),
          ),
          body: ListView(children: divided));
    };
  }
}
