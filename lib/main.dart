import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget _stat(String number, String label) {
    return Column(
      children: [
        Text(
          number,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(label, style: const TextStyle(fontSize: 12, color: Colors.grey)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    const String accountId = 'tm_pnj';
    const String posts = '67';
    const String followers = '6.7M';
    const String following = '677K';
    const String studentName = 'ณัฐวุฒิ จำปางาม';
    const String caption1 = 'นักศึกษาธรรมดา';
    const String caption2 = 'อยากเข้าใจโค้ดง่ายๆ ทำไงครับ??';
    const String galleryImage = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgz81KWGYHJ7THefmJL3FFEt1VLLcaYROLvy56_arBBVMmxMkhVjQYNJXb&s=10 ';
     const String galleryImage1 = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNK3stnuYqsOfj6Hr5DFz8nj4_z1KBHwbr__7arqTyOg&s=10';
     const String galleryImage2 = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoE0HniFl2mIugNsN16-1qoQZayKjNfmDJNzrsJWenVQ&s=10';

    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: false,
        title: const Text(
          accountId,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/6931820185695.jpg'),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _stat(posts, 'โพสต์'),
                        _stat(followers, 'ผู้ติดตาม'),
                        _stat(following, 'กำลังติดตาม'),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    studentName,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(height: 4),
                  Text(caption1, style: TextStyle(fontSize: 12)),
                  Text(caption2, style: TextStyle(fontSize: 12)),
                ],
              ),

              const SizedBox(height: 12),

              Row(
                children: [
                  Expanded(
                    child: FilledButton(
                      onPressed: () {},
                      style: FilledButton.styleFrom(
                        backgroundColor: const Color(0xFF4A90E2),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      child: const Text('ติดตาม'),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.deepPurple,
                        side: const BorderSide(color: Colors.grey),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      child: const Text('ข้อความ'),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 12),

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.grid_on, size: 28, color: Colors.black87),
                  Icon(Icons.person_pin, size: 28, color: Colors.grey),
                ],
              ),

              const SizedBox(height: 8),

              GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
                children: [
                  Image.network(galleryImage, fit: BoxFit.cover),
                  Image.network(galleryImage1, fit: BoxFit.cover),
                  Image.network(galleryImage2, fit: BoxFit.cover),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}