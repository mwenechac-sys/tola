import 'package:flutter/material.dart';
import 'package:tola/components/text_form.dart';
import 'package:tola/infrastructure/booking/passenger/passenger_items.dart';

class ChildUserForm extends StatefulWidget {
  final ChildrenPassengerItem childrenPassengerItem;
  final state = _ChildUserFormState();

  ChildUserForm({Key key, this.childrenPassengerItem}) : super(key: key);

  @override
  _ChildUserFormState createState() => state;

  bool isValid() => state.validate();
}

class _ChildUserFormState extends State<ChildUserForm> {
  final form = GlobalKey<FormState>();
  String _firstName;
  String _lastName;
  String _passengerType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
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
                leading: const Icon(Icons.assignment_ind),
                elevation: 1,
                title: const Text('Child Passenger'),
                centerTitle: true,
                actions: <Widget>[],
              ),
              const SizedBox(
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
                  widget.childrenPassengerItem.firstName = value;
                },
              ),
              const SizedBox(
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
                  widget.childrenPassengerItem.lastName = value;
                },
              ),
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
