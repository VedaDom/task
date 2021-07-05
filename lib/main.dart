import 'package:flutter/material.dart';

void main() {
  runApp(TaskApp());
}

class TaskApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 80,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Color(0xff191c25),
              border: Border(
                right: BorderSide(
                  width: 2,
                  color: Color(0xbba3a1a4).withOpacity(.1),
                ),
              ),
            ),
            child: Column(
              children: [
                Container(
                  height: 100,
                  child: Icon(
                    Icons.alarm_on,
                    color: Colors.white38,
                    size: 40,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 12),
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Color(0xbba3a1a4).withOpacity(.1),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(
                          Icons.folder_open,
                          color: Colors.white38,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 12),
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Color(0xbba3a1a4).withOpacity(.1),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(
                          Icons.calendar_today,
                          color: Colors.white38,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 12),
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Color(0xff0bba35).withOpacity(.2),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(
                          Icons.ac_unit,
                          color: Color(0xff0bba35),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 12),
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Color(0xbba3a1a4).withOpacity(.1),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(
                          Icons.data_usage,
                          color: Colors.white38,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 12),
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Color(0xbba3a1a4).withOpacity(.1),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(
                          Icons.settings,
                          color: Colors.white38,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 12),
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Color(0xbba3a1a4).withOpacity(.1),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(
                          Icons.more_horiz,
                          color: Colors.white38,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 8),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color(0xbba3a1a4).withOpacity(.1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Icon(
                    Icons.info_outline,
                    color: Colors.white38,
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
              ],
            ),
          ),
          Container(
            width: 300,
            padding: EdgeInsets.all(32),
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Color(0xff191c25),
              border: Border(
                right: BorderSide(
                  width: 2,
                  color: Color(0xbba3a1a4).withOpacity(.1),
                ),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Projects",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                    Expanded(child: Container()),
                    FButton(
                      color: Color(0xff0bba35),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 0,
                        child: Container(
                          width: 236,
                          height: 2,
                          color: Color(0xbba3a1a4).withOpacity(.1),
                        ),
                      ),
                      TabBar(
                        controller: _tabController,
                        indicatorColor: Color(0xff0bba35),
                        labelColor: Color(0xff0bba35),
                        unselectedLabelColor: Colors.white38,
                        tabs: [
                          Tab(
                            text: "All",
                          ),
                          Tab(
                            text: "Open",
                          ),
                          Tab(
                            text: "Closed",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    controller: _tabController,
                    children: [
                      TabView(),
                      TabView(),
                      TabView(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
              color: Color(0xff14161e),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(32),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Activo",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "12 members",
                              style: TextStyle(
                                color: Colors.white38,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Icon(
                          Icons.star_border,
                          color: Color(0xbba3a1a4).withOpacity(.3),
                        ),
                        Expanded(child: Container()),
                        FButton(
                          padding: EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 16,
                          ),
                          color: Color(0xff0bba35),
                          child: Row(
                            children: [
                              Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              Text(
                                "New task",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        InkWell(
                          child: Padding(
                            padding: const EdgeInsets.all(3),
                            child: Icon(
                              Icons.more_vert,
                              color: Color(0xbba3a1a4).withOpacity(.3),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          padding: EdgeInsets.all(32),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 16),
                                child: Text(
                                  "To Do (1)",
                                  style: TextStyle(
                                    color: Colors.white38,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                width: 350,
                                padding: EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xbba3a1a4).withOpacity(.1),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.timer,
                                          color:
                                              Color(0xbba3a1a4).withOpacity(.3),
                                          size: 16,
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          "12 Jun 2020",
                                          style: TextStyle(
                                            color: Color(0xbba3a1a4)
                                                .withOpacity(.3),
                                            fontSize: 12,
                                          ),
                                        ),
                                        Expanded(child: Container()),
                                        InkWell(
                                          child: Padding(
                                            padding: const EdgeInsets.all(3),
                                            child: Icon(
                                              Icons.more_vert,
                                              color: Color(0xbba3a1a4)
                                                  .withOpacity(.3),
                                            ),
                                          ),
                                          onTap: () {},
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text(
                                      "Data Analysits using R",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 4,
                                          ),
                                          child: CircleAvatar(
                                            backgroundColor:
                                                Colors.blueGrey.withOpacity(.5),
                                            radius: 16,
                                            child: Text(
                                              "TD",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 4,
                                          ),
                                          child: CircleAvatar(
                                            backgroundColor:
                                                Colors.blueGrey.withOpacity(.5),
                                            radius: 16,
                                            child: Text(
                                              "TD",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 4,
                                          ),
                                          child: CircleAvatar(
                                            backgroundColor:
                                                Colors.blueGrey.withOpacity(.5),
                                            radius: 16,
                                            child: Text(
                                              "TD",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 4,
                                            ),
                                            child: Container(
                                              padding: EdgeInsets.all(8),
                                              child: Icon(
                                                Icons.add,
                                                size: 16,
                                                color: Color(0xbba3a1a4)
                                                    .withOpacity(.3),
                                              ),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                border: Border.all(
                                                  color: Color(0xbba3a1a4)
                                                      .withOpacity(.3),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FButton extends StatelessWidget {
  const FButton({
    Key key,
    @required this.child,
    @required this.color,
    this.padding: const EdgeInsets.all(8),
  }) : super(key: key);

  final Widget child;
  final Color color;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
      child: child,
    );
  }
}

class TabView extends StatelessWidget {
  const TabView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Software",
          style: TextStyle(
            color: Colors.white38,
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Column(
          children: [],
        ),
        SizedBox(
          height: 32,
        ),
        Text(
          "Business",
          style: TextStyle(
            color: Colors.white38,
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Column(
          children: [],
        ),
      ],
    );
  }
}
