import 'package:flutter/material.dart';

class SearchDelegateEx extends SearchDelegate {
  List results = [];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        return Text(results[index]);
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List suggestions = [
      'ahmed',
      'mohamed',
      'mostafa',
      'abdelrahman',
      'yasser',
      'wael'
    ];
    if (query != '') {
      flitterSuggestionsList(suggestions);
    }
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        return Text(suggestions[index]);
      },
    );
  }

  flitterSuggestionsList(List suggestions) {
    suggestions.forEach((element) {
      if (element.contains(query)) {
        results.add(element);
      }
    });
  }
}
