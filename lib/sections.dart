import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class Section {
  final GlobalKey key;
  final String title;
  final List<String> items;

  Section(this.key, this.title, this.items);
}

final sections = [
  Section(GlobalKey(), "Rooms", ["Kitchen", "Lounge", "Bedroom 1", "Rumpus"]),
  Section(GlobalKey(), "Device by Category", ["Light", "Switch", "Sensor"]),
  Section(GlobalKey(), "Device by Name", ["Light", "Switch", "Sensor"]),
  Section(GlobalKey(), "Device by Integration", ["Light", "Switch", "Sensor"]),
];

class SectionsWidget extends StatelessWidget {
  const SectionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: sections
            .mapIndexed(
              (index, e) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 8.0),
                      child: Text('Item ${sections[index].title}'),
                    ),
                    //for (final i in sections[index].items) Text(i)

                    SizedBox(
                      height: 100,
                      child: ScrollablePositionedList.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: sections[index].items.length,
                          itemBuilder: (context, i) =>
                              Text('Item ${sections[index].items[i]}')),
                    ),
                  ]),
            )
            .toList());

    /*
    return ScrollablePositionedList.builder(
        scrollDirection: Axis.horizontal,
        itemCount: sections.length,
        itemBuilder: (context, index) => Text('Item ${sections[index].title}')

        //itemScrollController: itemScrollController,
        //itemPositionsListener: itemPositionsListener,
        );
        */
  }
}
