import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List<String> imageTexts = [
      '팀장 서원진',
      '팀원 강지훈',
      '팀원 김도윤',
      '팀원 김태영',
      '팀원 오서령',
      '',
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Row(
            children: [
              SizedBox(width: 25),
              Text(
                '코딩 Air',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              Image.network(
                "https://emojigraph.org/media/apple/airplane_2708-fe0f.png",
                width: 28,
              ),
            ],
          ),
          leadingWidth: 150,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.person, color: Colors.black),
            ),
          ],
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                height: 20,
              ),
              Text(
                '팀 소개',
                style: TextStyle(fontSize: 35),
              ),
              Container(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  '안녕하세요. 저희는 코딩으로 날아오르자는 당찬 포부를 가진 팀 코딩 Air 입니다.\n'
                  '저희 팀의 개성은 MBTI 가 (E : 50% , I : 50%) 라는 특징을 가지고 있고,\n'
                  '놀때는 활발하게 잘 놀고 일할 때는 진중하며 의견을 내면 그 의견에 대한 피드백과 그 의견에 따른 결정을 잘 냅니다.\n'
                  //'저희는 공부도 중요하지만 취미생활도 중요하다고 생각하는 타입입니다.같이 화이팅해서 날아오르겠습니다.',
                  //'저희는 공부도 중요하지만 취미생활도 중요하다고 생각하는 타입입니다.같이 화이팅해서 날아오르겠습니다.'
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                height: 70,
              ),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 4,
                runSpacing: 4,
                children: List.generate(6, (index) {
                  return Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: MediaQuery.of(context).size.width * 0.3,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 1,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            "https://emojigraph.org/media/apple/airplane_2708-fe0f.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        imageTexts[index], // 각 사진에 대한 텍스트 설정
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
