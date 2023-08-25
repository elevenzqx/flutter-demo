import 'package:flutter/material.dart';

class MyColumn {
  final String title;
  final String subtitle;

  MyColumn(this.title, this.subtitle);
}

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    //定义列表widget的list
    List<Widget> list = <Widget>[];

    //Demo数据定义
    var data = [
      MyColumn("测试数据AAA", "ASDFASDFASDF1"),
      MyColumn("测试数据BBB", "ASDFASDFASDF2"),
      MyColumn("测试数据CCC", "ASDFASDFASDF3"),
      MyColumn("测试数据DDD", "ASDFASDFASDF4"),
      MyColumn("测试数据AAA", "ASDFASDFASDF1"),
      MyColumn("测试数据BBB", "ASDFASDFASDF2"),
      MyColumn("测试数据CCC", "ASDFASDFASDF3"),
      MyColumn("测试数据DDD", "ASDFASDFASDF4"),
      MyColumn("测试数据AAA", "ASDFASDFASDF1"),
      MyColumn("测试数据BBB", "ASDFASDFASDF2"),
      MyColumn("测试数据CCC", "ASDFASDFASDF3"),
      MyColumn("测试数据DDD", "ASDFASDFASDF4"),
      MyColumn("测试数据AAA", "ASDFASDFASDF1"),
      MyColumn("测试数据BBB", "ASDFASDFASDF2"),
      MyColumn("测试数据CCC", "ASDFASDFASDF3"),
      MyColumn("测试数据DDD", "ASDFASDFASDF4"),
      MyColumn("测试数据AAA", "ASDFASDFASDF1"),
      MyColumn("测试数据BBB", "ASDFASDFASDF2"),
      MyColumn("测试数据CCC", "ASDFASDFASDF3"),
      MyColumn("测试数据DDD", "ASDFASDFASDF4"),
    ];

    //根据Demo数据，构造列表ListTile组件list
    for (var item in data) {
      print(item.title);

      list.add(ListTile(
          title: Text(
            item.title,
            style: const TextStyle(fontSize: 18.0),
          ),
          subtitle: Text(item.subtitle),
          leading: const Icon(Icons.fastfood, color: Colors.orange),
          onTap: () => {
                //点击的时候，进行路由跳转传参
                Navigator.pushNamed(context, "DetailPage", arguments: item)
              },
          trailing: const Icon(Icons.keyboard_arrow_right)));
    }

    //返回整个页面
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("列表页布局测试"),
      ),
      body: Center(
        child: ListView(
          children: list,
        ),
      ),
    );
  }
}
