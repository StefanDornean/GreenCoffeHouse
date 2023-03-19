import 'package:explore/screens/details_page.dart';
import 'package:flutter/material.dart';

import '../widgets/responsive.dart';
import 'home_page.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> with TickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  int activeTabIndex = 0;
  List barItems = [
    {
      "title": "Acasa",
      "page": HomePage(),
    },
    {
      "title": "Despre noi",
      "page": DetailsPage(),
    },
  ];

//====== set animation=====
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 200),
    vsync: this,
  );
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.stop();
    _controller.dispose();
    super.dispose();
  }

  animatedPage(page) {
    return FadeTransition(child: page, opacity: _animation);
  }

  onPageChanged(int index) {
    if (index == activeTabIndex) return;
    _controller.reset();
    setState(() {
      activeTabIndex = index;
    });
    _controller.forward();
  }

//====== end set animation=====

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;

    return Scaffold(
        appBar: ResponsiveWidget.isSmallScreen(context)
            ? AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                title: Image.asset(
                  'assets/images/logo.png',
                  height: 40,
                ),
                centerTitle: true,
                iconTheme: IconThemeData(color: Color(0xFF347C4C)))
            : PreferredSize(
                preferredSize: Size(screenSize.width, 1000),
                child: getTopBar(),
              ),
        drawer: Drawer(
          backgroundColor: Color(0xFF347C4C),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      onPageChanged(0);
                    },
                    child: Text(
                      'Acasa',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Divider(
                      color: Colors.blueGrey.shade400,
                      thickness: 2,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      onPageChanged(1);
                    },
                    child: Text(
                      'Despre Noi',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Divider(
                      color: Colors.blueGrey.shade400,
                      thickness: 2,
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Copyright © 2020 | GreenCoffeeHouse',
                        style: TextStyle(
                          color: Colors.blueGrey.shade300,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        body: getBarPage());
  }

  Widget getBarPage() {
    return IndexedStack(
        index: activeTabIndex,
        children: List.generate(
            barItems.length, (index) => animatedPage(barItems[index]["page"])));
  }

  Widget getTopBar() {
    final List _isHovering = [false, false, false];
    List _isActive = [true, false, false, false];

    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(right: 50, left: 50, top: 10, bottom: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 25),
            Image.asset(
              'assets/images/logo.png',
              height: 40,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[0] = true : _isHovering[0] = false;
                      });
                    },
                    onTap: () {
                      setState(() {
                        _isActive = [true, false, false, false];
                      });
                      onPageChanged(0);
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 10),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            border: _isActive[0]
                                ? Border(
                                    bottom: BorderSide(
                                        width: 1.0, color: Colors.black))
                                : null,
                          ),
                          child: Text(
                            'Acasa',
                            style: TextStyle(
                              color: _isHovering[0]
                                  ? Colors.blue.shade200
                                  : Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[0],
                          child: Container(
                            height: 2,
                            width: 20,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 25),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[1] = true : _isHovering[1] = false;
                      });
                    },
                    onTap: () {
                      setState(() {
                        _isActive = [false, true, false, false];
                      });
                      onPageChanged(1);
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 10),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            border: _isActive[1]
                                ? Border(
                                    bottom: BorderSide(
                                        width: 1.0, color: Colors.black))
                                : null,
                          ),
                          child: Text(
                            'Despre Noi',
                            style: TextStyle(
                              color: _isHovering[1]
                                  ? Colors.blue.shade200
                                  : Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[1],
                          child: Container(
                            height: 2,
                            width: 20,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
