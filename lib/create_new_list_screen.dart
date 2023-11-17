import 'package:date_format_field/date_format_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';

class CreateNewListScreen extends StatefulWidget {
  const CreateNewListScreen({Key? key}) : super(key: key);

  @override
  State<CreateNewListScreen> createState() => _CreateNewListScreenState();
}

class _CreateNewListScreenState extends State<CreateNewListScreen> {

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.8,
              child: ListView(
                      children: [
                        Text('Тақырып'),
                        SizedBox(height: 16,),
                        TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            contentPadding: EdgeInsets.all(16.0),
                            // Customize the hint text style here
                            hintStyle: TextStyle(
                              fontSize: 18,  // Adjust the font size as needed
                              color: Colors.grey,  // Change the text color if desired
                            ),
                            alignLabelWithHint: true,
                          ),
                        ),
                        SizedBox(height: 24,),
                        Text('Сипаттама'),
                        SizedBox(height: 16,),
                        TextField(
                          maxLines: 5,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            contentPadding: EdgeInsets.all(16.0),
                            // Customize the hint text style here
                            hintStyle: TextStyle(
                              fontSize: 18,  // Adjust the font size as needed
                              color: Colors.grey,  // Change the text color if desired
                            ),
                            alignLabelWithHint: true,
                          ),
                        ),
                        SizedBox(height: 24,),
                        Text('Күні және уақыты'),
                        SizedBox(height: 16,),
                        DateFormatField(
                            decoration: InputDecoration(
                              hintText: '${DateFormat('dd/MM/yyyy').format(DateTime.now())}',
                              border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              contentPadding: EdgeInsets.all(16.0),
                              alignLabelWithHint: true,
                            ),
                            type: DateFormatType.type1,
                            onComplete: (date){
                              if(date != null){
                                setState((){
                                });
                              }
                            }
                        ),
                        SizedBox(height: 24,),
                        Text('Мекен-жайы'),
                        SizedBox(height: 16,),
                        TextField(
                          maxLines: 1,
                          decoration: InputDecoration(
                            hintText: 'Атырау',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            contentPadding: EdgeInsets.all(16.0),
                            // Customize the hint text style here
                            hintStyle: TextStyle(
                              fontSize: 18,  // Adjust the font size as needed
                              color: Colors.grey,  // Change the text color if desired
                            ),
                            alignLabelWithHint: true,
                          ),
                        ),
                        SizedBox(height: 24,),
                        Text('Сурет жүктеу'),
                        SizedBox(height: 16,),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70.0),
                          child: Image.asset('assets/upload_field.png'),
                        ),
                      ],
                    ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child:
            ElevatedButton(onPressed: () {
            },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(152, 191, 94, 1),
              ),
              child: Container(
                height: 56,
                width: double.infinity,
                child: Center(child: Text('Кіру')),
              ),),
            )
          ],
        ),
      );
  }
}
