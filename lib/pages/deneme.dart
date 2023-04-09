import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:getwidget/getwidget.dart';
import 'package:sizer/sizer.dart';
import 'package:social_academy/widgets/popup_widget.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({super.key});

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(32),
          child: ElevatedButton(
            child: Text("popup"),
            onPressed: () {
              openDialog();
            },
          ),
        ),
        Container(
          padding: EdgeInsets.all(32),
          child: ElevatedButton(
            child: Text("popup"),
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  Future openDialog() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          content: Container(
            width: 80.w,
            height: 80.h,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 16,
                  ),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Image(
                      image: AssetImage("assets/avatar (4).png"),
                      height: 10.h,
                      width: 10.h,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 16,
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Çağatay ATAY",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16, left: 16),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.work,
                            color: Colors.white,
                            size: 32,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: const Text('UI Designer'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16, left: 16),
                  child: Row(
                    children: [
                      Icon(
                        Icons.account_balance,
                        color: Colors.white,
                        size: 32,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: const Text('Görsel İletişim Tasarımı'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16, left: 16),
                  child: Row(
                    children: [
                      Icon(
                        Icons.auto_awesome,
                        color: Colors.white,
                        size: 32,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: const Text('Flutter'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16, left: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.info,
                        color: Colors.white,
                        size: 32,
                      ),
                      Container(
                        constraints:
                            BoxConstraints(maxWidth: 200, maxHeight: 50.h),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: SingleChildScrollView(
                            child: const Text(
                                'Merhaba, ben Çağatay. Görsel iletişim tasarımına olan ilgim, beni UI Designer olarak çalışmaya yönlendirdi. Hem görsel tasarımı öğrenme hem de uygulama geliştirme alanında kendimi geliştirmek amacıyla, Flutter ve Adobe programlarını kullanıyorum. Özellikle mobil uygulama tasarımı konusunda uzmanlaşmaya çalışıyorum. Amacım, yaratıcı ve işlevsel tasarımlar oluşturarak kullanıcı deneyimini en üst düzeye çıkarmak ve mesleki hedeflerime ulaşmak.'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
