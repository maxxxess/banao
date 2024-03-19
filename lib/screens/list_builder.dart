import 'package:banao/const/custom_color.dart';
import 'package:banao/const/custom_text.dart';
import 'package:banao/widgets/list_view1.dart';
import 'package:banao/widgets/list_view2.dart';
import 'package:flutter/material.dart';

class ListBuilder extends StatefulWidget {
  const ListBuilder({super.key});

  @override
  State<ListBuilder> createState() => _ListBuilderState();
}

class _ListBuilderState extends State<ListBuilder> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [programs_for_u(), events_experiences(),lessons_foru()],
    );
  }
}

class programs_for_u extends StatelessWidget {
  const programs_for_u({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5, left: 5),
      height: 330,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Programs for you',
                style: myStyle(primaryColor, 18, FontWeight.w500),
              ),
              Text(
                'View all →',
                style: myStyle(subtitleColor, 16, FontWeight.w400),
              )
            ],
          ),
          CustomListViewBuilder(items: [
            CustomListItem(
                title: 'A complete guide for your new born baby',
                subtitle: '16 lessons',
                imageUrl: 'images/1.png',
                heading: 'Lifestyle'),
            CustomListItem(
                title: 'Understanding of human behaviour',
                subtitle: '12 lessons',
                imageUrl: 'images/1.png',
                heading: 'Working Parents'),
            CustomListItem(
                title: 'A complete guide for your new born baby',
                subtitle: '16 lessons',
                imageUrl: 'images/1.png',
                heading: 'Lifestyle'),
            CustomListItem(
                title: 'A complete guide for your new born baby',
                subtitle: '16 lessons',
                imageUrl: 'images/1.png',
                heading: 'Lifestyle'),
            CustomListItem(
                title: 'A complete guide for your new born baby',
                subtitle: '16 lessons',
                imageUrl: 'images/1.png',
                heading: 'Lifestyle'),
            CustomListItem(
                title: 'A complete guide for your new born baby',
                subtitle: '16 lessons',
                imageUrl: 'images/1.png',
                heading: 'Lifestyle'),
            CustomListItem(
                title: 'A complete guide for your new born baby',
                subtitle: '16 lessons',
                imageUrl: 'images/1.png',
                heading: 'Lifestyle')
          ])
        ],
      ),
    );
  }
}

class events_experiences extends StatelessWidget {
  const events_experiences({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5, left: 5),
      height: 330,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Events and experiences',
                style: myStyle(primaryColor, 18, FontWeight.w500),
              ),
              Text(
                'View all →',
                style: myStyle(subtitleColor, 16, FontWeight.w400),
              )
            ],
          ),
          CustomList2ViewBuilder(items: [
            CustomList2Item(
                title: 'Understanding of human behaviour',
                subtitle: '13 Feb, Sunday',
                imageUrl: 'images/2.png',
                heading: 'Babycare'),
            CustomList2Item(
                title: 'Understanding of human behaviour',
                subtitle: '13 Feb, Sunday',
                imageUrl: 'images/2.png',
                heading: 'Babycare'),
            CustomList2Item(
                title: 'Understanding of human behaviour',
                subtitle: '13 Feb, Sunday',
                imageUrl: 'images/2.png',
                heading: 'Babycare'),
            CustomList2Item(
                title: 'Understanding of human behaviour',
                subtitle: '13 Feb, Sunday',
                imageUrl: 'images/2.png',
                heading: 'Babycare'),
            CustomList2Item(
                title: 'Understanding of human behaviour',
                subtitle: '13 Feb, Sunday',
                imageUrl: 'images/2.png',
                heading: 'Babycare'),
            CustomList2Item(
                title: 'Understanding of human behaviour',
                subtitle: '13 Feb, Sunday',
                imageUrl: 'images/2.png',
                heading: 'Babycare'),
            CustomList2Item(
                title: 'Understanding of human behaviour',
                subtitle: '13 Feb, Sunday',
                imageUrl: 'images/2.png',
                heading: 'Babycare')
          ])
        ],
      ),
    );
  }
}


class lessons_foru extends StatelessWidget {
  const lessons_foru({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5, left: 5),
      height: 330,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Lessons for you',
                style: myStyle(primaryColor, 18, FontWeight.w500),
              ),
              Text(
                'View all →',
                style: myStyle(subtitleColor, 16, FontWeight.w400),
              )
            ],
          ),
          CustomList2ViewBuilder(items: [
            CustomList2Item(
                title: 'Understanding of human behaviour',
                subtitle: '3 min',
                imageUrl: 'images/2.png',
                heading: 'Babycare'),
            CustomList2Item(
                title: 'Understanding of human behaviour',
                subtitle: '1 min',
                imageUrl: 'images/2.png',
                heading: 'Babycare'),
            CustomList2Item(
                title: 'Understanding of human behaviour',
                subtitle: '5 min',
                imageUrl: 'images/2.png',
                heading: 'Babycare'),
            CustomList2Item(
                title: 'Understanding of human behaviour',
                subtitle: '2 min',
                imageUrl: 'images/2.png',
                heading: 'Babycare'),
            CustomList2Item(
                title: 'Understanding of human behaviour',
                subtitle: '2 min',
                imageUrl: 'images/2.png',
                heading: 'Babycare'),
            CustomList2Item(
                title: 'Understanding of human behaviour',
                subtitle: '2 min',
                imageUrl: 'images/2.png',
                heading: 'Babycare'),
            CustomList2Item(
                title: 'Understanding of human behaviour',
                subtitle: '2 min',
                imageUrl: 'images/2.png',
                heading: 'Babycare'),
            CustomList2Item(
                title: 'Understanding of human behaviour',
                subtitle: '2 min',
                imageUrl: 'images/2.png',
                heading: 'Babycare')
          ])
        ],
      ),
    );
  }
}