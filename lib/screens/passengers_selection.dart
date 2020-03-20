import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';

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
    return Scaffold(
      backgroundColor: kScaffoldBgColor,
      appBar: AppBar(
        brightness: Brightness.light,
        leading: GestureDetector(
          child: Icon(Icons.close),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Set passengers'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: .2, color: Colors.grey[800]))),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        'Passengers',
                        style: Theme.of(context).textTheme.title,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: .1, color: Colors.grey[800]),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: RichText(
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(
                            text: 'Adult  ',
                            style: Theme.of(context).textTheme.body1,
                          ),
                          TextSpan(
                            text: '(age 12+)',
                            style:
                                TextStyle(fontSize: 12.0, color: Colors.black),
                          ),
                        ]),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: .1, color: Colors.grey[800]),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            adultCounter.toString(),
                            style: TextStyle(
                                fontSize: 28.0, fontWeight: FontWeight.w400),
                          ),
                          Spacer(),
                          RawMaterialButton(
                            elevation: 0.0,
                            child: Icon(
                              FontAwesomeIcons.minus,
                              size: 16,
                              color: adultCounter > 1
                                  ? activeIconColor
                                  : inActiveIconColor,
                            ),
                            onPressed: adultCounter <= 1
                                ? null
                                : () {
                                    setState(() {
                                      adultCounter--;
                                    });
                                  },
                            constraints: BoxConstraints.tightFor(
                                width: 36.0, height: 36.0),
                            shape: CircleBorder(),
                            fillColor: adultCounter > 1
                                ? activeBtnColor
                                : inActiveBtnColor,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          RawMaterialButton(
                            elevation: 0.0,
                            child: Icon(
                              FontAwesomeIcons.plus,
                              size: 16,
                              color: activeIconColor,
                            ),
                            onPressed: () {
                              setState(() {
                                adultCounter++;
                              });
                            },
                            constraints: BoxConstraints.tightFor(
                                width: 36.0, height: 36.0),
                            shape: CircleBorder(),
                            fillColor: activeBtnColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: .1, color: Colors.grey[800]),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: RichText(
                        text: TextSpan(
//                    style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Children  ',
                                style: Theme.of(context).textTheme.body1,
                              ),
                              TextSpan(
                                text: '(age 2-11)',
                                style: TextStyle(
                                    fontSize: 12.0, color: Colors.black),
                              ),
                            ]),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: .1, color: Colors.grey[800]),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            childrenCounter.toString(),
                            style: TextStyle(
                                fontSize: 28.0, fontWeight: FontWeight.w400),
                          ),
                          Spacer(),
                          RawMaterialButton(
                            elevation: 0.0,
                            child: Icon(
                              FontAwesomeIcons.minus,
                              size: 16,
                              color: childrenCounter > 0
                                  ? activeIconColor
                                  : inActiveIconColor,
                            ),
                            onPressed: childrenCounter < 1
                                ? null
                                : () {
                                    setState(() {
                                      childrenCounter--;
                                    });
                                  },
                            constraints: BoxConstraints.tightFor(
                                width: 36.0, height: 36.0),
                            shape: CircleBorder(),
                            fillColor: childrenCounter > 0
                                ? activeBtnColor
                                : inActiveBtnColor,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          RawMaterialButton(
                            elevation: 0.0,
                            child: Icon(
                              FontAwesomeIcons.plus,
                              size: 16,
                              color: activeIconColor,
                            ),
                            onPressed: () {
                              setState(() {
                                childrenCounter++;
                              });
                            },
                            constraints: BoxConstraints.tightFor(
                                width: 36.0, height: 36.0),
                            shape: CircleBorder(),
                            fillColor: activeBtnColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: .1, color: Colors.grey[800]),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: RichText(
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(
                            text: 'Infant  ',
                            style: Theme.of(context).textTheme.body1,
                          ),
                          TextSpan(
                            text: '(ages 0-2, on lap)',
                            style:
                                TextStyle(fontSize: 12.0, color: Colors.black),
                          ),
                        ]),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: .1, color: Colors.grey[800]),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              infantCounter.toString(),
                              style: TextStyle(
                                  fontSize: 28.0, fontWeight: FontWeight.w400),
                            ),
                            Spacer(),
                            RawMaterialButton(
                              elevation: 0.0,
                              child: Icon(
                                FontAwesomeIcons.minus,
                                size: 16,
                                color: infantCounter > 0
                                    ? activeIconColor
                                    : inActiveIconColor,
                              ),
                              onPressed: infantCounter < 1
                                  ? null
                                  : () {
                                      setState(() {
                                        infantCounter--;
                                      });
                                    },
                              constraints: BoxConstraints.tightFor(
                                  width: 36.0, height: 36.0),
                              shape: CircleBorder(),
                              fillColor: infantCounter > 0
                                  ? activeBtnColor
                                  : inActiveBtnColor,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            RawMaterialButton(
                              elevation: 0.0,
                              child: Icon(
                                FontAwesomeIcons.plus,
                                size: 16,
                                color: activeIconColor,
                              ),
                              onPressed: () {
                                setState(() {
                                  infantCounter++;
                                });
                              },
                              constraints: BoxConstraints.tightFor(
                                  width: 36.0, height: 36.0),
                              shape: CircleBorder(),
                              fillColor: activeBtnColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(
                      context, adultCounter + childrenCounter + infantCounter);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.amber[400],
                    borderRadius: BorderRadius.circular(5.0),
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
//          BottomButton(
//            buttonTitle: 'Proceed',
//            onTap: () {
//
//            },
//          ),
          ],
        ),
      ),
    );
  }
}
