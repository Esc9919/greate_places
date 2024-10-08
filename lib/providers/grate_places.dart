import 'package:flutter/material.dart';
import 'package:greate_places/models/place.dart';

class GratePlaces with ChangeNotifier {

  List<Place> _items = [];

  List<Place> get items {
    return [..._items];
  }
  
  int get itemsCount {
    return _items.length;
  }

  Place itemByIndex(int index) {
    return _items[index];
  }

}