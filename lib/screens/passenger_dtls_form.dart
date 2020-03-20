import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tola/components/adult_form.dart';
import 'package:tola/components/child_form.dart';
import 'package:tola/components/infant_form.dart';
import 'package:tola/constants.dart';
import 'package:tola/models/passenger.dart';
import 'package:tola/services/db.dart';

import 'seat_selection.dart';

class PassengerDetails extends StatefulWidget {
  static DocumentSnapshot documentSnapshot;

  @override
  _PassengerDetailsState createState() => _PassengerDetailsState();
}

class _PassengerDetailsState extends State<PassengerDetails> {
  AdultUserForm adultForm;

  _getForms(int adultPassengerCount, int childrenPassengerCount,
      int infantPassengerCount) {
    List adultForms = List.generate(
        adultPassengerCount,
        (i) => AdultUserForm(
              adultPassengerItem: AdultPassengerItem(),
            ));
    List childForms = List.generate(
        childrenPassengerCount,
        (i) => ChildUserForm(
              childPassengerItem: ChildrenPassengerItem(),
            ));
    List infantForms = List.generate(
        infantPassengerCount,
        (i) => InfantUserForm(
              infantPassengerItem: InfantPassengerItem(),
            ));
    return adultForms + childForms + infantForms;
  }

  @override
  Widget build(BuildContext context) {
    List forms = _getForms(2, 2, 2);
    print('forms: $forms');
    return Scaffold(
      backgroundColor: kScaffoldBgColor,
      appBar: AppBar(
        title: Text('Passenger Details'),
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 8.0,
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: forms.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, index) => forms[index]),
            GestureDetector(
              onTap: () {
                print('Button clicked!!');
                if (forms.length > 0) {
                  var allValid = true;
                  forms
                      .forEach((form) => allValid = allValid && form.isValid());
                  if (allValid) {
                    forms.forEach((form) => {
                          if (form is AdultUserForm)
                            {
                              DatabaseService.createAdultPassenger(
                                  form.adultPassengerItem,
                                  '0qGqDjbHNknhlJIVit3e')
                            }
                          else if (form is ChildUserForm)
                            {
                              DatabaseService.createChildPassenger(
                                  form.childPassengerItem,
                                  '0q'
                                  'GqDjbHNknhlJIVit3e')
                            }
                          else if (form is InfantUserForm)
                            {
                              DatabaseService.createInfantPassenger(
                                  form.infantPassengerItem,
                                  '0qGqDjbHNknhlJIVit3e')
                            }
                        });
                  }
                }
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SeatSelection()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.amber[400],
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  alignment: Alignment.center,
                  height: 56.0,
                  width: double.infinity,
                  child: Text(
                    'Proceed',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.deepPurple[900],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
