import 'package:flutter/material.dart';

class InstagramProfileScreen extends StatelessWidget {
  const InstagramProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(title: const Text('dhiyaulhaqza')),
          body: DefaultTabController(
              length: 2,
              child: NestedScrollView(
                headerSliverBuilder: ((context, innerBoxIsScrolled) {
                  return [
                    SliverList(
                        delegate: SliverChildListDelegate(
                            [const DetailProfileWidget()])),
                  ];
                }),
                body: Column(
                  children: const <Widget>[
                    SizedBox(height: 8.0),
                    TabBar(
                      tabs: [
                        Tab(
                            icon: Icon(Icons.grid_on_outlined,
                                color: Colors.black)),
                        Tab(
                            icon: Icon(Icons.person_pin_outlined,
                                color: Colors.black)),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          IGFeedWidget(),
                          IGFeedWidget(),
                        ],
                      ),
                    ),
                  ],
                ),
              ))),
    );
  }
}

class IGFeedWidget extends StatelessWidget {
  const IGFeedWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.zero,
      crossAxisCount: 3,
      mainAxisSpacing: 1.0,
      crossAxisSpacing: 1.0,
      children: Colors.primaries.map((color) {
        return Container(color: color, height: 150.0);
      }).toList(),
    );
  }
}

class DetailProfileWidget extends StatelessWidget {
  const DetailProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 40,
                    child: Stack(children: const [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.blue,
                          child: Icon(
                            Icons.add,
                            size: 16,
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Text('0'),
                      Text('Posts'),
                    ],
                  ),
                  Column(
                    children: const [
                      Text('0'),
                      Text('Followers'),
                    ],
                  ),
                  Column(
                    children: const [
                      Text('0'),
                      Text('Following'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Dhiya Ulhaq Zulha Alamsyah', style: TextStyle(fontWeight: FontWeight.bold),),
              const Text('A private network with SSID 0x64757a61.'),
              const Text('dhiyaulhaqza.com', style: TextStyle(color: Colors.blue),),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Expanded(
                      child: OutlinedButton(
                    onPressed: () {},
                    child: const Text(
                      'Edit Profile',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.black)),
                  )),
                  const SizedBox(
                    width: 4,
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.person_add_outlined,
                      color: Colors.black,
                    ),
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.black)),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
