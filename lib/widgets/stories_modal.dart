import 'package:flutter/material.dart';

class StoriesModal extends StatelessWidget {
  final int index;

  StoriesModal({
    @required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: <Widget>[
            Container(
              child: Image.asset(
                "assets/image/volunteer1.jpeg",
                height: 210,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Text("Inspiring Story"),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a est lorem. Suspendisse arcu libero, auctor at molestie ac, rutrum ac leo. Integer a felis auctor, consequat diam sit amet, bibendum velit. Integer dapibus sed quam at ultrices. Sed sit amet luctus ligula, a pulvinar sapien. Praesent at condimentum velit, et pharetra leo. Vivamus nisi mauris, vestibulum ac lectus vitae, varius laoreet elit. Aenean euismod congue neque at pellentesque. Etiam tincidunt, urna non scelerisque pellentesque, velit ipsum venenatis dui, eu posuere massa arcu id tellus. Pellentesque tincidunt, erat ac fringilla fringilla, dui leo euismod nulla, eget condimentum quam sapien at nunc. Nam blandit erat sed magna egestas, id cursus enim dapibus. Cras rutrum quis lectus sit amet pharetra. ",
                style: Theme.of(context).textTheme.display1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
