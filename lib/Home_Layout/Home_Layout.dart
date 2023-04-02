import 'package:alzahimer/Base.dart';
import 'package:alzahimer/Home_Layout/Home_Layout_Navigetor.dart';
import 'package:alzahimer/Home_Layout/Home_Layout_ViewModel.dart';
import 'package:alzahimer/modules/blogs.dart';
import 'package:alzahimer/modules/history.dart';
import 'package:alzahimer/modules/home.dart';
import 'package:alzahimer/modules/profile.dart';
import 'package:alzahimer/modules/scan.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:alzahimer/modules/register/register_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:alzahimer/modules/articles/articles_screen.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:alzahimer/cubit/layout_cubit.dart';
import 'package:multilevel_drawer/multilevel_drawer.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';
import 'package:icon_broken/icon_broken.dart';
import '../cubit/layout_states.dart';
import '../modules/Classifier/ClassifierScreen/ClassifierScreen.dart';
import '../modules/login/login_screen.dart';

class HomeLayout extends StatefulWidget {
  static const String roudeName = 'HomeLayout';
 // int currentIndex = 0;
  List<Widget> pages = const [
    Home(),
    Blogs(),
    Scan(),
    History(),
    Profile(),
  ];
  Widget currentPage = Blogs();
  int currentIndex = 0;
  final PageStorageBucket bucket = PageStorageBucket();

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends BaseState<HomeLayout, HomeLayoutViewModel>
    implements HomeLayoutNavigetor {
  List<Widget> taps = [ ClassifierScreen(), ArticleScreen(), LoginScreen(),];
  List<String> title = ['Home', 'Blogs', 'Scan','History','Profile'];
  List<Widget> pages =  [
    const Home(),
    ArticleScreen(),
    ClassifierScreen(),
    History(),
    Profile(),
  ];
  Widget currentPage = Blogs();
  int currentIndex = 0;
  final PageStorageBucket bucket = PageStorageBucket();
  @override
  HomeLayoutViewModel iniViewModel() {
    return HomeLayoutViewModel();
  }

  @override
  void initState() {
    super.initState();
    viewModel.navigetor = this;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutCubit(),
      child: BlocConsumer<LayoutCubit, LayoutStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.purple,
              title: Text(title[currentIndex],
                  style: TextStyle(
                    color: Colors.white,

                  )),
              elevation: 0,
            ),
            // drawer: Drawer(
            //   child: Column(
            //     children: [
            //       DrawerH
            //     ],
            //   ),
            // ),
            drawer: MultiLevelDrawer(
              backgroundColor: Colors.white,
              rippleColor: Colors.white,
              subMenuBackgroundColor: Colors.grey.shade100,
              divisionColor: Colors.grey,
              header: Container(
                height: MediaQuery.of(context).size.height * 0.25,
                child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.network(
                          "https://www.alz.org/media/HomeOffice/Inline%20Image/what-is-alzheimers-causes-symptoms-inlineimage.jpg",
                          width: 100,
                          height: 100,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("RetroPortal Studio")
                      ],
                    )),
              ),
              children: [
                MLMenuItem(
                    leading: Icon(Icons.person),
                    trailing: Icon(Icons.arrow_right),
                    content: Text(
                      "My Profile",
                    ),
                    subMenuItems: [
                      MLSubmenu(
                          onClick: () {
                          //   Navigator.of(context).pop();
                          //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondScreen()));
                           },
                          submenuContent: Text("Option 1")),
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 2")),
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 3")),
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 4")),
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 5")),
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 6")),
                    ],
                    onClick: () {}),
                MLMenuItem(
                    leading: Icon(Icons.settings),
                    trailing: Icon(Icons.arrow_right),
                    content: Text("Settings"),
                    onClick: () {},
                    subMenuItems: [MLSubmenu(onClick: () {}, submenuContent: Text("Option 1")), MLSubmenu(onClick: () {}, submenuContent: Text("Option 2"))]),
                MLMenuItem(
                  leading: Icon(Icons.notifications),
                  content: Text("Notifications"),
                  onClick: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeLayout()));
                  },
                ),
                MLMenuItem(
                    leading: Icon(Icons.payment),
                    trailing: Icon(Icons.arrow_right),
                    content: Text(
                      "Payments",
                    ),
                    subMenuItems: [
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 1")),
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 2")),
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 3")),
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 4")),
                    ],
                    onClick: () {}),
                MLMenuItem(
                    leading: Icon(Icons.payment),
                    trailing: Icon(Icons.arrow_right),
                    content: Text(
                      "Payments",
                    ),
                    subMenuItems: [
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 1")),
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 2")),
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 3")),
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 4")),
                    ],
                    onClick: () {}),
                MLMenuItem(
                    leading: Icon(Icons.payment),
                    trailing: Icon(Icons.arrow_right),
                    content: Text(
                      "Payments",
                    ),
                    subMenuItems: [
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 1")),
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 2")),
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 3")),
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 4")),
                    ],
                    onClick: () {}),
                MLMenuItem(
                    leading: Icon(Icons.payment),
                    trailing: Icon(Icons.arrow_right),
                    content: Text(
                      "New Option",
                    ),
                    subMenuItems: [
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 1")),
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 2")),
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 3")),
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 4")),
                    ],
                    onClick: () {}),
                MLMenuItem(
                    leading: Icon(Icons.payment),
                    trailing: Icon(Icons.arrow_right),
                    content: Text(
                      "New Option 1",
                    ),
                    subMenuItems: [
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 1")),
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 2")),
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 3")),
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 4")),
                    ],
                    onClick: () {}),
                MLMenuItem(
                    leading: Icon(Icons.payment),
                    trailing: Icon(Icons.arrow_right),
                    content: Text(
                      "New Option 2",
                    ),
                    subMenuItems: [
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 1")),
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 2")),
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 3")),
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 4")),
                    ],
                    onClick: () {}),
                MLMenuItem(
                    leading: Icon(Icons.payment),
                    trailing: Icon(Icons.arrow_right),
                    content: Text(
                      "New Option 3",
                    ),
                    subMenuItems: [
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 1")),
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 2")),
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 3")),
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 4")),
                    ],
                    onClick: () {}),
                MLMenuItem(
                    leading: Icon(Icons.payment),
                    trailing: Icon(Icons.arrow_right),
                    content: Text(
                      "New Option 4",
                    ),
                    subMenuItems: [
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 1")),
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 2")),
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 3")),
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 4")),
                    ],
                    onClick: () {}),
                MLMenuItem(
                    leading: Icon(Icons.payment),
                    trailing: Icon(Icons.arrow_right),
                    content: Text(
                      "New Option 5",
                    ),
                    subMenuItems: [
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 1")),
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 2")),
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 3")),
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 4")),
                    ],
                    onClick: () {}),
                MLMenuItem(
                    leading: Icon(Icons.payment),
                    trailing: Icon(Icons.arrow_right),
                    content: Text(
                      "New Option 6",
                    ),
                    subMenuItems: [
                      MLSubmenu(onClick: () {

                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeLayout()));
                      }, submenuContent: Text("Option 1")),

                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 2")),
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 3")),
                      MLSubmenu(onClick: () {}, submenuContent: Text("Option 4")),
                    ],
                    onClick: () {
                    }),
              ],
            ),

            extendBody: true,
            extendBodyBehindAppBar: true,

            bottomNavigationBar: BottomAppBar(
              shape: const CircularNotchedRectangle(),
              elevation: 10,
              notchMargin: 8,
              child: SizedBox(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        MaterialButton(
                          minWidth: 40,
                          onPressed: () {
                            setState(
                                  () {
                                currentPage = const Home();
                                currentIndex = 0;
                              },
                            );
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                IconBroken.Home,
                                color:
                                currentIndex == 0 ? Colors.purple : Colors.grey,
                                size: 22,
                              ),
                              Text(
                                'Home',
                                style: TextStyle(
                                  color:
                                  currentIndex == 0 ? Colors.purple : Colors.grey,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        MaterialButton(
                          minWidth: 40,
                          onPressed: () {
                            setState(
                                  () {
                                currentPage = ArticleScreen();
                                currentIndex = 1;
                              },
                            );
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                IconBroken.Document,
                                color:
                                currentIndex == 1 ? Colors.purple : Colors.grey,
                                size: 22,
                              ),
                              Text(
                                'Blogs',
                                style: TextStyle(
                                    color: currentIndex == 1
                                        ? Colors.purple
                                        : Colors.grey,
                                    fontSize: 15),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        MaterialButton(
                          minWidth: 40,
                          onPressed: () {
                            setState(
                                  () {
                                currentPage = const Profile();
                                currentIndex = 3;
                              },
                            );
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                IconBroken.Document,
                                color:
                                currentIndex == 3 ? Colors.purple : Colors.grey,
                                size: 22,
                              ),
                              Text(
                                'History',
                                style: TextStyle(
                                  color:
                                  currentIndex == 3 ? Colors.purple : Colors.grey,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        MaterialButton(
                          minWidth: 40,
                          onPressed: () {
                            setState(
                                  () {
                                currentPage = const Profile();
                                currentIndex = 4;
                              },
                            );
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                IconBroken.Profile,
                                color:
                                currentIndex == 4 ? Colors.purple : Colors.grey,
                                size: currentIndex == 4 ? 24 : 22,
                              ),
                              Text(
                                'Profile',
                                style: TextStyle(
                                    color: currentIndex == 4
                                        ? Colors.purple
                                        : Colors.grey,
                                    fontSize: 15),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),

            body: PageStorage(
              bucket: bucket,
              child: currentPage,
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            floatingActionButton: FloatingActionButton(
              elevation: 15,
              backgroundColor: Colors.purple,
              child: Image.asset(
                'assets/images/brain.png',
                color: currentIndex == 2 ? Colors.white : Colors.grey,
                scale: 12,
              ),
              onPressed: () {
                setState(() {
                  currentIndex = 2;
                  currentPage =  ClassifierScreen();
                });
              },
            ),
          );
        },
      ),
    );
  }
}
