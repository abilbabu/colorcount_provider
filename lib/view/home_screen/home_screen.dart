import 'package:colorcount_provider/controller/homescreen_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.watch<HomescreenController>().currentcolor,
      appBar: AppBar(
        title: Text(
          "color change provider",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: context.watch<HomescreenController>().currentcolor,
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      context.read<HomescreenController>().updateColor(HomescreenController.colors[index]);
                    },
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                          color: HomescreenController.colors[index],
                          border: Border.all(color: Colors.grey, width: 2)),
                    ),
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    height: 40,
                  ),
              itemCount: 5)),
    );
  }
}
