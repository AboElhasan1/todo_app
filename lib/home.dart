import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';

import 'App colors.dart';
import 'module/tasks/widget/add_task_sheet_widget1.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          elevation: 3,
          onPressed: () {
            showModalBottomSheet(context: context, builder: (context) => AddTaskBottomSheet(),);
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          backgroundColor: Colors.white,
            child: CircleAvatar(
            child: Icon(
              Icons.add,
              size: 35,
            ),
            radius: 26,
          )),
      bottomNavigationBar: BottomAppBar(height: 90,notchMargin: 12,
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
          elevation: 0,
            backgroundColor: Colors.transparent,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            currentIndex: currentindex,
            onTap: (value) => setState(() {
                  currentindex = value;
                }),
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/3.0x/icon_list@3x.png")),
                  label: 'Tasks'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/3.0x/icon_settings@3x.png")),
                  label: 'Tasks')
            ]),
      ),
      appBar: AppBar(
        backgroundColor: AppColors.lightBlueColor,
        toolbarHeight: 157,
        title: Padding(
          padding: const EdgeInsets.only(left: 52),
          child: Text('To Do List',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 22,
                height: 1.2,
              )),
        ),
      ),
      body: Column(children: [
        EasyDateTimeLine(
          initialDate: DateTime.now(),
          onDateChange: (selectedDate) {
            //`selectedDate` the new date selected.
          },
          headerProps: const EasyHeaderProps(),
          dayProps: const EasyDayProps(
            dayStructure: DayStructure.dayStrDayNum,
            height: 79,
            width: 58,
            activeDayStyle: DayStyle(
                dayNumStyle: TextStyle(
                    color: AppColors.lightBlueColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w700),
                dayStrStyle: TextStyle(
                    color: AppColors.lightBlueColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w700),
                decoration: BoxDecoration(color: Colors.white)),
          ),
        ),
      ]),
    );
  }
}
