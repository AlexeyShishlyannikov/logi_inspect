import 'package:logisticsinspect/store/store_model.dart';

import './driver_actions.dart';

import 'dart:convert';
import 'dart:async';

import 'package:logisticsinspect/store/driver_store/driver_store.dart';
import 'package:redux/redux.dart';
import 'package:shared_preferences/shared_preferences.dart';

void saveToPrefs(DriverState state) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  var string = json.encode(state.toJson());
  await preferences.setString('driverState', string);
}

Future<DriverState> loadFromPrefs() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  var string = preferences.getString('driverState');
  if (string != null) {
    Map map = json.decode(string);
    return DriverState.fromJson(map);
  }
  return DriverState.initialState();
}

void driverStateMiddleware(
    Store<AppState> store, action, NextDispatcher next) async {
  next(action);

  if (action is AddDriverAction ||
      action is RemoveDriverAction ||
      action is UpdateDriverAction) {
    saveToPrefs(store.state.driverState);
  }

  if (action is GetDriversAction) {
    await loadFromPrefs()
        .then((state) => store.dispatch(LoadedDriversAction(state.drivers)));
  }
}
