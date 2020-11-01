import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tola/application/trips/booking_form/passenger_count_bloc/passenger_count_bloc.dart';
import 'package:tola/presentation/core/widgets/submit_button.dart';

import '../../../constants.dart';

class Passengers extends StatefulWidget {
  @override
  _PassengersState createState() => _PassengersState();
}

class _PassengersState extends State<Passengers> {
  int adultCounter = 1;
  int childrenCounter = 0;
  int infantCounter = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PassengerCountBloc, PassengerCountState>(
      builder: (BuildContext context, state) {
        return SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom:
                              BorderSide(width: .1, color: Colors.grey[800]),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RichText(
                              text: TextSpan(children: <TextSpan>[
                                TextSpan(
                                  text: 'Adults  ',
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                                TextSpan(
                                  text: 'age 12+',
                                  style: Theme.of(context).textTheme.caption,
                                ),
                              ]),
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                RawMaterialButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  elevation: 0.0,
                                  onPressed:
                                      state.adultPassengersField.getOrCrash() <=
                                              1
                                          ? null
                                          : () => context
                                              .bloc<PassengerCountBloc>()
                                              .add(PassengerCountEvent
                                                  .adultCounterDecremented(state
                                                      .adultPassengersField
                                                      .getOrCrash())),
                                  constraints: const BoxConstraints.tightFor(
                                      width: 24.0, height: 24.0),
                                  fillColor:
                                      state.adultPassengersField.getOrCrash() >
                                              1
                                          ? activeBtnColor
                                          : inActiveBtnColor,
                                  child: Icon(
                                    FontAwesomeIcons.minus,
                                    size: 10,
                                    color: state.adultPassengersField
                                                .getOrCrash() >
                                            1
                                        ? activeIconColor
                                        : inActiveIconColor,
                                  ),
                                ),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                Text(
                                    state.adultPassengersField
                                        .getOrCrash()
                                        .toString(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2
                                        .copyWith(fontWeight: FontWeight.bold)),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                RawMaterialButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  elevation: 0.0,
                                  onPressed: () => context
                                      .bloc<PassengerCountBloc>()
                                      .add(PassengerCountEvent
                                          .adultCounterIncremented(state
                                              .adultPassengersField
                                              .getOrCrash())),
                                  constraints: const BoxConstraints.tightFor(
                                      width: 24.0, height: 24.0),
                                  fillColor: activeBtnColor,
                                  child: Icon(
                                    FontAwesomeIcons.plus,
                                    size: 10,
                                    color: activeIconColor,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom:
                              BorderSide(width: .1, color: Colors.grey[800]),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RichText(
                              text: TextSpan(children: <TextSpan>[
                                TextSpan(
                                  text: 'Children  ',
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                                TextSpan(
                                  text: 'age 2-11',
                                  style: Theme.of(context).textTheme.caption,
                                ),
                              ]),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                RawMaterialButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  elevation: 0.0,
                                  onPressed: state.childrenPassengersField
                                              .getOrCrash() <
                                          1
                                      ? null
                                      : () => context
                                          .bloc<PassengerCountBloc>()
                                          .add(PassengerCountEvent
                                              .childrenCounterDecremented(state
                                                  .childrenPassengersField
                                                  .getOrCrash())),
                                  constraints: const BoxConstraints.tightFor(
                                      width: 24.0, height: 24.0),
                                  fillColor: state.childrenPassengersField
                                              .getOrCrash() >
                                          0
                                      ? activeBtnColor
                                      : inActiveBtnColor,
                                  child: Icon(
                                    FontAwesomeIcons.minus,
                                    size: 10,
                                    color: state.childrenPassengersField
                                                .getOrCrash() >
                                            0
                                        ? activeIconColor
                                        : inActiveIconColor,
                                  ),
                                ),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                Text(
                                    state.childrenPassengersField
                                        .getOrCrash()
                                        .toString(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2
                                        .copyWith(fontWeight: FontWeight.bold)),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                RawMaterialButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  elevation: 0.0,
                                  onPressed: () => context
                                      .bloc<PassengerCountBloc>()
                                      .add(PassengerCountEvent
                                          .childrenCounterIncremented(state
                                              .childrenPassengersField
                                              .getOrCrash())),
                                  constraints: const BoxConstraints.tightFor(
                                      width: 24.0, height: 24.0),
                                  fillColor: activeBtnColor,
                                  child: Icon(
                                    FontAwesomeIcons.plus,
                                    size: 10,
                                    color: activeIconColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RichText(
                            text: TextSpan(children: <TextSpan>[
                              TextSpan(
                                text: 'Infant  ',
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                              TextSpan(
                                text: 'ages 0-2, on lap',
                                style: Theme.of(context).textTheme.caption,
                              ),
                            ]),
                          ),
                          Spacer(),
                          Row(
                            children: [
                              RawMaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                elevation: 0.0,
                                onPressed:
                                    state.infantPassengersField.getOrCrash() < 1
                                        ? null
                                        : () => context
                                            .bloc<PassengerCountBloc>()
                                            .add(PassengerCountEvent
                                                .infantCounterDecremented(state
                                                    .infantPassengersField
                                                    .getOrCrash())),
                                constraints: const BoxConstraints.tightFor(
                                    width: 24.0, height: 24.0),
                                fillColor:
                                    state.infantPassengersField.getOrCrash() > 0
                                        ? activeBtnColor
                                        : inActiveBtnColor,
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  size: 10,
                                  color:
                                      state.infantPassengersField.getOrCrash() >
                                              0
                                          ? activeIconColor
                                          : inActiveIconColor,
                                ),
                              ),
                              const SizedBox(
                                width: 8.0,
                              ),
                              Text(
                                state.infantPassengersField
                                    .getOrCrash()
                                    .toString(),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 8.0,
                              ),
                              RawMaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                elevation: 0.0,
                                onPressed: () => context
                                    .bloc<PassengerCountBloc>()
                                    .add(PassengerCountEvent
                                        .infantCounterIncremented(state
                                            .infantPassengersField
                                            .getOrCrash())),
                                constraints: const BoxConstraints.tightFor(
                                    width: 24.0, height: 24.0),
                                fillColor: activeBtnColor,
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                  size: 10,
                                  color: activeIconColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: SubmitButton(
                  title: 'PROCEED',
                  function: () => Navigator.pop(
                      context, adultCounter + childrenCounter + infantCounter),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
