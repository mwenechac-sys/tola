import 'package:flutter/material.dart';
import 'package:tola/components/text_form.dart';
import 'package:tola/models/passenger.dart';

class ChildUserForm extends StatefulWidget {
  final ChildrenPassengerItem childPassengerItem;
  final state = _ChildUserFormState();

  ChildUserForm({Key key, this.childPassengerItem}) : super(key: key);

  @override
  _ChildUserFormState createState() => state;
  bool isValid() => state.validate();
}

class _ChildUserFormState extends State<ChildUserForm> {
  final form = GlobalKey<FormState>();

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
                title: Text('Child Passenger'),
                backgroundColor: Colors.deepPurple[400],
                centerTitle: true,
                actions: <Widget>[],
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
                  widget.childPassengerItem.firstName = value;
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
                  widget.childPassengerItem.lastName = value;
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              TolaTextFormField(
                hintText: 'Date Of Birth',
                validator: (String value) {
                  if (value.isEmpty) {
                    return 'Date of birth cannot be empty';
                  }
                  return null;
                },
                onSaved: (String value) {
                  widget.childPassengerItem.dateOfBirth = value;
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
