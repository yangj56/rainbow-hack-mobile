import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rainbow_hack/enums/gender.dart';
import 'package:rainbow_hack/enums/interest.dart';
import 'package:rainbow_hack/enums/language.dart';
import 'package:rainbow_hack/enums/race.dart';
import 'package:rainbow_hack/models/user.dart';
import 'package:rainbow_hack/utils/validation.dart';
import 'package:rainbow_hack/widgets/custom_dropdown.dart';

class RegistrationScreen extends StatefulWidget {
  static const routeName = '/registration';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();
  final _dobCtrl = TextEditingController();
  DateFormat _dateFormat = DateFormat("dd/MM/yyyy");
  final _user = User(role: "volunteer");

  @override
  void initState() {
    _user.gender = Gender.male;
    _user.language = Language.english;
    _user.race = Race.Others;
    super.initState();
  }

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1920),
        lastDate: DateTime.now());

    if (picked != null &&
        (_dobCtrl.text == "" ||
            _dateFormat.format(picked).toString() != _dobCtrl.text))
      setState(() {
        _dobCtrl.text = _dateFormat.format(picked);
      });
  }

  String trimEnum(defaultEnum) {
    String defaultEnumString = defaultEnum.toString();
    return toBeginningOfSentenceCase(
        defaultEnumString.substring(defaultEnumString.indexOf(".") + 1));
  }

  void _submitRegistration(BuildContext ctx) {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // const decorationBorderBottom = BoxDecoration(
    //     border: Border(bottom: BorderSide(width: 1.0, color: Colors.black38)));

    return Scaffold(
        appBar: AppBar(
          title: Text("Register"),
        ),
        body: Center(
            child: Form(
                key: _formKey,
                child: Padding(
                    padding: EdgeInsets.all(30),
                    child: ListView(
                      children: <Widget>[
                        buildNameTextFormField(),
                        buildDobTextFormField(context),
                        buildGenderContainer(screenWidth),
                        buildEmailTextFormField(),
                        buildMobileNoTextFormField(),
                        buildAddressTextFormField(),
                        buildPostcodeTextFormField(),
                        buildCountryTextFormField(),
                        buildLanguageContainer(screenWidth),
                        buildRaceContainer(screenWidth),
                        buildEducationLevelTextFormField(),
                        buildOccupationTextFormField(),
                        Container(
                          padding: EdgeInsets.only(top: 20, bottom: 9),
                          child: Text(
                            "Interest(s)",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 16),
                          ),
                        ),
                        Wrap(
                          children: actorWidgets.toList(),
                        ),
                        buildRegisterContainer(context, screenWidth),
                      ],
                    )))));
  }

  Container buildRegisterContainer(BuildContext context, double screenWidth) {
    return Container(
      padding: EdgeInsets.only(top: 30.0),
      child: Container(
        child: FlatButton(
          splashColor: Colors.green,
          shape: StadiumBorder(),
          highlightColor: Colors.purple,
          color: Colors.teal,
          child: Text('Register', style: TextStyle(color: Colors.white)),
          onPressed: () => _submitRegistration(context),
        ),
        width: screenWidth * 0.8,
        height: 40,
      ),
    );
  }

  Iterable<Widget> get actorWidgets sync* {
    for (Interest interest in Interest.values) {
      yield Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: FilterChip(
          label: Text(trimEnum(interest)),
          selected: _user.interests.contains(interest),
          onSelected: (bool value) {
            setState(() {
              if (value) {
                _user.interests.add(interest);
              } else {
                _user.interests
                    .removeWhere((curInterest) => curInterest == interest);
              }
            });
          },
        ),
      );
    }
  }

  TextFormField buildNameTextFormField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Name',
      ),
      validator: (String value) => basicValidation('Name', value),
      onSaved: (val) => setState(() => _user.name = val),
    );
  }

  TextFormField buildDobTextFormField(
    BuildContext context,
  ) {
    return TextFormField(
      controller: _dobCtrl,
      keyboardType: TextInputType.datetime,
      decoration: InputDecoration(
          labelText: 'Date of birth',
          suffixIcon: IconButton(
            icon: Icon(Icons.date_range),
            onPressed: () => _selectDate(context),
          )),
      validator: dobValidation,
      onSaved: (val) => setState(() => _user.dob = val),
    );
  }

  Container buildGenderContainer(double screenWidth) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 8),
      child: Row(children: <Widget>[
        new Container(
          width: screenWidth * 0.25,
          child: Text(
            "Gender",
            style: TextStyle(color: Colors.black54, fontSize: 16),
          ),
        ),
        new Expanded(
          child: Radio<Gender>(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            value: Gender.male,
            onChanged: (val) => setState(() => _user.gender = val),
            groupValue: _user.gender,
          ),
        ),
        new Expanded(
            child: new Text(toBeginningOfSentenceCase("male"),
                style: TextStyle(color: Colors.black87, fontSize: 14))),
        new Expanded(
          child: Radio<Gender>(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            value: Gender.female,
            onChanged: (val) => setState(() => _user.gender = val),
            groupValue: _user.gender,
          ),
        ),
        new Expanded(
            child: new Text(toBeginningOfSentenceCase("female"),
                style: TextStyle(color: Colors.black87, fontSize: 14))),
      ]),
    );
  }

  TextFormField buildEmailTextFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        labelText: 'Email',
      ),
      validator: emailValidation,
      onSaved: (val) => setState(() => _user.email = val),
    );
  }

  TextFormField buildMobileNoTextFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        labelText: 'Mobile Number',
      ),
      validator: mobileNoValidation,
      onSaved: (val) => setState(() => _user.mobileNo = int.parse(val)),
    );
  }

  TextFormField buildAddressTextFormField() {
    return TextFormField(
      keyboardType: TextInputType.multiline,
      maxLengthEnforced: false,
      minLines: 1,
      maxLines: 3,
      decoration: const InputDecoration(
        labelText: 'Address',
      ),
      validator: (String value) => basicValidation('Address', value),
      onSaved: (val) => setState(() => _user.email = val),
    );
  }

  TextFormField buildPostcodeTextFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        labelText: 'Postcode',
      ),
      validator: postcodeValidation,
      onSaved: (val) => setState(() => _user.postCode = int.parse(val)),
    );
  }

  TextFormField buildCountryTextFormField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Country',
      ),
      validator: (String value) => basicValidation('Country', value),
      onSaved: (val) => setState(() => _user.country = val),
    );
  }

  Container buildLanguageContainer(double screenWidth) {
    return Container(
      padding: EdgeInsets.only(top: 9, bottom: 9),
      child: Row(children: <Widget>[
        new Container(
          width: screenWidth * 0.3,
          child: Text(
            "Language",
            style: TextStyle(color: Colors.black54, fontSize: 16),
          ),
        ),
        CustomDropDownField(
            hintText: 'Language',
            value: trimEnum(_user.language),
            onChanged: (String value) {
              setState(() {
                switch (value) {
                  case "Chinese":
                    _user.language = Language.chinese;
                    break;
                  case "Malay":
                    _user.language = Language.malay;
                    break;
                  case "Tamil":
                    _user.language = Language.tamil;
                    break;
                  case "Hokkien":
                    _user.language = Language.hokkien;
                    break;
                  case "Cantonese":
                    _user.language = Language.cantonese;
                    break;
                  default:
                    _user.language = Language.english;
                    break;
                }
              });
            },
            items: Language.values.map((Language language) {
              return DropdownMenuItem<String>(
                value: trimEnum(language),
                child: Text(trimEnum(language)),
              );
            }).toList()),
      ]),
    );
  }

  Container buildRaceContainer(
    double screenWidth,
  ) {
    return Container(
      padding: EdgeInsets.only(top: 9, bottom: 9),
      child: Row(children: <Widget>[
        new Container(
          width: screenWidth * 0.3,
          child: Text(
            "Race",
            style: TextStyle(color: Colors.black54, fontSize: 16),
          ),
        ),
        CustomDropDownField(
            hintText: 'Race',
            value: trimEnum(_user.race),
            onChanged: (String value) {
              setState(() {
                switch (value) {
                  case "Others":
                    _user.race = Race.Others;
                    break;
                  case "Malay":
                    _user.race = Race.Malay;
                    break;
                  case "Indian":
                    _user.race = Race.Indian;
                    break;
                  default:
                    _user.race = Race.Chinese;
                    break;
                }
              });
            },
            items: Race.values.map((Race race) {
              return DropdownMenuItem<String>(
                value: trimEnum(race),
                child: Text(trimEnum(race)),
              );
            }).toList()),
      ]),
    );
  }

  TextFormField buildEducationLevelTextFormField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Education level',
      ),
      validator: (String value) => basicValidation('Education level', value),
      onSaved: (val) => setState(() => _user.educationLevel = val),
    );
  }

  TextFormField buildOccupationTextFormField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Occupation',
      ),
      validator: (String value) => basicValidation('Occupation', value),
      onSaved: (val) => setState(() => _user.occupation = val),
    );
  }
}
