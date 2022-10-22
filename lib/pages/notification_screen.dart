import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tradaxs/util/colors_class.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Row(
            children: [
              SizedBox(
                height: 70,
              ),

              IconButton(
        onPressed: () {
            Navigator.pop(context);
          },
        icon: Icon(Icons.arrow_back_ios, size: 15, color: Colors.black)),
             Spacer(),
              
              
              Text(
                'Notification',
                style: TextStyle(fontFamily: 'DM Sans', fontSize: 18),
                textAlign: TextAlign.center,
              ),
              Spacer(),
               Image(image: AssetImage('images/user_icon.png',
                                                ),),
                                                SizedBox(width: 10,)

            ],
          ),
         
          
          const SizedBox(
            height: 40,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: SizedBox(
                      width: 390,
                      height: 60,
                      child: TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Color(0xffF3F3F3),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              side: BorderSide(
                                  width: 2,
                                  color: Color(0xffE4E4E4).withOpacity(0.3)),
                            ),
                            textStyle: const TextStyle(
                              fontSize: 14,
                              fontFamily: 'DM Sans',
                            ),
                          ),
                          onPressed: () {},
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Payment Notification'),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15,
                                )
                                
                              ]),
                                
                      ) 
                              
                    ))
              ]),
         
        ]),
      ),
    );
  }
}
