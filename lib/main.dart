import 'package:flutter/material.dart';
import 'package:logisticsinspect/pages/auth_page.dart';

import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import './store/actions.dart';
import './store/reducers.dart';
import './store/store_model.dart';
import './store/middleware.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Store<AppState> store = Store<AppState>(
      appStateReducer,
      initialState: AppState.initialState(),
      middleware: appStateMiddleware,
    );

    return StoreProvider<AppState>(
      store: store,
      child: StoreBuilder<AppState>(
        onInit: (store) => store.dispatch(LoadFromPreferencesAction()),
        builder: (BuildContext context, Store<AppState> store) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: Container(),
            initialRoute: '/',
            routes: {
              '/': (context) => AuthPage(),
            },
          );
        },
      ),
    );
  }
}

// class _ViewModel {
//   final List<Item> items;
//   final Function(String) onAddItem;
//   final Function(Item) onRemoveItem;
//   final Function() onRemoveItems;

//   _ViewModel({
//     this.items,
//     this.onAddItem,
//     this.onRemoveItem,
//     this.onRemoveItems,
//   });

//   factory _ViewModel.create(Store<AppState> store) {
//     _onAddItem(String body) => store.dispatch(AddItemAction(body));
//     _onRemoveItem(Item item) => store.dispatch(RemoveItemAction(item));
//     _onRemoveItems() => store.dispatch(RemoveItemsAction());

//     return _ViewModel(
//       items: store.state.items,
//       onAddItem: _onAddItem,
//       onRemoveItem: _onRemoveItem,
//       onRemoveItems: _onRemoveItems,
//     );
//   }
// }
