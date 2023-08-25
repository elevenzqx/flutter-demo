import 'package:flutter/material.dart';
import 'list.dart';

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        /*1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                '我是Detail页面',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              '我是Detail页面',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
      /*3*/
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      const Text('41'),
    ],
  ),
);

Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: const Text(
    'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
    'Alps. Situated 1,578 meters above sea level, it is one of the '
    'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
    'half-hour walk through pastures and pine forest, leads you to the '
    'lake, which warms to 20 degrees Celsius in the summer. Activities '
    'enjoyed here include rowing, and riding the summer toboggan run.',
    softWrap: true,
  ),
);

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late final ScrollController _scrollController;
  bool showToTopBtn = false; //是否显示“返回到顶部”按钮

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
    // 监听滚动事件，打印滚动位置
    _scrollController.addListener(() {
      print(_scrollController.offset); //打印滚动位置
      if (_scrollController.offset < 1000 && showToTopBtn) {
        setState(() {
          showToTopBtn = false;
        });
      } else if (_scrollController.offset >= 1000 && showToTopBtn == false) {
        setState(() {
          showToTopBtn = true;
        });
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    //获取路由传参
    final MyColumn args =
        ModalRoute.of(context)!.settings.arguments as MyColumn;

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("详情信息"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Scrollbar(
          // child: ListView.builder(
          //   itemCount: 100,
          //   itemExtent: 50.0, //列表项高度固定时，显式指定高度是一个好习惯(性能消耗小)
          //   controller: _scrollController,
          //   itemBuilder: (context, index) {
          //     return ListTile(title: Text("$index"));
          //   },
          // ),
          controller: _scrollController,
          child: SingleChildScrollView(
              controller: _scrollController,
              padding: const EdgeInsets.all(5),
              child: Column(
                children: <Widget>[
                  Image.network(
                    'https://cdn3-banquan.ituchong.com/weili/ml/1481175667509952526.jpeg',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://static.runoob.com/images/demo/demo4.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://img.win3000.com/m00/d6/f0/39de3b0c924e419833db0c8aab402dd6.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://img.tukuppt.com/bg_grid/05/37/54/v40ZCaqERa.jpg!/fh/350',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://cdn3-banquan.ituchong.com/weili/ml/1481175667509952526.jpeg',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://static.runoob.com/images/demo/demo4.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://img.win3000.com/m00/d6/f0/39de3b0c924e419833db0c8aab402dd6.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://img.tukuppt.com/bg_grid/05/37/54/v40ZCaqERa.jpg!/fh/350',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://cdn3-banquan.ituchong.com/weili/ml/1481175667509952526.jpeg',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://static.runoob.com/images/demo/demo4.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://img.win3000.com/m00/d6/f0/39de3b0c924e419833db0c8aab402dd6.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://img.tukuppt.com/bg_grid/05/37/54/v40ZCaqERa.jpg!/fh/350',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://cdn3-banquan.ituchong.com/weili/ml/1481175667509952526.jpeg',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://static.runoob.com/images/demo/demo4.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://img.win3000.com/m00/d6/f0/39de3b0c924e419833db0c8aab402dd6.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://img.tukuppt.com/bg_grid/05/37/54/v40ZCaqERa.jpg!/fh/350',
                    fit: BoxFit.cover,
                  ),
                  titleSection,
                  buttonSection,
                  textSection,
                  const Text("-------------------"),
                  Text(args.title),
                  Text(args.subtitle)
                ],
              )
              // column
              )
          // child 结束
          ),
      floatingActionButton: !showToTopBtn
          ? null
          : FloatingActionButton(
              child: const Icon(Icons.arrow_upward),
              onPressed: () {
                //返回到顶部时执行动画
                _scrollController.animateTo(
                  .0,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.ease,
                );
              }),
    );
  }
}
