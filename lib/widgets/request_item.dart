import 'package:flutter/material.dart';
import 'package:rainbow_hack/enums/request_statuses.dart';

class RequestItem extends StatelessWidget {
  final String id;
  final String title;
  final String requestor;
  final String dateRequested;
  final String dateDue;
  final RequestStatuses status;

  RequestItem({
    @required this.id,
    @required this.title,
    @required this.requestor,
    @required this.dateRequested,
    @required this.dateDue,
    @required this.status,
  });

  List<Widget> statuses(context) {
    switch (status) {
      case RequestStatuses.accepted:
        return [
          Text('Accepted',
              style: TextStyle(color: Theme.of(context).splashColor)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.panorama_fish_eye,
              size: 35.0,
              color: Theme.of(context).splashColor,
            ),
          ),
        ];
        break;
      case RequestStatuses.complete:
        return [
          Text('Completed', style: TextStyle(color: Colors.green[900])),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.check_circle,
              size: 35.0,
              color: Colors.green[900],
            ),
          ),
        ];
        break;
      case RequestStatuses.pending:
        return [
          Text('Pending',
              style: TextStyle(color: Theme.of(context).primaryColorDark)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.panorama_fish_eye,
              size: 35.0,
              color: Theme.of(context).primaryColorDark,
            ),
          ),
        ];
      case RequestStatuses.open:
        return [
          Text('Open', style: TextStyle(color: Colors.brown)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.send,
              size: 35.0,
              color: Colors.brown,
            ),
          ),
        ];
      default:
        return [
          Text('Taken', style: TextStyle(color: Colors.blueGrey)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.panorama_fish_eye,
              size: 35.0,
              color: Colors.blueGrey,
            ),
          ),
        ];
    }
  }

  Color textColor(context) {
    switch (status) {
      case RequestStatuses.accepted:
        return Theme.of(context).splashColor;
        break;
      case RequestStatuses.complete:
        return Colors.green[900];
        break;
      case RequestStatuses.pending:
        return Theme.of(context).primaryColorDark;
        break;
      case RequestStatuses.open:
        return Colors.brown;
        break;
      default:
        return Colors.blueGrey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 6.0),
                child: Text(title,
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: textColor(context))),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 6.0, 12.0, 6.0),
                child: Text("Requested by: $requestor",
                    style:
                        TextStyle(fontSize: 16.0, color: textColor(context))),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 6.0),
                child: Text("Date requested: $dateRequested",
                    style:
                        TextStyle(fontSize: 16.0, color: textColor(context))),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 6.0),
                child: Text("Due date: $dateDue",
                    style:
                        TextStyle(fontSize: 16.0, color: textColor(context))),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 5.0, 12.0, 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: statuses(context),
            ),
          ),
        ],
      ),
      Divider(
        height: 2.0,
        color: Colors.grey,
      ),
    ]);
  }
}
