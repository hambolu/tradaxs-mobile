import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tradaxs/util/colors_class.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
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
              BackButton(),
              SizedBox(
                width: 150,
              ),
              Text(
                'Profile',
                style: TextStyle(fontFamily: 'DM Sans', fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image(
                  image: AssetImage(
                'images/profile.png',
              )),
              SizedBox(
                height: 40,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text('Tradax user',
              style: TextStyle(fontFamily: 'DM Sans', fontSize: 14)),
          SizedBox(
            height: 10,
          ),
          Text('ID:12345678',
              style: TextStyle(fontFamily: 'DM Sans', fontSize: 12)),
          SizedBox(
            height: 20,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: ColorOne.cbuttons,
                      padding: const EdgeInsets.all(12.0),
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'Inter',
                      ),
                      elevation: 10),
                  onPressed: () {},
                  child: const Text('Verify Account'),
                ),
              ]),
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
                                Text('Become A Merchant'),
                                Spacer(),
                                
                              ]),
                                
                      ) 
                              
                    ))
              ]),
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
                                Text('Merchant Ads '),
                                Spacer(),
                                
                              ]),
                                
                      ) 
                              
                    ))
              ]),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                                Text('Notification'),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15,
                                )
                              ])),
                    ))
              ]),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                                Text('Referral'),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15,
                                )
                              ])),
                    ))
              ]),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                                Text('Payment Methods'),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15,
                                )
                              ])),
                    ))
              ]),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                                Text('Settings'),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15,
                                )
                              ])),
                    ))
              ]),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                                Text('Security'),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15,
                                )
                              ])),
                    ))
              ]),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                                Text('Share Tradaxs'),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15,
                                )
                              ])),
                    ))
              ]),
        ]),
      ),
    );
  }
}
