import 'package:flutter/material.dart';
import 'package:tola/components/drop_down_form_field.dart';
import 'package:tola/components/text_form.dart';
import 'package:tola/domain/booking/passenger.dart';
import 'package:tola/infrastructure/booking/passenger/passenger_items.dart';
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
  final _formKey = GlobalKey<FormState>();
  String _title;

  @override
  void initState() {
    super.initState();
    _title = '';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Material(
        elevation: 1,
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(2),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                AppBar(
                  leading: const Icon(Icons.assignment_ind),
                  elevation: 1,
                  title: const Text('Adult Passenger'),
                  centerTitle: true,
                  actions: <Widget>[],
                ),
                const SizedBox(height: 20.0),
                CustomDropDownFormField(
                  hintText: 'Title',
                  value: _title,
                  onSaved: (value) {
                    setState(() {
                      _title = value as String;
                    });
                  },
                  onChanged: (String value) {
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
                const SizedBox(
                  height: 20.0,
                ),
                TolaTextFormField(
                  hintText: 'First Name',
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'First Name cannot be empty';
                    }
                    return null;
                  },
                  onSaved: (String value) {
                    widget.adultPassengerItem.firstName = value;
                  },
                ),
                const SizedBox(
                  height: 20.0,
                ),
                TolaTextFormField(
                  hintText: 'Last Name',
                  validator: (value) {
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
      ),
    );
  }

  ///form validator
  bool validate() {
    var valid = _formKey.currentState.validate();
    if (valid) {
      _formKey.currentState.save();
    }
    return valid;
  }
}
