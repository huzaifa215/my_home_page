import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_auth/Screens/Admin/components/background.dart';
import 'package:flutter_auth/Screens/LandLordDashbord//components/background.dart';
import 'package:url_launcher/url_launcher.dart';

class ViewProperty extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: Container(
        color: Theme.of(context).primaryColor,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Builder(
                builder: (context) => FlatButton.icon(
                  onPressed: () {
                    // _launchURL(context, property.listerUrl);
                  },
                  icon: Icon(Icons.launch),
                  label: Text("Visit Listing"),
                  textColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            floating: false,
            expandedHeight: 270,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.passthrough,
                children: <Widget>[
                  // Image.network(
                  //   /property.imgUrl,
                  //   fit: BoxFit.cover,
                  // ),
                  Image.asset('assets/images/pic.jpg'),
                  // This gradient ensures that the toolbar icons are distinct
                  // against the background image.
                  const DecoratedBox(
                    decoration: BoxDecoration(
                       gradient: LinearGradient(
                         begin: Alignment(0.0, -1.0),
                         end: Alignment(0.0, -0.4),
                         colors: <Color>[Color(0x60000000), Color(0x00000000)],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 50,
                    left: 0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 9, horizontal: 20),
                      color: Color.fromRGBO(255, 255, 255, 0.5),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 9.0),
                            // child: Icon(
                            //   FontAwesomeIcons.tag,
                            //   size: 20,
                            //   color: Theme.of(context).accentColor,
                            // ),
                          ),
                          // Text(
                          //  // property.priceFormatted,
                          //   style: Theme.of(context).textTheme.title,
                          // )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
                // if rou want to give details of the ;property tan this is used
                //Container(
                //   color: Colors.white,
                //   padding: const EdgeInsets.all(16),
                //   margin: const EdgeInsets.only(bottom: 4),
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: <Widget>[
                //       // Text(
                //       //   property.title,
                //       //   style: Theme.of(context)
                //       //       .textTheme
                //       //       .title
                //       //       .copyWith(fontSize: 24.0),
                //       // ),
                //       Container(
                //         margin: const EdgeInsets.symmetric(vertical: 16.0),
                //         padding: const EdgeInsets.symmetric(vertical: 16.0),
                //         decoration: BoxDecoration(
                //           border: Border(
                //             top: BorderSide(color: Colors.grey, width: 0.4),
                //             bottom: BorderSide(color: Colors.grey, width: 0.4),
                //           ),
                //         ),
                //         child: Row(
                //           mainAxisAlignment: MainAxisAlignment.spaceAround,
                //           children: <Widget>[
                //             // TextIcon(
                //             //   icon: FontAwesomeIcons.bed,
                //             //   text: "${property.bedroomNumber ?? "#"} Bedrooom",
                //             // ),
                //             // TextIcon(
                //             //   icon: FontAwesomeIcons.shower,
                //             //   text: "${property.bathroomNumber ?? "#"} Bathrooom",
                //             // ),
                //             // TextIcon(
                //             //   icon: FontAwesomeIcons.car,
                //             //   text: "${property.carSpaces ?? "#"} Carspace",
                //             // )
                //           ],
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                Container(
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(vertical: 4.0),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Summary",
                        style: Theme.of(context)
                            .textTheme
                            .title
                            .copyWith(fontSize: 20),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(vertical: 16.0),
                      //   child: Text(property.summary),
                      // ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4.0),

                        child: Text(
                          "It is a 3 mrla house having 2 attached bath room and 1 kitchen ",
                          style: Theme.of(context).textTheme.subtitle,
                        ),
                      ),
                      // Wrap(
                      //   runSpacing: 8,
                      //   spacing: 8,
                      //   children: property.keyWordList
                      //       .map((kl) => Chip(
                      //     label: Text(kl),
                      //     labelStyle: TextStyle(color: Colors.white),
                      //     backgroundColor: Theme.of(context).accentColor,
                      //   ))
                      //       .toList(),
                      // ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(vertical: 4.0),
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          "Price",
                          style: Theme.of(context)
                              .textTheme
                              .title
                              .copyWith(fontSize: 20.0),
                        ),
                      ),
SizedBox(height: 20),
                      CarouselSlider(
                          options: CarouselOptions(height: 200.0),
                          items: [
                            'http://pic3.16pic.com/00/55/42/16pic_5542988_b.jpg',
                            'http://photo.16pic.com/00/38/88/16pic_3888084_b.jpg',
                            'http://pic3.16pic.com/00/55/42/16pic_5542988_b.jpg',
                            'http://photo.16pic.com/00/38/88/16pic_3888084_b.jpg'
                          ].map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin: EdgeInsets.symmetric(horizontal: 3.0),
                                    decoration: BoxDecoration(color: Colors.white),
                                    child: GestureDetector(
                                        child: Image.network(i, fit: BoxFit.fill),
                                        onTap: () {
                                          Navigator.push<Widget>(
                                            context,
                                            MaterialPageRoute(
                                             // builder: (context) => ImageScreen(i),
                                            ),
                                          );
                                        }));
                              },
                            );
                          }).toList()
                      )



                      // Column(
                      //   children:<Widget>[
                      //     CarouselSlider(
                      //      // items: child,
                      //      // carouselController: buttonCarouselController,
                      //       options: CarouselOptions(
                      //         autoPlay: false,
                      //         enlargeCenterPage: true,
                      //         viewportFraction: 0.9,
                      //         aspectRatio: 2.0,
                      //         initialPage: 2,
                      //       ),
                      //     ),
                      //
                      //   ],
                      // )

                      // ListTile(
                      //   leading: Icon(Icons.account_circle),
                      //   title: Text("${property?.listerName ?? "unavailable"}"),
                      //   subtitle: Text(
                      //       "${property?.datasourceName ?? "source unavailable"}"),
                      // ),
                    ],
                  ),

                ),
              ]))
        ],
      ),
    );
  }
}