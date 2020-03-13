import 'package:flutter/material.dart';
import 'package:star_app/models/video_model.dart';
import 'package:star_app/screens/movie_screen.dart';
import 'package:star_app/widgets/content_scroll.dart';
import 'package:star_app/models/balance_style.dart';

class Homebody extends StatefulWidget {
  @override
  _HomebodyState createState() => _HomebodyState();
}

class _HomebodyState extends State<Homebody> {
  PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 1, viewportFraction: 0.8);
  }

  _movieSelector(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (BuildContext context, Widget widget) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;
          value = (1 - (value.abs() * 0.3) + 0.06).clamp(0.0, 1.0);
        }
        return Center(
          child: SizedBox(
            height: Curves.easeInOut.transform(value) * 270.0,
            width: Curves.easeInOut.transform(value) * 400.0,
            child: widget,
          ),
        );
      },
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => MovieScreen(videos: videos[index]),
          ),
        ),
        child: Stack(
          children: <Widget>[
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      offset: Offset(0.0, 4.0),
                      blurRadius: 10.0,
                    ),
                  ],
                ),
                child: Center(
                  child: Hero(
                    tag: videos[index].imageUrl,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image(
                        image: AssetImage(videos[index].imageUrl),
                        height: 220.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 30.0,
              bottom: 40.0,
              child: Container(
                width: 250.0,
                child: Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Text(
                    videos[index].title.toUpperCase(),
                    style: TextStyle(
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black,
                          offset: Offset(5.0, 5.0),
                        )
                      ],
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //BALANCE SECTION
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
          child: Column(
            children: <Widget>[
              Container(
                height: 40,
                decoration: boxdecoration,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'James',
                        style: textstyle_bold,
                      ),
                      Text(
                        'Rp. 200.000',
                        style: textstyle_bold,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 100,
                decoration: boxdecoration_bottom,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {},
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.add_box,
                                color: Colors.white,
                                size: 40,
                              ),
                              Text(
                                'Top up',
                                style: textstyle,
                              )
                            ],
                          ),
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.remove_red_eye,
                                color: Colors.white,
                                size: 40,
                              ),
                              Text(
                                'Watch History',
                                style: textstyle,
                              )
                            ],
                          ),
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.list,
                                color: Colors.white,
                                size: 40,
                              ),
                              Text(
                                'Transaction',
                                style: textstyle,
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          height: 280.0,
          width: double.infinity,
          child: PageView.builder(
            controller: _pageController,
            itemCount: videos.length,
            itemBuilder: (BuildContext context, int index) {
              return _movieSelector(index);
            },
          ),
        ),
        Container(
          height: 90.0,
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            scrollDirection: Axis.horizontal,
            itemCount: labels.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.all(10.0),
                width: 160.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFFD45253),
                      Color(0xFF9E1F28),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF9E1F28),
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    labels[index].toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.8,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 20.0),
        ContentScroll(
          videos: videos,
          title: 'Latest',
          imageHeight: 315.0,
          imageWidth: 250.0,
        ),
        SizedBox(height: 10.0),
        ContentScroll(
          videos: videos,
          title: 'Popular',
          imageHeight: 315.0,
          imageWidth: 250.0,
        ),
      ],
    );
  }
}

final Widget searchbody = Container(
  child: Text(
    'tawefaewf',
    style: TextStyle(color: Colors.white),
  ),
);

final Widget inboxbody = Container(
  child: Text('test2'),
);

final Widget profilebody = Container(
  child: Text('test3'),
);
