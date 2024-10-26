import 'package:flutter/material.dart';

class tabs_UI extends StatefulWidget {
  const tabs_UI({super.key});

  @override
  State<tabs_UI> createState() => _tabs_UIState();
}

class _tabs_UIState extends State<tabs_UI> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Center(child: Text("Nội dung Trang chủ")),
                Center(child: Text("Nội dung Yêu thích")),
                Center(child: Text("Nội dung Hồ sơ")),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            child: TabBar(
              controller: _tabController,
              tabs: [
                Tab(icon: Icon(Icons.home), text: "Trang chủ"),
                Tab(icon: Icon(Icons.favorite), text: "Yêu thích"),
                Tab(icon: Icon(Icons.person), text: "Hồ sơ"),
              ],
              indicatorColor: Colors.transparent, // Ẩn chỉ báo dưới tab
              labelColor: Colors.blue, // Màu chữ khi tab được chọn
              unselectedLabelColor: Colors.black, // Màu chữ khi tab không được chọn
            ),
          ),
        ],
      ),
    );
  }
}
