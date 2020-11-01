import 'package:flutter/material.dart';
import 'package:tola/components/text_form.dart';
import 'package:tola/infrastructure/booking/passenger/passenger_items.dart';

class InfantUserForm extends StatefulWidget {
  final InfantPassengerItem infantPassengerItem;
  final state = _InfantUserFormState();

  InfantUserForm({Key key, this.infantPassengerItem}) : super(key: key);

  @override
  _InfantUserFormState createState() => state;

  bool isValid() => state.validate();
}

class _InfantUserFormState extends State<InfantUserForm> {
  final form = GlobalKey<FormState>();
  String _firstName;
  String _lastName;
  String _passengerType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
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
                title: const Text('Infant Passenger'),
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
                  widget.infantPassengerItem.firstName = value;
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
                  widget.infantPassengerItem.lastName = value;
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
