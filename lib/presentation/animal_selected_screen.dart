import 'package:flutter/material.dart';
import 'package:hidden_drrawer_pet_ui/settings/configuration.dart';

class AnimalSelectedScreen extends StatefulWidget {
  const AnimalSelectedScreen({Key key}) : super(key: key);

  @override
  _AnimalSelectedScreenState createState() => _AnimalSelectedScreenState();
}

class _AnimalSelectedScreenState extends State<AnimalSelectedScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.blueGrey[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: 0), // used to expand background to the top but dont work
              child: Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.share),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Hero(
                tag: 1,
                child: Container(
                  margin: EdgeInsets.only(top: size.height * 0.02),
                  height: size.height * 0.3,
                  width: size.height * 0.3,
                  child: Image.asset(
                    'images/pet-cat2.png',
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: size.height * 0.15,
                width: size.width * 0.85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: shadowList,
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [Text('STOLA')],
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 70,
                          decoration: BoxDecoration(
                              color: primaryGreen,
                              borderRadius: BorderRadius.circular(20)),
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          height: 70,
                          decoration: BoxDecoration(
                            color: primaryGreen,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              'Adoption',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
