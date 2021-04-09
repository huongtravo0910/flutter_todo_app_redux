import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:redux_example/presentation/view_models/todo_list_vm.dart';
import 'package:redux_example/presentation/widgets/todo_widget.dart';
import 'package:redux_example/models/todo.dart';
import 'package:redux_example/redux/actions/actions.dart';
import 'package:redux_example/redux/state/app_state.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _titleController = TextEditingController();
  List<Todo> list = [];

  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _fetchData());
  }

  void _fetchData() {
    StoreProvider.of<AppState>(context).dispatch(GetTodosAction());
  }

  void _addTodo(String title) {
    Todo todo = Todo((b) => b..title = title);
    StoreProvider.of<AppState>(context).dispatch(AddTodoAction((b) => b
      ..id = todo.todoId
      ..todoMap[todo.todoId] = todo));
    _titleController.clear();
  }

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    debugPrint("bottom tap`");
    switch (index) {
      case 0:
        setState(() {
          _selectedIndex = 0;
        });
        break;
      case 1:
        setState(() {
          _selectedIndex = 1;
        });
        break;
      case 2:
        setState(() {
          _selectedIndex = 2;
        });
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, TodoListVM>(
        distinct: true,
        converter: (Store<AppState> store) =>
            TodoListVM((b) => b..todos = store.state.todos.toBuilder()),
        builder: (context, vm) {
          List<Todo> list = [];
          debugPrint(list.toString());
          if (vm.todos.toList() != []) {
            switch (_selectedIndex) {
              case 0:
                list = vm.todos.toList();
                break;
              case 1:
                List<Todo> temp = vm.todos.toList();
                list = temp.where((todo) => todo.isCompleted == false).toList();
                break;
              case 2:
                List<Todo> temp = vm.todos.toList();
                list = temp.where((todo) => todo.isCompleted == true).toList();
                break;
              default:
            }
          }

          return Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).accentColor,
              title: Center(child: Text("Todo App")),
            ),
            body: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ConstrainedBox(
                        constraints: BoxConstraints.tight(const Size(250, 50)),
                        child: TextFormField(
                          key: Key("title"),
                          controller: _titleController,
                        ),
                      ),
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Theme.of(context).primaryColor),
                        ),
                        key: Key("addButton"),
                        onPressed: () => _addTodo(_titleController.text),
                        child: Icon(Icons.add))
                  ],
                ),
                Expanded(
                    child: ListView.builder(
                  itemBuilder: (context, index) {
                    final value = list[index];
                    return TodoWidget(
                        key: Key(value.todoId.toString()), todo: value);
                  },
                  itemCount: list.length,
                )),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Theme.of(context).primaryColor,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    key: Key("allButton"),
                  ),
                  label: 'All',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.casino_sharp,
                    key: Key("incompletedButton"),
                  ),
                  label: 'Incompleted',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.check,
                    key: Key("completedButton"),
                  ),
                  label: 'Completed',
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey.withOpacity(0.5),
              onTap: _onItemTapped,
            ),
          );
        });
  }
}
