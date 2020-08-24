import 'package:firstimpression/video_detail_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(Icons.videocam),
          title: const Text('KBOYのyoutube大学',
          ),
          actions: [
            SizedBox(
              width: 44,
              child: FlatButton(
                child: Icon(Icons.search),
                onPressed: (){

                },
              ),
            ),
            SizedBox(
              width: 44,
              child: FlatButton(
                child: Icon(Icons.more_vert),
                onPressed: (){

                },
              ),
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.network('https://yt3.ggpht.com/a/AATXAJzTTrCl3cb1V2IoZ2h9-me3BXqwolvXElKMT74b=s100-c-k-c0xffffffff-no-rj-mo',
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      children: [
                         const Text('KBOYのyoutube大学',
                        ),
                        FlatButton(
                          child: Row(
                            children: [
                              Icon(Icons.video_call,
                              color: Colors.red,
                              ),
                              Text('登録する'),
                            ],
                          ),
                          onPressed: () {

                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
        Expanded(
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () async {
                  //画面遷移
                  await  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VideoDetailPage(),
                    ),
                  );
                },
                contentPadding: EdgeInsets.all(8),
                leading:  Image.network('https://i.ytimg.com/vi/SHoTRjzc1lI/hqdefault.jpg?sqp=-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE=&rs=AOn4CLChsU0NTGOuigSuRMyFMkHMVVVrhA',
                ),
                title: Column(
                  children: [
                    Text('【Flutter超入門】',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      children: [
                        Text('24回再生',
                          style: TextStyle(fontSize: 13),
                        ),
                        Text('4日前',
                          style: TextStyle(fontSize: 13),
                        ),

                      ],
                    ),
                  ],
                ),
                trailing: Icon(Icons.more_vert),
              );
            },
          ),
        ),

        ],
          ),
        ),
      ),
    );
  }
}