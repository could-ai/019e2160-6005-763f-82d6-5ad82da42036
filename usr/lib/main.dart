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
Sân trường cấp 3 năm ấy không chỉ có nắng vàng và những cơn gió mát rượi, mà còn là nơi chứng kiến cơn bão lòng dữ dội nhất tuổi thanh xuân của Khánh và Ngọc.

Ngọc - lớp trưởng ưu tú, xinh đẹp và luôn là niềm tự hào của giáo viên. Khánh - nam sinh cá biệt ngồi bàn cuối, ánh mắt luôn sắc lạnh nhưng lại giấu một trái tim cuồng nhiệt. Giữa họ là một bí mật không ai hay biết: những buổi chiều muộn cùng nhau trốn học trên sân thượng, nơi Ngọc gỡ bỏ lớp mặt nạ hoàn hảo để tựa vai Khánh mà khóc vì áp lực gia đình.

Nhưng bí mật ấy đã bị xé toạc khi Phong - một nam sinh chuyển trường mang gia thế khủng - xuất hiện. Phong theo đuổi Ngọc một cách phô trương, khiến cả trường chú ý. Ngọc, vì sợ bố mẹ biết chuyện và muốn dập tắt mọi lời đồn thổi ác ý, đã chủ động tạo khoảng cách với Khánh. 

Đỉnh điểm của cơn bão là ngày cuốn sổ phác họa của Khánh bị ai đó cố tình lấy cắp và truyền tay nhau khắp lớp. Trong đó tràn ngập hình bóng Ngọc với những dòng ghi chú đầy si tình. Tiếng cười cợt, những ánh mắt chế giễu bủa vây Khánh. Khi Khánh nhìn về phía Ngọc, mong chờ một sự bảo vệ, thì cô lại run rẩy quay mặt đi, cắn chặt môi nói trước đám đông: "Tớ không liên quan, là cậu ấy tự ảo tưởng thôi."

Câu nói ấy như nhát dao đâm nát tự tôn của Khánh. Chiều hôm đó, Khánh lao vào đánh nhau thừa sống thiếu chết với Phong giữa sân trường chỉ vì nghe Phong buông lời xúc phạm Ngọc. Máu rơi, nước mắt hòa lẫn. Khánh nhận án đình chỉ học.

Ngày Khánh dọn đồ rời trường chuyển đi nơi khác, Ngọc chạy ráo riết dưới cơn mưa tầm tã tìm cậu ở bến xe buýt. Cô ôm chầm lấy lưng Khánh, khóc nức nở xin lỗi, gỡ bỏ mọi sự kiêu hãnh và lớp vỏ bọc hoàn hảo. Nhưng Khánh chỉ lặng lẽ gỡ tay cô ra, mỉm cười xót xa: "Lớp trưởng, cậu phải luôn giữ được nụ cười hoàn hảo ấy nhé. Đừng để ai thấy cậu khóc nữa."

Khánh bước lên chuyến xe cuối ngày, bỏ lại Ngọc gục ngã giữa màn mưa. Thanh xuân của họ là một bản nhạc đầy cao trào, rực rỡ nhưng vỡ vụn, để lại một vết sẹo chẳng thể nào phai.
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
