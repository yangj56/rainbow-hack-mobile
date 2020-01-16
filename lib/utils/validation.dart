bool _isWrongDateFormat(String dateString) {
  RegExp exp = new RegExp(r"^(\d{1,2})/(\d{1,2})/(\d{4})$");
  bool matched = exp.hasMatch(dateString);

  if (!matched) return true;

  DateTime parsedDate = DateTime.tryParse(dateString);
  return parsedDate == null;
}

String dobValidation(String value) {
  if (value.trim().isEmpty)
    return 'Date of birth is required';
  else if (_isWrongDateFormat(value))
    return 'Date of birth should be in dd/MM/yyyy, and a valid date';

  return null;
}

String mobileNoValidation(String value) {
  if (value.trim().isEmpty)
    return 'Mobile number is required';
  else if (value.length != 8) return 'Mobile Number must be of 8 digit';

  return null;
}

String emailValidation(String value) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);

  if (value.trim().isEmpty)
    return 'Email is required';
  else if (!regex.hasMatch(value)) return 'Email is not valid';

  return null;
}

String postcodeValidation(String value) {
  if (value.trim().isEmpty)
    return 'Postcode is required';
  else if (value.length != 6) return 'Postcode must be of 6 digit';

  return null;
}

String basicValidation(String fieldName, String value) {
  if (value.trim().isEmpty) return '$fieldName is required';

  return null;
}
