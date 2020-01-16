import 'package:flutter/material.dart';
import 'package:rainbow_hack/widgets/Pwd/journal_card.dart';

class PwdJournalTab extends StatelessWidget {
  var _journals = {
    'title': 'The standard Lorem Ipsum passage',
    'content':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    'date': 'Jan 10'
  };

  PwdJournalTab();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return JournalCard(
              title: _journals['title'],
              content: _journals['content'],
              date: _journals['date'],
            );
          }),
    );
  }
}
