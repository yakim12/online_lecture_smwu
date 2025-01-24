import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:online_lecture_smwu/screen/network/member_detail_screen.dart';

import 'member_model.dart';

class MemberListScreen extends StatefulWidget {
  const MemberListScreen({super.key});

  @override
  State<MemberListScreen> createState() => _MemberListScreenState();
}

class _MemberListScreenState extends State<MemberListScreen> {
  Dio dio = Dio(BaseOptions(baseUrl: "https://7210-110-8-126-227.ngrok-free.app"));
  bool loading = true;
  List<MemberModel> dataList = [];

  /// 1. 멤버 목록 호출
  /// 1-1. 멤버 목록 호출할 때 loading UI 표출
  /// 2. 멤버 목록 ListView로 출력(데이터 파싱)
  /// 3. 멤버 목록 클릭 가능하도록 (화면 이동)
  /// 10 ~ 15분
  @override
  void initState() {
    getData();
    super.initState();
  }

  Future<void> getData() async {
    Response response = await dio.get("/api/v1/member/all");
    await Future.delayed(const Duration(seconds: 1));

    /// as : 캐스팅
    /// Iterable : 반복적인 형태의 데이터
    /// element : {"email": "jinhan40@naver.com", "description": ""}
    /// value["email"] ?? "" : ?? 앞의 값이 null이라면 뒤의 값을 입력하세요.
    // dataList = (response.data as Iterable).map(
    //   (element) {
    //     Map<String, String> value = element as Map<String, String>;
    //     return MemberModel(
    //       value["email"] ?? "",
    //       value["description"] ?? "",
    //     );
    //   },
    // ).toList();

    // Unhandled Exception: type 'List<dynamic>' is not a subtype of type 'List<MemberModel>' 오류 발생
    dataList = response.data
        .map<MemberModel>(
          (e) => MemberModel(
        e["email"] ?? "",
        e["description"] ?? "",
      ),
    )
        .toList();

    loading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MemberList"),
      ),
      body: loading ? const Center(child: CircularProgressIndicator()) : memberListView(),
    );
  }

  /// 멤버 목록 Widget을 추가하세요
  /// 1. ListView
  /// 2. SinglechildScrollView

  Widget memberListView() {
    return ListView.builder(
      itemCount: dataList.length,
      padding: const EdgeInsets.symmetric(vertical: 12),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return MemberDetailScreen(
                  email: dataList[index].email,
                  dio: dio,
                );
              },
            )).then(
                  (value) {
                if (value != null && value is bool && value) {
                  loading = true;
                  setState(() {});
                  getData();
                }
              },
            );
          },
          child: item(dataList[index]),
        );
      },
    );
  }

  Widget memberSingle() {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...List.generate(
            dataList.length,
                (index) {
              return item(dataList[index]);
            },
          )
        ],
      ),
    );
  }

  Widget item(MemberModel member) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "이메일 : ${member.email}",
            style: TextStyle(fontSize: 15),
          ),
          Text(
            "설명 : ${member.description}",
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}