import 'package:flutter/material.dart';

class EventsListScreen extends StatefulWidget {
  const EventsListScreen({Key? key}) : super(key: key);

  @override
  State<EventsListScreen> createState() => _EventsListScreenState();
}

class _EventsListScreenState extends State<EventsListScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                // color: theme.cardColor,
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,

              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16), // Adjust the radius as needed
                    child: Image.asset('assets/img_1.png', height: 91, width: 81,),
                  ),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('3 қаңтар 10:00 - 15:00', style: TextStyle(color: Color.fromRGBO(72, 190, 217, 1), fontSize: 10)),
                      Container(
                        width: 210,
                        child: Text('Атырау облысында “Таза Ауа” бағдарламасы аясында өткізілетін сенбілік.',
                            style: TextStyle(color: Color.fromRGBO(1, 13, 0, 1), fontSize: 13,), ),
                      ),
                      Row(
                        children: [
                          Image.asset('assets/location_icon.png', width: 14, height: 14,),
                          SizedBox(width: 5,),
                          Text("Атырау", style: TextStyle(fontSize: 12),)
                        ],
                      )
                    ],
                  )
                ]
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                // color: theme.cardColor,
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,

              ),
              child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16), // Adjust the radius as needed
                      child: Image.asset('assets/img_1.png', height: 91, width: 81,),
                    ),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('3 қаңтар 10:00 - 15:00', style: TextStyle(color: Color.fromRGBO(72, 190, 217, 1), fontSize: 10)),
                        Container(
                          width: 210,
                          child: Text('Атырау облысында “Таза Ауа” бағдарламасы аясында өткізілетін сенбілік.',
                            style: TextStyle(color: Color.fromRGBO(1, 13, 0, 1), fontSize: 13,), ),
                        ),
                        Row(
                          children: [
                            Image.asset('assets/location_icon.png', width: 14, height: 14,),
                            SizedBox(width: 5,),
                            Text("Атырау", style: TextStyle(fontSize: 12),)
                          ],
                        )
                      ],
                    )
                  ]
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                // color: theme.cardColor,
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,

              ),
              child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16), // Adjust the radius as needed
                      child: Image.asset('assets/img_1.png', height: 91, width: 81,),
                    ),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('3 қаңтар 10:00 - 15:00', style: TextStyle(color: Color.fromRGBO(72, 190, 217, 1), fontSize: 10)),
                        Container(
                          width: 210,
                          child: Text('Атырау облысында “Таза Ауа” бағдарламасы аясында өткізілетін сенбілік.',
                            style: TextStyle(color: Color.fromRGBO(1, 13, 0, 1), fontSize: 13,), ),
                        ),
                        Row(
                          children: [
                            Image.asset('assets/location_icon.png', width: 14, height: 14,),
                            SizedBox(width: 5,),
                            Text("Атырау", style: TextStyle(fontSize: 12),)
                          ],
                        )
                      ],
                    )
                  ]
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                // color: theme.cardColor,
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,

              ),
              child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16), // Adjust the radius as needed
                      child: Image.asset('assets/img_1.png', height: 91, width: 81,),
                    ),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('3 қаңтар 10:00 - 15:00', style: TextStyle(color: Color.fromRGBO(72, 190, 217, 1), fontSize: 10)),
                        Container(
                          width: 210,
                          child: Text('Атырау облысында “Таза Ауа” бағдарламасы аясында өткізілетін сенбілік.',
                            style: TextStyle(color: Color.fromRGBO(1, 13, 0, 1), fontSize: 13,), ),
                        ),
                        Row(
                          children: [
                            Image.asset('assets/location_icon.png', width: 14, height: 14,),
                            SizedBox(width: 5,),
                            Text("Атырау", style: TextStyle(fontSize: 12),)
                          ],
                        )
                      ],
                    )
                  ]
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                // color: theme.cardColor,
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,

              ),
              child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16), // Adjust the radius as needed
                      child: Image.asset('assets/img_1.png', height: 91, width: 81,),
                    ),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('3 қаңтар 10:00 - 15:00', style: TextStyle(color: Color.fromRGBO(72, 190, 217, 1), fontSize: 10)),
                        Container(
                          width: 210,
                          child: Text('Атырау облысында “Таза Ауа” бағдарламасы аясында өткізілетін сенбілік.',
                            style: TextStyle(color: Color.fromRGBO(1, 13, 0, 1), fontSize: 13,), ),
                        ),
                        Row(
                          children: [
                            Image.asset('assets/location_icon.png', width: 14, height: 14,),
                            SizedBox(width: 5,),
                            Text("Атырау", style: TextStyle(fontSize: 12),)
                          ],
                        )
                      ],
                    )
                  ]
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                // color: theme.cardColor,
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,

              ),
              child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16), // Adjust the radius as needed
                      child: Image.asset('assets/img_1.png', height: 91, width: 81,),
                    ),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('3 қаңтар 10:00 - 15:00', style: TextStyle(color: Color.fromRGBO(72, 190, 217, 1), fontSize: 10)),
                        Container(
                          width: 210,
                          child: Text('Атырау облысында “Таза Ауа” бағдарламасы аясында өткізілетін сенбілік.',
                            style: TextStyle(color: Color.fromRGBO(1, 13, 0, 1), fontSize: 13,), ),
                        ),
                        Row(
                          children: [
                            Image.asset('assets/location_icon.png', width: 14, height: 14,),
                            SizedBox(width: 5,),
                            Text("Атырау", style: TextStyle(fontSize: 12),)
                          ],
                        )
                      ],
                    )
                  ]
              ),
            )
          ],
        ),
      ),
    );
  }
}
