import 'package:banao/const/custom_color.dart';
import 'package:banao/const/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Define a custom data model
class CustomList2Item {
  final String title;
  final String heading;
  final String subtitle;
  final String imageUrl;

  CustomList2Item(
      {required this.title,
      required this.subtitle,
      required this.imageUrl,
      required this.heading});
}

// Custom ListView builder
class CustomList2ViewBuilder extends StatefulWidget {
  final List<CustomList2Item> items;

  CustomList2ViewBuilder({required this.items});

  @override
  State<CustomList2ViewBuilder> createState() => _CustomListViewBuilderState();
}

class _CustomListViewBuilderState extends State<CustomList2ViewBuilder> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 4),
      height: 280,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 10,
          );
        },
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: widget.items.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400.withOpacity(0.5),
                    spreadRadius: 1, blurRadius: 10,
                    offset: Offset(0, 4), // changes position of shadow
                  ),
                  BoxShadow(
                    color: Colors.white,
                    spreadRadius: 1, blurRadius: 10,
                    offset: Offset(-4, -4), // changes position of shadow
                  ),
                ],
                border: Border.all(width: 1, color: Color(0xffEBEDF0)),
                borderRadius: BorderRadius.all(Radius.circular(8))),
            height: 280,
            width: 242,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                    height: size.height,
                    width: size.width,
                    child: Image.asset(
                      widget.items[index].imageUrl,
                      fit: BoxFit.fill,
                    ),
                  ),
                  flex: 2,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.items[index].heading,
                          style: myStyle(topicColor, 12, FontWeight.w700),
                        ),
                        Text(widget.items[index].title,
                            style: myStyle(primaryColor, 16, FontWeight.w700)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(widget.items[index].subtitle,
                                style: myStyle(
                                    subtitleColor, 12, FontWeight.w500)),
                            GestureDetector(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 0.5, color: selectedIcon)),
                                  height: 26,
                                  width: 62,
                                  child: Center(
                                    child: Text(
                                      'Book',
                                      style: myStyle(
                                          selectedIcon, 12, FontWeight.w400),
                                    ),
                                  ),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                  flex: 2,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

/* ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(items[index].imageUrl),
          ),
          title: Text(items[index].title),
          subtitle: Text(items[index].subtitle),
          onTap: () {
            // Handle onTap event here
          },
        ); */