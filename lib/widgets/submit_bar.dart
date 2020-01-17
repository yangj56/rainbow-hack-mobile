import 'package:flutter/material.dart';

class SubmitBar extends StatelessWidget {
  final Function submitFunc;
  final TextEditingController _textController;

  SubmitBar(this.submitFunc, this._textController);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    final _formKey = GlobalKey<FormState>();

    return Form(
      key: _formKey,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: screenWidth * 0.7,
            padding: EdgeInsets.only(top: 6),
            child: SizedBox(
              height: 40,
              child: TextFormField(
                controller: _textController,
                decoration: new InputDecoration(
                  hintText: 'Say something here',
                  prefixText: ' ',
                  suffixStyle: const TextStyle(color: Colors.green),
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                onSaved: submitFunc,
              ),
            ),
          ),
          Container(
            width: screenWidth * 0.2,
            padding: EdgeInsets.only(left: 15),
            child: RaisedButton(
              onPressed: () {
                _formKey.currentState.save();
              },
              child: Text('Post'),
              color: Theme.of(context).primaryColorLight,
            ),
          )
        ],
      ),
    );
  }
}
