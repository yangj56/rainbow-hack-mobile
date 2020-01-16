import 'package:rainbow_hack/models/requests.dart';
import 'package:rainbow_hack/enums/request_statuses.dart';

List<Requests> dummyRequestsAssigned = [
  Requests(
    id: 'assigned_request_1',
    title: "Buy honey",
    requestor: "Winnie the pooh",
    dateRequested: '31st Jan 10:00am',
    dateDue: '1st Mar 10:00am',
    status: RequestStatuses.complete,
  ),
  Requests(
    id: 'assigned_request_2',
    title: "Fix lightbulb",
    requestor: "Piglet",
    dateRequested: '30th Jan 9:00pm',
    dateDue: '1st Mar 5:00pm',
    status: RequestStatuses.pending,
  ),
  Requests(
    id: 'assigned_request_3',
    title: "Buy diapers",
    requestor: "Kanga and Little Roo",
    dateRequested: '1st Feb 4:00pm',
    dateDue: '14th Feb 5:00pm',
    status: RequestStatuses.accepted,
  ),
  Requests(
    id: 'assigned_request_4',
    title: "Bounce in the park",
    requestor: "Tigger",
    dateRequested: '14th Feb 3:00pm',
    dateDue: '1st Mar 5:00pm',
    status: RequestStatuses.taken,
  ),
  Requests(
    id: 'assigned_request_5',
    title: "Find my tail",
    requestor: "Eeyore",
    dateRequested: '16th Feb 3:00pm',
    dateDue: '1st Mar 5:00pm',
    status: RequestStatuses.pending,
  ),
];
