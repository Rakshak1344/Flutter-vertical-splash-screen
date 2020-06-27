import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "https://images.unsplash.com/photo-1550989460-0adf9ea622e2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80",
      "https://images.unsplash.com/photo-1545682794-627b0915ccb6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80",
      "https://images.unsplash.com/photo-1582902281043-69c645f40cd5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80",
      "https://images.unsplash.com/photo-1575898201154-d65111ab78b9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80",
    ];
    List<String> data = [
      "Shop at your own home",
      "Add products to your cart",
      "Get delivered at your door step"
    ];

    Material bottomInfoCard(String text) {
      return Material(
        borderRadius: BorderRadius.circular(10),
        color: Colors.green,
        elevation: 0,
        child: Container(
          padding: EdgeInsets.all(8),
          height: 100,
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.ubuntu(
                textStyle: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      );
    }

    Widget dataswitch(BuildContext context, int i) {
      switch (i) {
        case 0:
          return bottomInfoCard("Select products");
        case 1:
          return bottomInfoCard("Add to cart");
        case 2:
          return bottomInfoCard("Get delivered");
        case 3:
          return Material(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20),
            elevation: 10,
            child: InkWell(
              borderRadius: BorderRadius.circular(20),
              splashColor: Colors.greenAccent,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              child: Container(
                height: 100,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "Shop now",
                        style: GoogleFonts.ubuntu(
                          textStyle: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 40,
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
          break;
        default:
          SizedBox();
          break;
      }
    }

    return Swiper(
      itemCount: 4,
      autoplay: false,
      loop: false,
      curve: Curves.bounceIn,
      itemBuilder: (BuildContext context, int i) {
        return Stack(
          fit: StackFit.expand,
          children: <Widget>[
            ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.green.withOpacity(0.3),
                BlendMode.srcATop,
              ),
              child: Image.network(
                images[i],
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              bottom: 30,
              right: 10,
              left: 10,
              child: dataswitch(context, i),
            ),
          ],
        );
      },
      pagination: new SwiperPagination(),
      control: new SwiperControl(
        disableColor: Colors.grey,
        color: Colors.green,
      ),
      scrollDirection: Axis.vertical,
    );
  }
}
