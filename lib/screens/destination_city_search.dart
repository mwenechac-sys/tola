import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class DestinationCitySearch extends StatefulWidget {
  @override
  _DestinationCitySearchState createState() => _DestinationCitySearchState();
}

class _DestinationCitySearchState extends State<DestinationCitySearch> {
  String citySearchString;
  String provinceString;
  String _animationName = 'tola_load';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            child: Icon(Icons.close),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.white,
          title: TextField(
            onChanged: (value) {
              setState(() {
                citySearchString = value.toLowerCase();
              });
            },
            autofocus: true,
            decoration: InputDecoration(
              hintText: 'Search location',
              hintStyle: TextStyle(fontSize: 18.0),
              border: InputBorder.none,
            ),
          ),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: citySearchString != "" && citySearchString != null
                    ? Firestore.instance
                        .collection('towns')
                        .where("searchIndex", arrayContains: citySearchString)
                        .snapshots()
                    : Firestore.instance
                        .collection("towns")
                        .orderBy('town_name', descending: false)
                        .snapshots(),
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasError)
                    return Text('Error: ${snapshot.error}');
                  switch (snapshot.connectionState) {
                    case ConnectionState.waiting:
                      return Center(
                          child: Container(
                              height: 16,
                              width: 36,
                              child: FlareActor(
                                'assets/animations/tola_loading.flr',
                                alignment: Alignment.center,
                                fit: BoxFit.contain,
                                animation: _animationName,
                              )));
                    default:
                      return ListView(
                        children: snapshot.data.documents
                            .map((DocumentSnapshot document) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.pop(context, document['town_name']);
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 16.0),
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      width: .2,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 16.0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.deepPurpleAccent,
                                      ),
                                      SizedBox(
                                        width: 8.0,
                                      ),
                                      Text(
                                        document['town_name'],
                                        style:
                                            Theme.of(context).textTheme.body1,
                                      ),
                                      Spacer(),
                                      Text(
                                        document['province_name'],
                                        style:
                                            Theme.of(context).textTheme.body1,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
