import 'package:animation_sample/home_page/view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeViewModel>(
        create: (_) => HomeViewModel(),
        child: Consumer<HomeViewModel>(
          builder: (context, model, _) {
            return Scaffold(
              appBar: AppBar(
                title: Text('アニメーションで遊ぶ'),
                centerTitle: true,
              ),
              body: Center(
                child: Transform.rotate(
                  angle: model.angle,
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.blue,
                  ),
                ),
              ),
              floatingActionButton: FloatingActionButton(
                child: Icon(Icons.rotate_left_outlined),
                onPressed: () => model.rotate45degree(),
              ),
            );
          },
        )
    );
  }

}