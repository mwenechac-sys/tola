import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';
import 'package:tola/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:tola/application/trips/booking_form/booking_form_bloc.dart';
import 'package:tola/application/trips/booking_form/passenger_count_bloc/passenger_count_bloc.dart';
import 'package:tola/application/trips/passenger_details/passenger_details_bloc.dart';
import 'package:tola/domain/booking/passenger.dart';
import 'package:tola/infrastructure/booking/passenger/passenger_items.dart';
import 'package:tola/injection.dart';
import 'package:tola/presentation/core/widgets/submit_button.dart';
import 'package:tola/presentation/routes/app_router.gr.dart';

import 'adult_form.dart';
import 'child_form.dart';
import 'infant_form.dart';

class PassengerDetailsWidget extends StatefulWidget {
  final int adultPassengerCount;
  final int childrenPassengerCount;
  final int infantPassengerCount;

  const PassengerDetailsWidget(
      {this.adultPassengerCount,
      this.childrenPassengerCount,
      this.infantPassengerCount});

  @override
  _PassengerDetailsWidgetState createState() => _PassengerDetailsWidgetState();
}

class _PassengerDetailsWidgetState extends State<PassengerDetailsWidget> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  AdultPassengerItem adultPassengerItem = AdultPassengerItem();
  ChildrenPassengerItem childrenPassengerItem = ChildrenPassengerItem();
  InfantPassengerItem infantPassengerItem = InfantPassengerItem();

  //counter variables

  String destinationTown;
  String departureTown;

  List<Widget> _getForms() {
    List<Widget> adultForms = [];
    List<Widget> childForms = [];
    List<Widget> infantForms = [];

    setState(() {
      adultForms = List.generate(
          widget.adultPassengerCount,
          (i) => AdultUserForm(
                adultPassengerItem: adultPassengerItem,
              ));
      childForms = List.generate(
          widget.childrenPassengerCount,
          (i) => ChildUserForm(
                childrenPassengerItem: childrenPassengerItem,
              ));
      infantForms = List.generate(
          widget.infantPassengerCount,
          (i) => InfantUserForm(
                infantPassengerItem: infantPassengerItem,
              ));
    });
    return adultForms + childForms + infantForms;
  }

  List<Widget> forms = [];

  @override
  void initState() {
    forms = _getForms();
    super.initState();
  }

  // @override
  // void didChangeDependencies() {
  //
  // }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingFormBloc, BookingFormState>(
      builder: (BuildContext context, state) {
        return SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 8.0,
              ),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: forms.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, index) => forms[index]),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SubmitButton(
                  title: 'SUBMIT',
                  function: () {
                    final List<Passenger> passengerList = [];
                    KtList<Passenger> finalPassengerList;
                    if (forms.isNotEmpty) {
                      var allValid = true;
                      forms.forEach((form) {
                        if (form is AdultUserForm) {
                          allValid = allValid && form.isValid();
                        } else if (form is ChildUserForm) {
                          allValid = allValid && form.isValid();
                        } else if (form is InfantUserForm) {
                          allValid = allValid && form.isValid();
                        }
                      });
                      if (allValid) {
                        forms.forEach((form) {
                          if (form is AdultUserForm) {
                            final Passenger passenger = Passenger(
                                firstName: form.adultPassengerItem.firstName,
                                lastName: form.adultPassengerItem.lastName,
                                title: form.adultPassengerItem.title,
                                age: 'Adult',
                                departureTown:
                                    state.departureTownField.getOrCrash(),
                                destinationTown:
                                    state.destinationTownField.getOrCrash(),
                                ID: _firestore.collection('trips').doc().id,
                                status: 'off-board');
                            passengerList.add(passenger);
                          } else if (form is ChildUserForm) {
                            final Passenger passenger = Passenger(
                                firstName: form.childrenPassengerItem.firstName,
                                lastName: form.childrenPassengerItem.lastName,
                                age: 'Child',
                                departureTown:
                                    state.departureTownField.getOrCrash(),
                                destinationTown:
                                    state.destinationTownField.getOrCrash(),
                                ID: _firestore.collection('trips').doc().id,
                                status: 'off-board');
                            passengerList.add(passenger);
                          } else if (form is InfantUserForm) {
                            final Passenger passenger = Passenger(
                                firstName: form.infantPassengerItem.firstName,
                                lastName: form.infantPassengerItem.lastName,
                                age: 'Infant',
                                departureTown:
                                    state.departureTownField.getOrCrash(),
                                destinationTown:
                                    state.destinationTownField.getOrCrash(),
                                ID: _firestore.collection('trips').doc().id,
                                status: 'off-board');
                            passengerList.add(passenger);
                          }
                          finalPassengerList = passengerList.toImmutableList();
                          context.bloc<PassengerDetailsBloc>().add(
                              PassengerDetailsEvent
                                  .passengerDetailsSubmitButtonPressed(
                                      finalPassengerList));
                        });
                      }
                      ExtendedNavigator.of(context)
                          .push(Routes.seatSelectionPage);
                    }
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
