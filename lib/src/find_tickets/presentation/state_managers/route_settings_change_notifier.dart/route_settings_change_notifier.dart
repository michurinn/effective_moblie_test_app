import 'package:flutter/material.dart';

/// Change Notifier for storing the status of the order:
/// the selected departure date, the number of passengers, etc.
class RouteSettingsChangeNotifier with ChangeNotifier {
  DateTime _arrivalDate = DateTime.now();

  DateTime? _returnTicketDate;

  int _countOfPassangers = 1;

  String? _arrivalPlace;

  String? _departurePlace;

  /// Change Notifier for storing the status of the order:
  /// the selected departure date, the number of passengers, etc.
  RouteSettingsChangeNotifier();

  /// The date of the arrival of the flight
  DateTime get arrivalDate => _arrivalDate;

  /// Count of passengers
  int get countOfPassangers => _countOfPassangers;

  /// The place of the arrival of the flight
  String? get arrivalPlace => _arrivalPlace;

  /// The place of the departure of the flight
  String? get departurePlace => _departurePlace;

  /// The date of the return of the flight
  DateTime? get returnTicketDate => _returnTicketDate;

  /// Set the date of the return of the flight
  void setReturnTicketDate(DateTime? value) {
    _returnTicketDate = value;
    notifyListeners();
  }

  /// Set the date of the arrival of the flight
  void setArrivalDate(DateTime value) {
    _arrivalDate = value;
    notifyListeners();
  }

  /// Set the count of passengers
  void setCountOfPassangers(int value) {
    _countOfPassangers = value;
    notifyListeners();
  }

  /// Set the place of the arrival of the flight
  void setArrivalPlace(String? value) {
    _arrivalPlace = value;
    notifyListeners();
  }

  /// Set the place of the departure of the flight
  void setDeparturePlace(String? value) {
    _departurePlace = value;
    notifyListeners();
  }
}
