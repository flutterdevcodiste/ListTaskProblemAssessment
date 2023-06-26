import 'package:flutter/material.dart';

class ListWidget extends StatefulWidget {
  const ListWidget({super.key});

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  List<ListItem> list = [];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i <= 100; i++) {
      list.add(ListItem(index: i));
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) => ListItemWidget(
          item: list[index],
          plusCount: () {
            ListItem item = list[index];
            setState(() {
              item.count++;
            });
          }),
    );
  }
}

class ListItem {
  int index;
  int count;

  ListItem({required this.index, this.count = 0});
}

class ListItemWidget extends StatelessWidget {
  const ListItemWidget({super.key, required this.item, required this.plusCount});

  final ListItem item;
  final VoidCallback? plusCount;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(4),
        child: Row(
          children: [
            Text(item.count.toString()),
            MaterialButton(
              onPressed: plusCount,
              child: const Text("+"),
            )
          ],
        ));
  }
}
