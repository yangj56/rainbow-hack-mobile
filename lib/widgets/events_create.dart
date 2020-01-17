import 'package:flutter/material.dart';
import 'package:rainbow_hack/mocks/dummy_event.dart';
import 'package:rainbow_hack/widgets/event_item.dart';

class CreateEvent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Theme.of(context).accentColor,
        title: new Text('Create Event'),
        actions: <Widget>[
          new IconButton(icon: const Icon(Icons.add), onPressed: () {})
        ],
      ),
      body: new Column(
        children: <Widget>[
          new ListTile(
            leading: const Icon(Icons.person),
            title: new TextField(
              decoration: new InputDecoration(
                hintText: "Name",
              ),
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.phone),
            title: new TextField(
              decoration: new InputDecoration(
                hintText: "Contact Person",
              ),
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.color_lens),
            title: new TextField(
              decoration: new InputDecoration(
                hintText: "Event Type",
              ),
            ),
          ),
          const Divider(
            height: 1.0,
          ),
          new ListTile(
            leading: const Icon(Icons.label),
            title: const Text('Nick'),
            subtitle: const Text('None'),
          ),
          new ListTile(
            leading: const Icon(Icons.today),
            title: const Text('Date'),
            subtitle: const Text('January 16, 2020'),
          ),
          new ListTile(
            leading: const Icon(Icons.group),
            title: const Text('Group'),
            subtitle: const Text('Not specified'),
          )
        ],
      ),
    );
  }
}
