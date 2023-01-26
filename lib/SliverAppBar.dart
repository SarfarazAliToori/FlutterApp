import 'package:flutter/material.dart';

class MySliverAppBar extends StatefulWidget {
  static const mySliverAppBarRoute = "mySliverAppBarRoute";
  const MySliverAppBar({super.key});

  @override
  State<MySliverAppBar> createState() => _MySliverAppBarState();
}

class _MySliverAppBarState extends State<MySliverAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: false,
            floating: true,
            snap: true,
            title: Text("SliverAppBar"),
            shadowColor: Colors.grey,
            expandedHeight: 120,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Hello"),
              titlePadding: EdgeInsets.all(10),
              centerTitle: true,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Text(
                "Faraz",
                style: TextStyle(fontSize: 500),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
