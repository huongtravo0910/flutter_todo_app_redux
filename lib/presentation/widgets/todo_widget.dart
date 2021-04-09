import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_example/models/todo.dart';
import 'package:redux_example/redux/actions/actions.dart';
import 'package:redux_example/redux/state/app_state.dart';

import 'my_card.dart';

class TodoWidget extends StatefulWidget {
  final Todo todo;

  const TodoWidget({Key key, this.todo}) : super(key: key);

  @override
  _TodoWidgetState createState() => _TodoWidgetState();
}

class _TodoWidgetState extends State<TodoWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _deleteTodo(int id) {
    StoreProvider.of<AppState>(context)
        .dispatch(DeleteTodoAction((b) => b..id = id));
  }

  void _checkTodo(int id) {
    Todo checkedTodo = widget.todo.rebuild((b) => b..isCompleted = true);
    StoreProvider.of<AppState>(context)
        .dispatch(UpdateToCompletedTodoAction((b) => b
          ..id = id
          ..completedTodoMap[id] = checkedTodo));
  }

  @override
  Widget build(BuildContext context) {
    final animation = Tween(
            begin: const Offset(0.0, 0.0), end: const Offset(-0.2, 0.0))
        .animate(new CurveTween(curve: Curves.decelerate).animate(_controller));
    return GestureDetector(
      key: Key("slide" + widget.todo.todoId.toString()),
      onHorizontalDragUpdate: (data) {
        setState(() {
          _controller.value -= data.primaryDelta / context.size.width;
        });
      },
      onHorizontalDragEnd: (data) {
        if (data.primaryVelocity > 2500) {
          _controller.animateTo(0.0);
        } else if (_controller.value >= 0.5 || data.primaryVelocity < -2500) {
          _controller.animateTo(1.0);
        } else {
          _controller.animateTo(.0);
        }
      },
      child: Stack(
        children: [
          SlideTransition(
            position: animation,
            child: MyCard(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      !widget.todo.isCompleted
                          ? Icons.casino_rounded
                          : Icons.check_circle,
                      color: !widget.todo.isCompleted
                          ? Theme.of(context).primaryColor
                          : Theme.of(context).secondaryHeaderColor,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                        widget.todo.title,
                        key: Key("text" + "${widget.todo.todoId}"),
                        style: TextStyle(
                            fontSize: 14,
                            color: !widget.todo.isCompleted
                                ? Colors.black
                                : Colors.grey),
                      ),
                    ),
                    !widget.todo.isCompleted
                        ? ElevatedButton(
                            key: Key("checkButton" + "${widget.todo.todoId}"),
                            onPressed: () => _checkTodo(widget.todo.todoId),
                            child: Icon(Icons.check),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Theme.of(context).primaryColor),
                            ),
                          )
                        : SizedBox.shrink(),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 5,
                          height: 20,
                          color: !widget.todo.isCompleted
                              ? Theme.of(context).primaryColor
                              : Theme.of(context).accentColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: LayoutBuilder(
              builder: (context, constraint) {
                return AnimatedBuilder(
                    animation: _controller,
                    builder: (context, child) {
                      return Stack(
                        children: [
                          Positioned(
                            right: -1.0,
                            top: 0.0,
                            bottom: 0.0,
                            width:
                                constraint.maxWidth * animation.value.dx * -1,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Theme.of(context).primaryColor),
                                ),
                                key: Key(
                                    "deleteButton" + "${widget.todo.todoId}"),
                                onPressed: () =>
                                    _deleteTodo(widget.todo.todoId),
                                child: Icon(Icons.delete)),
                          ),
                        ],
                      );
                    });
              },
            ),
          ),
        ],
      ),
    );
  }
}
