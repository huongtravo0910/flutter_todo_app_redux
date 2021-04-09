import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

import 'package:redux_example/presentation/screens/home_screen.dart';
import 'package:redux_example/redux/middlewares/todos_epic.dart';
import 'package:redux_example/redux/reducers/app_reducer.dart';
import 'package:redux_example/redux/state/app_state.dart';
import 'package:redux_example/repo/todos_repository.dart';
import 'package:redux_example/utils/my_theme.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await TodosRepository().initDatabase();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: Store<AppState>(appReducer,
          initialState: AppState(),
          middleware: [EpicMiddleware<AppState>(TodosEpic(TodosRepository()))]),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: MyTheme().buildTheme(),
        home: HomeScreen(),
      ),
    );
  }
}
