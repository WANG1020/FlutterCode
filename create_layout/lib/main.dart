import 'dart:developer';

import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new Text(
                    '这是创建布局的Demo',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Text(
                  '喜欢请点收藏',
                  style: new TextStyle(
                    color: Colors.grey[500],
                  ),
                )
              ],
            ),
          ),
          new Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          new Text('41'),
        ],
      ),
    );

    Column buildButtonColumn(IconData icon,String label) {
      Color color = Theme.of(context).primaryColor;
      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Icon(
            icon,
            color: color,
          ),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              style: new TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Widget buttonSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButtonColumn(Icons.call, "电话"),
          buildButtonColumn(Icons.near_me, "邮件"),
          buildButtonColumn(Icons.share, "分享")
        ],
      ),
    );

    Widget textSection = new Container(
      padding: const EdgeInsets.all(19.0),
      child: new Text(
        '''
      阳光透过大大的落地窗照进来，借阅室里书架林立，站在高高的书架前，我用眼光轻轻掠过一本本书。抽出一本《心如大海》，随意翻看，一枚书签从书页间悠然飘落，静静地躺在了阳光铺满的书架前。

      我弯腰捡起它，不由赞了声——好雅致！长方形的书签上，左上角竖排着两个大字——秋实，底色是秋景，蓝天白云远山近树，底色虚化远化，秋实下面是竖排的诗词：满院繁花映灯影，月下秋自凉。时光柔似水！心随诗意生柔情，身处初冬，心到金秋。

      这是一套书签中的一枚，其他三枚必然是春、夏、冬。我选好要借的书，把捡到的书签交给管理员，管理员把书签放到了一边的桌子上，我发现桌子上有不少的书签，想必是管理员上架时，从交还的书中捡到的。每一枚书签都做工精良、雅致。

      猛然想起少年时，那时物资匮乏，能拥有一套自己的书签，对于我来讲是可望而不可及的事情。班上有个同学，他在大城市工作的叔叔给他寄回一套精美的书签，曾让年少的我眼热、心羡。我不止一次暗暗想着，以后参加工作了，定要把自己喜欢的书签好好买几套。

      那时，我的书签有吃过的冰糕棍、有从树上摘来的核桃叶、有展平的糖纸，还有筷子和毛衣针。其中，我最珍惜的一张书签，来自一个心灵手巧的姐姐，她比我高两级，和我一样喜欢看书。有相同爱好的我们，跨年级成了好朋友，经常互换书交流阅读心得。她自己裁了彩纸，做了一枚书签送我，书签上她用行楷竖着写了两句名言：书山有路勤为径，学海无涯苦作舟。书签的右下角写着与你共勉和她的名字，上方还打孔系上五彩丝线。那枚书签陪我度过了许多年的阅读时光。

      现在，书签的种类繁多、做工精良，材质也不拘泥于纸质，金属的、木质的、绢质的、丝质的，还有带夜光和磁性的。式样就更多了，古曲风、现代风、人物、美景应有尽有。

      流年似水，光阴荏苒。我早已不是那个羡慕别人的少年，书签也不再是可望而不可即的物件。但唯有那爱书之心，依旧如初。
      ''',
        softWrap: true,
      ),
    );
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: new ListView(
          children: <Widget>[
            new Image.asset(
              'images/lake.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}