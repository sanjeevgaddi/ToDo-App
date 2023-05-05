import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../model/todo.dart';

class ToDoItem extends StatelessWidget {
  final ToDo  todo;
  final onToDoChanged;
  final onDeleteItem;

  const ToDoItem({Key? key, required this.todo, this.onToDoChanged, this.onDeleteItem}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
        child: ListTile(
          onTap: () {
            onToDoChanged(todo);
            //print('Clicked on ToDo Item');
            },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
          tileColor: Colors.white,
          leading: Icon(
            todo.isDone? Icons.check_box : Icons.check_box_outline_blank,
            color: tdBlue,),
          title: Text(
            todo.todoText!,
            style: TextStyle(
            fontSize: 16,
            color: tdBlack,
            decoration: todo.isDone? TextDecoration.lineThrough : null,
            ),
          ),
          trailing: Container(
            padding: const EdgeInsets.all(0),
            margin: const EdgeInsets.symmetric(vertical: 12),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: tdRed
            ),
            child: IconButton(
              color: Colors.white,
              iconSize: 18,
              icon: const Icon(Icons.delete),
              onPressed: () {
                onDeleteItem(todo.id);
                //print('Clicked on Delete Icon');
              },
            ),
          ),
        ),
    );
  }
}
