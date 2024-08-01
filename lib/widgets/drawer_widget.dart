import 'package:flutter/material.dart';
import 'package:portfolio_app/data/header_items.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class DrawerWidget extends StatelessWidget {
  final ItemScrollController itemController;
  const DrawerWidget({Key? key, required this.itemController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                headerItems[index].title,
                style: const TextStyle(color: Colors.white),
              ),
              onTap: () {
                itemController.scrollTo(
                  index: headerItems[index].index,
                  duration: const Duration(seconds: 1),
                );
                Navigator.pop(context);
              },
            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 12.0),
          itemCount: headerItems.length,
        ),
      ),
    );
  }
}
