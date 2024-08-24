import 'package:flutter/material.dart';

class AddTaskBottomSheet extends StatefulWidget {
  const AddTaskBottomSheet({super.key});

  @override
  State<AddTaskBottomSheet> createState() => _AddTaskBottomSheetState();
}

class _AddTaskBottomSheetState extends State<AddTaskBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        margin: const EdgeInsets.all(15),
    child: Padding(
    padding:
    EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
    child: Text('Add New Task ')
    ));

  }
}
