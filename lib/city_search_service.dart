import 'package:cloud_firestore/cloud_firestore.dart';

class CitySearchService {
  searchByName(String searchField) {
    return Firestore.instance
        .collection('city_names')
        .where('searchKey',
            isEqualTo: searchField.substring(0, 1).toUpperCase())
        .getDocuments();
  }
}
