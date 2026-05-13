import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Câu Chuyện Cấp 3',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const StoryScreen(),
      },
    );
  }
}

class StoryScreen extends StatelessWidget {
  const StoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const String story = '''
Mùa thu năm ấy, sân trường cấp 3 ngập tràn lá vàng rơi. Khánh, một nam sinh ít nói với niềm đam mê nhiếp ảnh mãnh liệt, luôn mang theo chiếc máy ảnh cơ cũ kỹ mọi lúc mọi nơi. Ở chiều ngược lại, Ngọc là cô lớp trưởng năng động, tươi sáng như ánh mặt trời, luôn thu hút mọi ánh nhìn bằng nụ cười rạng rỡ.

Họ học cùng lớp nhưng lại như hai đường thẳng song song, cho đến một buổi chiều ở phòng sinh hoạt câu lạc bộ. Ngọc đang đau đầu tìm người chụp ảnh cho sự kiện sắp tới của trường, còn Khánh thì đang lặng lẽ sắp xếp lại những bức hình cậu vừa rửa.

"Khánh ơi, cậu giúp tớ chụp ảnh cho lễ hội mùa thu được không?" - Ngọc cất tiếng, giọng nói trong trẻo phá vỡ sự im lặng của căn phòng.

Khánh ngước lên, bắt gặp ánh mắt đầy hy vọng của cô bạn. Cậu gật đầu nhẹ. Đó là sự khởi đầu cho một tình bạn đẹp đẽ.

Những ngày sau đó, người ta thường thấy một cậu bạn cao gầy, trầm tính đi theo sau một cô gái lanh lợi. Ngọc kể cho Khánh nghe về những ước mơ rực rỡ, còn Khánh qua lăng kính máy ảnh, lưu giữ lại mọi khoảnh khắc thanh xuân của Ngọc. 

Dưới gốc phượng già, trên hành lang ngập nắng, hay những buổi chiều muộn học bài trong thư viện, bóng dáng hai người dần trở nên không thể tách rời. Họ cùng nhau trải qua những bài kiểm tra khó nhằn, những lần bị thầy cô nhắc nhở, và cả những rung động tinh khôi của tuổi mới lớn.

Năm tháng cấp 3 trôi qua nhanh như một cái chớp mắt, để lại trong tim Khánh và Ngọc những kỷ niệm vô giá, khắc sâu thành bức tranh thanh xuân rực rỡ nhất mà chiếc máy ảnh của Khánh từng ghi lại.
''';

    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: const Text('Thanh Xuân Của Chúng Ta', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 1,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Khánh & Ngọc',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: Colors.blue[800],
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 8),
              Text(
                'Một câu chuyện thanh xuân vườn trường',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.grey[600],
                      fontStyle: FontStyle.italic,
                    ),
              ),
              const SizedBox(height: 24),
              Text(
                story,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      height: 1.8,
                      color: Colors.black87,
                      fontSize: 16,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
