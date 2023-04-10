import 'package:social_academy/constants/routes.dart';
import 'package:social_academy/theme.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:social_academy/widgets/avatar.dart';
import 'dart:math';
import 'package:social_academy/widgets/map_item_widget.dart';
import 'package:social_academy/widgets/profiledraverwidget.dart';
import '../widgets/custom_image_view.dart';
import 'package:social_academy/widgets/popup_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      child: _Stories(),
      padding: EdgeInsets.all(8),
    );
  }
}

final imageList = AvatarListRandom();
final random = Random();

class _Stories extends StatelessWidget {
  const _Stories({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          SafeArea(
            child: Column(
              children: [
                Profiledraverwidget(
                  userNameText: "Dilara",
                  workText: "LEGO Türkiye'de Eğitimci",
                  eduText: "ODTÜ, İngilizce Öğretmenliği",
                  skillsText: "Çizim, Tasarım, Eğitim",
                  infoText:
                      "Merhaba ben Dilara. Uzun zamandır tasarımla ve resimle ilgileniyorum. Ankara'da yaşıyorum. Yeni şeyler öğrenmeyi seviyorum.",
                  avatarindex: 57,
                ),
                Profiledraverwidget(
                  userNameText: "Selin",
                  workText: "Kaller Akademi'de Dansçı",
                  eduText: "İTÜ, Güzel Sanatlar",
                  skillsText: "Spor, Dans, Flutter",
                  infoText:
                      "Merhaba ben Selin. Uzun zamandır dansla ve yazılımla ilgileniyorum.. Uzun zamandır dansla ve yazılımla ilgileniyorum.. Uzun zamandır dansla ve yazılımla ilgileniyorum.. Uzun zamandır . Uzun zamandır dansla ve yazılımla ilgileniyorum.. Uzun zamandır dansla ve yazılımla ilgileniyorum.. Uzun zamandır dansla ve yazılımla ilgileniyorum.. Uzun zamandır dansla ve yazılımla ilgileniyorum.. Uzun zamandır dansla ve yazılımla ilgileniyorum.. Uzun zamandır dansla ve yazılımla ilgileniyorum.dansla ve yazılımla ilgileniyorum.. Uzun zamandır dansla ve yazılımla ilgileniyorum. Flutterla uygulama geliştirmek için takım arkadaşları arıyorum.",
                  avatarindex: 28,
                ),
                Profiledraverwidget(
                  userNameText: "Çağatay",
                  workText: "Gerçek bir UI/UX designer",
                  eduText: "Harvard, Çevre Mühendisliği",
                  skillsText: "Çizim, Tasarım, Flutter",
                  infoText:
                      "Merhaba ben Çağatay. Uzun zamandır tasarımla ve flutterla ilgileniyorum. San Francisco'da yaşıyorum. Yeni şeyler öğrenmeyi seviyorum.",
                  avatarindex: 65,
                ),
                Profiledraverwidget(
                  userNameText: "Rabia",
                  workText: "TAI'de yazılımcı",
                  eduText: "ODTÜ, Yazılım Mühendisliği",
                  skillsText: "Yazılım, Flutter, Assambly",
                  infoText:
                      "Merhaba ben Rabia. Uzun zamandır tasarımla ve resimle ilgileniyorum. Ankara'da yaşıyorum. Yeni şeyler öğrenmeyi seviyorum.",
                  avatarindex: 12,
                ),
                Profiledraverwidget(
                  userNameText: "Yunus Emre",
                  workText: "Freelancer yazılımcı",
                  eduText: "İstanbul Üniversitesi Bilişim",
                  skillsText: "Yazılım, Flutter",
                  infoText:
                      "Merhaba ben Yunus Emre. Uzun zamandır tasarımla ve resimle ilgileniyorum. Ankara'da yaşıyorum. Yeni şeyler öğrenmeyi seviyorum.",
                  avatarindex: 81,
                ),
                Profiledraverwidget(
                  userNameText: "Mehmet",
                  workText: "Mahalle Dönercisi",
                  eduText: "Hayat Üniversitesi",
                  skillsText: "Dans, Özlü sözler, Aşk",
                  infoText:
                      "Merhaba ben Mehmet. Bağcılarda yaşıyorum. Tanışmak isterim.",
                  avatarindex: 1,
                ),
                Profiledraverwidget(
                  userNameText: "Fatma",
                  workText: "Teknosa'da CEO",
                  eduText: "ODTÜ, İşletme",
                  skillsText: "Para, Yönetim",
                  infoText:
                      "Merhaba ben Fatma. Uzun zamandır tasarımla ve resimle ilgileniyorum. Ankara'da yaşıyorum. Yeni şeyler öğrenmeyi seviyorum.",
                  avatarindex: 2,
                ),
                Profiledraverwidget(
                  userNameText: "Fatma",
                  workText: "Teknosa'da CEO",
                  eduText: "ODTÜ, İşletme",
                  skillsText: "Para, Yönetim",
                  infoText:
                      "Merhaba ben Fatma. Uzun zamandır tasarımla ve resimle ilgileniyorum. Ankara'da yaşıyorum. Yeni şeyler öğrenmeyi seviyorum.",
                  avatarindex: 13,
                ),
                Profiledraverwidget(
                  userNameText: "Fatma",
                  workText: "Teknosa'da CEO",
                  eduText: "ODTÜ, İşletme",
                  skillsText: "Para, Yönetim",
                  infoText:
                      "Merhaba ben Fatma. Uzun zamandır tasarımla ve resimle ilgileniyorum. Ankara'da yaşıyorum. Yeni şeyler öğrenmeyi seviyorum.",
                  avatarindex: 14,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
