import 'package:rainbow_hack/models/requests.dart';
import 'package:rainbow_hack/enums/request_statuses.dart';

List<Requests> dummyRequestsOther = [
  Requests(
    id: 'other_request_1',
    title: "Do laundry",
    requestor: "Requestor1",
    dateRequested: '31st Jan 10:00am',
    dateDue: '1st Mar 10:00am',
    status: RequestStatuses.open,
  ),
  Requests(
    id: 'other_request_2',
    title: "Drive me to the library",
    requestor: "Requestor2",
    dateRequested: '30th Jan 9:00pm',
    dateDue: '1st Mar 5:00pm',
    status: RequestStatuses.pending,
  ),
  Requests(
    id: 'other_request_3',
    title: "Change bedsheets",
    requestor: "Requestor3",
    dateRequested: '1st Feb 4:00pm',
    dateDue: '14th Feb 5:00pm',
    status: RequestStatuses.open,
  ),
  Requests(
    id: 'other_request_4',
    title: "Monthly checkup with Dr John",
    requestor: "Requestor4",
    dateRequested: '14th Feb 3:00pm',
    dateDue: '1st Mar 5:00pm',
    status: RequestStatuses.open,
  ),
  Requests(
    id: 'other_request_5',
    title: "Paint my door",
    requestor: "Requestor5",
    dateRequested: '16th Feb 3:00pm',
    dateDue: '1st Mar 5:00pm',
    status: RequestStatuses.open,
  ),
  Requests(
    id: 'other_request_6',
    title: "Spring cleaning",
    requestor: "Requestor6",
    dateRequested: '16th Feb 3:00pm',
    dateDue: '1st Mar 5:00pm',
    status: RequestStatuses.open,
  ),
  Requests(
    id: 'other_request_7',
    title: "Visit Gardens by the Bay",
    requestor: "Requestor7",
    dateRequested: '16th Feb 3:00pm',
    dateDue: '1st Mar 5:00pm',
    status: RequestStatuses.open,
  ),
];
