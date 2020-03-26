import 'package:flutter/material.dart';
import 'package:tola/components/drop_down_form_field.dart';
import 'package:tola/components/text_form.dart';
import 'package:tola/models/passenger.dart';

class AdultUserForm extends StatefulWidget {
  final AdultPassengerItem adultPassengerItem;
  final state = _AdultUserFormState();

  AdultUserForm({Key key, this.adultPassengerItem}) : super(key: key);

  @override
  _AdultUserFormState createState() => state;
  bool isValid() => state.validate();
}

class _AdultUserFormState extends State<AdultUserForm> {
  final form = GlobalKey<FormState>();
  String _title;

  @override
  void initState() {
    super.initState();
    _title = '';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Material(
        elevation: 1,
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(2),
        child: Form(
          key: form,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              AppBar(
                leading: Icon(Icons.assignment_ind),
                elevation: 0,
                title: Text('Adult Passenger'),
                backgroundColor: Colors.deepPurple[400],
                centerTitle: true,
                actions: <Widget>[],
              ),
              SizedBox(height: 20.0),
              CustomDropDownFormField(
                hintText: 'Title',
                value: _title,
                onSaved: (value) {
                  setState(() {
                    _title = value;
                    widget.adultPassengerItem.title = value;
                  });
                },
                onChanged: (value) {
                  setState(() {
                    _title = value;
                    widget.adultPassengerItem.title = value;
                  });
                },
                dataSource: [
                  {
                    "display": "Mr",
                    "value": "Mr",
                  },
                  {
                    "display": "Mrs",
                    "value": "Mrs",
                  }
                ],
                textField: 'display',
                valueField: 'value',
              ),
              SizedBox(
                height: 20.0,
              ),
              TolaTextFormField(
                hintText: 'First Name',
                validator: (String value) {
                  if (value.isEmpty) {
                    return 'First Name cannot be empty';
                  }
                  return null;
                },
                onSaved: (String value) {
                  widget.adultPassengerItem.firstName = value;
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              TolaTextFormField(
                hintText: 'Last Name',
                validator: (String value) {
                  if (value.isEmpty) {
                    return 'Last name cannot be empty';
                  }
                  return null;
                },
                onSaved: (String value) {
                  widget.adultPassengerItem.lastName = value;
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  ///form validator
  bool validate() {
    var valid = form.currentState.validate();
    if (valid) form.currentState.save();
    return valid;
  }
}
