import 'package:calculator_provider/mycontrller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MaterialApp(
    home: ChangeNotifierProvider(
      create: (context) => MyController(),
      child: Home(),
    ),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatelessWidget {
  TextEditingController t1 = TextEditingController();
  String s1 = '', s2 = '', sign = '';

  @override
  Widget build(BuildContext context) {
    MyController m = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator Provider"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
              },
              controller: t1,
            ),
            Row(
              children: [
                InkWell(onTap: () {
                  s1 = t1.text;
                  t1.text="";
                },
                  child: Container(
                    margin: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "AC",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(50)),
                  child: Text(
                    "()",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                InkWell(onTap: () {

                },
                  child: Container(
                    margin: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "%",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(onTap: () {
                    s1 = t1.text;
                    t1.text="";
                    sign = '/';
                  },
                    child: Container(
                      margin: EdgeInsets.all(5),
                      alignment: Alignment.center,
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        "/",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                InkWell(onTap: () {
                  t1.text += "7";
                },
                  child: Container(
                    margin: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "7",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                InkWell(onTap: () {
                  t1.text += "8";
                },
                  child: Container(
                    margin: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "8",
                       style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                InkWell(onTap: () {
                  t1.text += "9";
                },
                  child: Container(
                    margin: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "9",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(onTap: () {
                    s1 = t1.text;
                    t1.text="";
                    sign='*';
                  },
                    child: Container(
                      margin: EdgeInsets.all(5),
                      alignment: Alignment.center,
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        "*",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                InkWell(onTap: () {
                  t1.text += "4";
                },
                  child: Container(
                    margin: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "4",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                InkWell(onTap: () {
                  t1.text += "5";
                },
                  child: Container(
                    margin: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "5",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                InkWell(onTap: () {
                  t1.text += "6";
                },
                  child: Container(
                    margin: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "6",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(onTap: () {
                    s1=t1.text;
                    t1.text="";
                    sign='-';
                  },
                    child: Container(
                      margin: EdgeInsets.all(5),
                      alignment: Alignment.center,
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        "-",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                InkWell(onTap: () {
                  t1.text += "1";
                },
                  child: Container(
                    margin: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "1",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                InkWell(onTap: () {
                  t1.text += "2";
                },
                  child: Container(
                    margin: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "2",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                InkWell(onTap: () {
                  t1.text += "3";
                },
                  child: Container(
                    margin: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "3",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      s1=t1.text;
                      t1.text="";
                      sign='+';
                    },
                    child: Container(
                      margin: EdgeInsets.all(5),
                      alignment: Alignment.center,
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        "+",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                InkWell(onTap: () {
                  t1.text += "0";
                },
                  child: Container(
                    margin: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "0",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(50)),
                  child: Text(
                    ".",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                InkWell(onTap: () {
                  String ss = t1.text;
                  String val = ss.substring(0,ss.length-1);
                  t1.text = val;
                  if(t1.text=='')
                  {
                    t1.text='';
                  }
                },
                  child: Container(
                    margin: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "x",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(onTap: () {
                    s2=t1.text;
                    m.get_ans(s1, s2,sign);
                    t1.text = m.answer;
                    },
                    child: Container(
                      margin: EdgeInsets.all(5),
                      alignment: Alignment.center,
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.teal,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        "=",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
