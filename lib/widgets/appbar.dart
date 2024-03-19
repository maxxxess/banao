import 'package:banao/const/custom_button.dart';
import 'package:banao/const/custom_color.dart';
import 'package:banao/const/custom_text.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      color: Color(0XFFEEF3FD),
      padding: EdgeInsets.only(
        top: 5,
      ),
      width: double.infinity,
      height: size.height * 0.40,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppBar(
            backgroundColor: Color(0XFFEEF3FD),
            elevation: 0,
            leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: mainIcon,
              ),
              iconSize: 24,
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.message_outlined,
                  color: mainIcon,
                ),
                iconSize: 24,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: mainIcon,
                ),
                iconSize: 24,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello,Priya!',
                  style: myStyle(primaryColor, 20, FontWeight.w500),
                ),
                Text(
                  'What do you wanna learn today?',
                  style: myStyle(subtitleColor, 12, FontWeight.w500),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomButton(
                          text: 'Programs',
                          iconData: Icons.book_rounded,
                          onPressed: () {},
                        ),
                        CustomButton(
                          text: 'Get helps',
                          iconData: Icons.help,
                          onPressed: () {},
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomButton(
                          text: 'Learn',
                          iconData: Icons.menu_book_rounded,
                          onPressed: () {},
                        ),
                        CustomButton(
                          text: 'DD Tracker',
                          iconData: Icons.wallet_travel_outlined,
                          onPressed: () {},
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
