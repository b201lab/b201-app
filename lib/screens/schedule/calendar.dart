import 'package:b201_app/components/components.dart';
import 'package:b201_app/screens/schedule/absent_screen.dart';
import 'package:b201_app/screens/schedule/events.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();
  Color _selectedDayColor = Color(0xFF1BCC18);

  Map<DateTime, List<Events>> _selectedEvents = {};

  @override
  void initState() {
    _selectedEvents = {};
    super.initState();
  }

  List<Events> _getEventsFromDay(DateTime date) {
    return _selectedEvents[date] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Calendar Container
        Container(
          padding: EdgeInsets.fromLTRB(20, 15, 20, 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    DateFormat('EEEE').format(_selectedDay).toUpperCase(),
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // InkWell(
                  //   onTap: () {
                  //     Navigator.push(context, MaterialPageRoute(builder: (_) {
                  //       return AbsentScreen();
                  //     }));
                  //   },
                  //   child: Container(
                  //     padding:
                  //         EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  //     alignment: Alignment.center,
                  //     decoration: BoxDecoration(
                  //       color: primaryColor,
                  //       borderRadius: BorderRadius.circular(50),
                  //     ),
                  //     child: Row(
                  //       children: [
                  //         Icon(
                  //           Icons.add,
                  //           color: Colors.white,
                  //         ),
                  //         SizedBox(width: 5),
                  //         Text(
                  //           'Add Event',
                  //           style: TextStyle(color: Colors.white),
                  //         )
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ],
              ),
              TableCalendar(
                focusedDay: _focusedDay,
                firstDay: DateTime(2000),
                lastDay: DateTime(2050),
                startingDayOfWeek: StartingDayOfWeek.monday,
                onDaySelected: (DateTime selectedDay, DateTime focusedDay) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay;
                  });
                },
                selectedDayPredicate: (DateTime date) {
                  return isSameDay(_selectedDay, date);
                },
                eventLoader: _getEventsFromDay,
                headerStyle: HeaderStyle(
                  headerPadding: EdgeInsets.only(top: 8),
                  formatButtonVisible: false,
                  titleCentered: true,
                ),
                calendarStyle: CalendarStyle(
                  todayDecoration: BoxDecoration(
                    color: primaryColor,
                    shape: BoxShape.circle,
                  ),
                  selectedDecoration: BoxDecoration(
                    color: _selectedDayColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
        ),
        // Event List
        // Text(DateFormat('kk:mm').format(DateTime.now())),
      ],
    );
  }
}
