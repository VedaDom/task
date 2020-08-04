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
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xff0bba35),
                        borderRadius: BorderRadius.circular(5),
                      ),
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
            ),
          ),
        ],
      ),
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
          children: [
            ProjectCard(
              projectName: "Activo",
              isSelected: true,
              numberOfMembers: 5,
              numberOfUncompletedTasks: 8,
              color: Color(0xff0bba35),
            ),
            ProjectCard(
              projectName: "Liquid",
              isSelected: false,
              numberOfMembers: 12,
              numberOfUncompletedTasks: 3,
              color: Color(0xff0bba35),
            ),
          ],
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
          children: [
            ProjectCard(
              projectName: "Doctio",
              isSelected: false,
              numberOfMembers: 4,
              numberOfUncompletedTasks: 9,
              color: Color(0xff42aad3),
            ),
          ],
        ),
      ],
    );
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key key,
    this.projectName,
    this.isSelected,
    this.numberOfUncompletedTasks,
    this.numberOfMembers,
    this.color,
  }) : super(key: key);

  final String projectName;
  final bool isSelected;
  final int numberOfUncompletedTasks;
  final int numberOfMembers;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12),
      height: 60,
      decoration: isSelected
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: color,
                width: 1,
              ),
              color: Color(0xbba3a1a4).withOpacity(.1),
            )
          : BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color(0xbba3a1a4).withOpacity(.1),
            ),
      child: Row(
        children: [
          Container(
            width: 6,
            height: 60,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
            ),
          ),
          SizedBox(
            width: 6,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  projectName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "$numberOfMembers members",
                  style: TextStyle(
                    color: Colors.white38,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 4,
              horizontal: 8,
            ),
            decoration: BoxDecoration(
              color: color.withOpacity(.2),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text(
              numberOfUncompletedTasks.toString(),
              style: TextStyle(
                color: color,
                fontWeight: FontWeight.bold,
              ),
            ),
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
          SizedBox(
            width: 6,
          ),
        ],
      ),
    );
  }
}
