import 'package:flutter/material.dart';
import 'package:hidden_drrawer_pet_ui/presentation/animal_selected_screen.dart';
import '../widgets/animal_card.dart';
import '../widgets/animal_card_list.dart';
import '../settings/configuration.dart';
import '../widgets/search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;

  drawerState() {
    setState(() {
      if (isDrawerOpen == false) {
        xOffset = 230;
        yOffset = 150;
        scaleFactor = 0.6;
      } else {
        xOffset = 0;
        yOffset = 0;
        scaleFactor = 1;
      }
      isDrawerOpen = !isDrawerOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      duration: Duration(
        milliseconds: 250,
      ),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(isDrawerOpen == true ? 30 : 0),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isDrawerOpen == false
                      ? IconButton(
                          icon: Icon(Icons.menu),
                          onPressed: drawerState,
                        )
                      : IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: drawerState,
                        ),
                  Column(
                    children: [
                      Text('Location'),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: primaryGreen,
                          ),
                          Text('Ukraine'),
                        ],
                      ),
                    ],
                  ),
                  CircleAvatar(),
                ],
              ),
            ),
            SearchBar(),
            AnimalCardList(),
            InkWell(
              child: Hero(
                tag: 1,
                child: AnimalCard(
                  animalImage: 'images/pet-cat2.png',
                  backGroundCardColor: Colors.blueGrey[300],
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AnimalSelectedScreen();
                }));
              },
            ),
            AnimalCard(
                animalImage: 'images/pet-cat1.png',
                backGroundCardColor: Colors.orange[200])
          ],
        ),
      ),
    );
  }
}
