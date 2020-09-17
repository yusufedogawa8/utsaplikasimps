import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Kontak',
        initialRoute: '/',
        routes: {
          '/': (context) => Screen(),
          '/dzikirpagi': (context) => DzikirPagi(),
          '/dzikirpetang': (context) => DzikirPetang(),
          '/waktusholat': (context) => WaktuSholat(),
        });
  }
}

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kontak',
      home: Scaffold(
          backgroundColor: Colors.deepPurpleAccent,
          appBar: AppBar(
            backgroundColor: Colors.deepPurpleAccent,
            title: Text("Mesin Pencari Sunnah"),
            leading: Icon(Icons.view_headline),
            elevation: 0,
          ),
          body: ListView(children: [
            Column(children: [
              // JUDUL LOGO
              Container(
                  padding: EdgeInsets.all(55.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                  ),
                  child: Column(children: [
                    Image.network(
                        'https://lh3.googleusercontent.com/ZPUHr5OQmfgAg0jnHIF7wxEoxd-6zWTClOP3XWBQsaoLxztLt1TO_yM27hvqDyKCso0',
                        height: 140)
                  ])),
              // END LOGO
              // SEARCH BAR
              Container(
                  margin: EdgeInsets.only(left: 25, right: 25),
                  height: 55,
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                      ),
                      hintText: 'Apa yang antum cari?',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.white),
                    ),
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  )),
              // END SEARCH
              // Text 1
              Container(padding: EdgeInsets.all(8)),
              Text("Lanjutkan membaca Al-Qur'an?",
                  style: TextStyle(fontSize: 12, color: Colors.white)),
              // PILIHAN KONTEN
              Container(
                  padding: EdgeInsets.all(10),
                  child: Column(children: [
                    Container(padding: EdgeInsets.all(8)),
                    // KONTEN ATAS
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // QURAN
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 110,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.all(10),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.network(
                                        "https://image.flaticon.com/icons/png/128/84/84646.png"),
                                    Text("Baca Qur'an",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center)
                                  ]),
                            ),
                          ),
                          // END  QURAN
                          // RUANG CHAT
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 110,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.all(10),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.network(
                                        "https://image.flaticon.com/icons/png/128/3221/3221863.png"),
                                    Text("Ruang Chat",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center)
                                  ]),
                            ),
                          ),
                          // END CHAT
                          // INFO KAJIAN
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 110,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.all(10),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.network(
                                        "https://image.flaticon.com/icons/png/128/42/42446.png"),
                                    Text("Info Kajian",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center)
                                  ]),
                            ),
                          ),
                          // END KAJIAN
                          // WAKTU SHALAT
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/waktusholat');
                            },
                            child: Container(
                              height: 110,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.all(10),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.network(
                                        "https://image.flaticon.com/icons/png/128/2421/2421935.png"),
                                    Text("Waktu Shalat",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center)
                                  ]),
                            ),
                          ),
                          // END SHALAT
                        ]),
                    // END KONTEN ATAS
                    Container(padding: EdgeInsets.all(8)),
                    // KONTEN BAWAH
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // QURAN
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/dzikirpagi');
                            },
                            child: Container(
                              height: 110,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.all(10),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.network(
                                        "https://image.flaticon.com/icons/png/128/3313/3313896.png"),
                                    Text("Dzikir Pagi",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center)
                                  ]),
                            ),
                          ),
                          // END  QURAN
                          // RUANG CHAT
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/dzikirpetang');
                            },
                            child: Container(
                              height: 110,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.all(10),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.network(
                                        "https://image.flaticon.com/icons/png/128/17/17768.png"),
                                    Text("Dzikir Petang",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center)
                                  ]),
                            ),
                          ),
                          // END CHAT
                          // INFO KAJIAN
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 110,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.all(10),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.network(
                                        "https://image.flaticon.com/icons/png/128/89/89018.png"),
                                    Text("Masjid Terdekat",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center)
                                  ]),
                            ),
                          ),
                          // END KAJIAN
                          // WAKTU SHALAT
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 110,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.all(10),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.network(
                                        "https://freeiconshop.com/wp-content/uploads/edd/document-search-solid.png"),
                                    Text("Histori Pencarian",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center)
                                  ]),
                            ),
                          ),
                          // END SHALAT
                        ]),
                    // END KONTEN BAWAH
                  ])),
              // END KONTEN

              // ARTIKEL START

              // ARTIKEL 1
              Container(padding: EdgeInsets.all(5)),
              Text("Artikel Instan untuk Antum",
                  style: TextStyle(fontSize: 12, color: Colors.white)),
              Container(
                  margin:
                      EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 10),
                  padding: EdgeInsets.only(right: 30, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.white,
                  ),
                  child: Column(children: [
                    ListTile(
                      leading: Image(
                          image: NetworkImage(
                              "https://ypiaflash.com/muslimah.or.id/wp-content/uploads/2014/01/cara-shalat-810x500.jpg")),
                      title: Text(
                          "Tata Cara Shalat Jenazah (Menyalatkan Mayit)",
                          style: TextStyle(fontWeight: FontWeight.w800)),
                      subtitle: Text("Source: muslimah.or.id"),
                      dense: true,
                      onTap: () {
                        // do something
                      },
                      onLongPress: () {
                        // do something else
                      },
                    ),
                  ])),
              // ARTIKEL 2
              Container(
                  margin: EdgeInsets.only(left: 30, right: 30, bottom: 10),
                  padding: EdgeInsets.only(right: 30, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.white,
                  ),
                  child: Column(children: [
                    ListTile(
                      leading: Image(
                          image: NetworkImage(
                              "https://kisahmuslim.com/wp-content/uploads/2016/06/Keadaan-Saat-Turunnya-Wahyu.jpg")),
                      title: Text("Keadaan Saat Turunnya Wahyu Rasulullah",
                          style: TextStyle(fontWeight: FontWeight.w800)),
                      subtitle: Text("Source: kisahmuslim.com"),
                      dense: true,
                      onTap: () {
                        // do something
                      },
                      onLongPress: () {
                        // do something else
                      },
                    ),
                  ])),
              // ARTIKEL 3
              Container(
                  margin: EdgeInsets.only(left: 30, right: 30, bottom: 20),
                  padding: EdgeInsets.only(right: 30, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.white,
                  ),
                  child: Column(children: [
                    ListTile(
                      leading: Image(
                          image: NetworkImage(
                              "https://ypiaflash.com/muslim.or.id/wp-content/uploads/2017/12/Hikmah-Al-Quran-diturunkan-secara-Bertahap-bagian-1-810x500.png")),
                      title: Text("Hikmah Al-Qur'an diturunkan secara Bertahap",
                          style: TextStyle(fontWeight: FontWeight.w800)),
                      subtitle: Text("Source: muslim.or.id"),
                      dense: true,
                      onTap: () {
                        // do something
                      },
                      onLongPress: () {
                        // do something else
                      },
                    ),
                  ])),
              // END ARTIKEL
            ]),
          ])),
    );
  }
}

class DzikirPagi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        appBar: AppBar(
          title: Text('Dzikir Pagi'),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: ListView(children: [
          Center(
              child: Column(children: [
            // BACAAN 1
            Container(padding: EdgeInsets.only(top: 20)),
            Container(
                padding: EdgeInsets.all(5),
                child: Text("Dibaca 1x",
                    style: TextStyle(fontSize: 10, color: Colors.white)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepPurple,
                )),
            Container(
              padding: EdgeInsets.only(top: 15, bottom: 10),
              child: Text("أَعُوذُ بِاللَّهِ مِنَ الشَّيْطَانِ الرَّجِيمِ",
                  style: TextStyle(fontSize: 25, color: Colors.white)),
            ),
            Container(
                padding: EdgeInsets.all(10),
                child: Column(children: [
                  Text("Artinya:", style: TextStyle(color: Colors.white)),
                  Container(padding: EdgeInsets.all(7)),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                          '"Aku berlindung kepada Allah dari godaan syaitan yang terkutuk."',
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: Colors.white))),
                ])),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: 1000.0,
                color: Colors.white,
              ),
            ),
            // END BACAAN 1
            // BACAAN 2
            Container(padding: EdgeInsets.only(top: 20)),
            Container(
                padding: EdgeInsets.all(5),
                child: Text("Dibaca 1x",
                    style: TextStyle(fontSize: 10, color: Colors.white)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepPurple,
                )),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                  "اللَّهُ لاَ إِلَهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ، لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ، لَهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الْأَرْضِ، مَنْ ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ، يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ، وَلَا يُحِيطُونَ بِشَيْءٍ مِنْ عِلْمِهِ إِلاَّ بِمَا شَاءَ، وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالْأَرْضَ، وَلَا يَئُودُهُ حِفْظُهُمَا، وَهُوَ الْعَلِيُّ الْعَظِيمُ",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.end),
            ),
            Container(
                padding: EdgeInsets.all(20),
                child: Column(children: [
                  Text("Artinya:", style: TextStyle(color: Colors.white)),
                  Container(padding: EdgeInsets.all(7)),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                          '“Allah, tidak ada ilah (yang berhak disembah) melainkan Dia, yang hidup kekal lagi terus menerus mengurus (makhluk-Nya). Dia tidak mengantuk dan tidak tidur. Kepunyaan-Nya apa yang di langit dan di bumi. Tiada yang dapat memberi syafa’at di sisi-Nya tanpa seizin-Nya. Dia mengetahui apa-apa yang di hadapan mereka dan di belakang mereka. Mereka tidak mengetahui apa-apa dari ilmu Allah melainkan apa yang dikehendaki-Nya. Kursi Allah meliputi langit dan bumi. Dia tidak merasa berat memelihara keduanya. Dan Dia Maha Tinggi lagi Maha besar.” (QS. Al Baqarah: 255)',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.white),
                          textAlign: TextAlign.justify)),
                ])),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: 1000.0,
                color: Colors.white,
              ),
            ),
            // END BACAAN 2
            // START BACAAN 3
            // AL-IKHLAS
            Container(
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Membaca surat Al-Ikhlas",
                          style: TextStyle(color: Colors.white)),
                      Container(
                          padding: EdgeInsets.all(5),
                          child: Text("Dibaca 3x",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white)),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.deepPurple,
                          )),
                    ])),
            Container(padding: EdgeInsets.only(top: 10)),
            Container(
              padding: EdgeInsets.only(top: 15, bottom: 10),
              child: Text("بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ",
                  style: TextStyle(fontSize: 25, color: Colors.white)),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                  "قُلْ هُوَ اللَّهُ أَحَدٌ (1) اللَّهُ الصَّمَدُ (2) لَمْ يَلِدْ وَلَمْ يُولَدْ (3) وَلَمْ يَكُن لَّهُ كُفُوًا أَحَدٌ (4)",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.end),
            ),
            Container(
                padding: EdgeInsets.all(10),
                child: Column(children: [
                  Text("Artinya:", style: TextStyle(color: Colors.white)),
                  Container(padding: EdgeInsets.all(7)),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                          '“Dengan menyebut nama Allah Yang Maha Pengasih lagi Maha Penyayang. Katakanlah: Dialah Allah, Yang Maha Esa. Allah adalah ilah yang bergantung kepada-Nya segala urusan. Dia tidak beranak dan tiada pula diperanakkan, dan tidak ada seorang pun yang setara dengan Dia.” (QS. Al Ikhlas: 1-4)',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.white),
                          textAlign: TextAlign.justify)),
                ])),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: 1000.0,
                color: Colors.white,
              ),
            ),
            // END AL-IKHLAS
            // AL-FALAQ
            Container(
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Membaca surat Al-Falaq",
                          style: TextStyle(color: Colors.white)),
                      Container(
                          padding: EdgeInsets.all(5),
                          child: Text("Dibaca 3x",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white)),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.deepPurple,
                          )),
                    ])),
            Container(padding: EdgeInsets.only(top: 10)),
            Container(
              padding: EdgeInsets.only(top: 15, bottom: 10),
              child: Text("بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ",
                  style: TextStyle(fontSize: 25, color: Colors.white)),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                  "قُلْ أَعُوذُ بِرَبِّ الْفَلَقِ (1) مِن شَرِّ مَا خَلَقَ (2) وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ (3) وَمِن شَرِّ النَّفَّاثَاتِ فِي الْعُقَدِ (4) وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ (5)",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.end),
            ),
            Container(
                padding: EdgeInsets.all(10),
                child: Column(children: [
                  Text("Artinya:", style: TextStyle(color: Colors.white)),
                  Container(padding: EdgeInsets.all(7)),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                          '“Dengan menyebut nama Allah Yang Maha Pengasih lagi Maha Penyayang. Katakanlah: Dialah Allah, Yang Maha Esa. Allah adalah ilah yang bergantung kepada-Nya segala urusan. Dia tidak beranak dan tiada pula diperanakkan, dan tidak ada seorang pun yang setara dengan Dia.” (QS. Al Ikhlas: 1-4)',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.white),
                          textAlign: TextAlign.justify)),
                ])),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: 1000.0,
                color: Colors.white,
              ),
            ),
            // END AL-FALAQ
            // AN-NAAS
            Container(
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Membaca surat An-Naas",
                          style: TextStyle(color: Colors.white)),
                      Container(
                          padding: EdgeInsets.all(5),
                          child: Text("Dibaca 3x",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white)),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.deepPurple,
                          )),
                    ])),
            Container(padding: EdgeInsets.only(top: 10)),
            Container(
              padding: EdgeInsets.only(top: 15, bottom: 10),
              child: Text("بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ",
                  style: TextStyle(fontSize: 25, color: Colors.white)),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                  "قُلْ أَعُوذُ بِرَبِّ النَّاسِ (1) مَلِكِ النَّاسِ (2) إِلَهِ النَّاسِ (3) مِن شَرِّ الْوَسْوَاسِ الْخَنَّاسِ (4) الَّذِي يُوَسْوِسُ فِي صُدُورِ النَّاسِ (5) مِنَ الْجِنَّةِ وَ النَّاسِ (6)",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.end),
            ),
            Container(
                padding: EdgeInsets.all(10),
                child: Column(children: [
                  Text("Artinya:", style: TextStyle(color: Colors.white)),
                  Container(padding: EdgeInsets.all(7)),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                          '“Dengan menyebut nama Allah Yang Maha Pengasih lagi Maha Penyayang. Katakanlah: Dialah Allah, Yang Maha Esa. Allah adalah ilah yang bergantung kepada-Nya segala urusan. Dia tidak beranak dan tiada pula diperanakkan, dan tidak ada seorang pun yang setara dengan Dia.” (QS. Al Ikhlas: 1-4)',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.white),
                          textAlign: TextAlign.justify)),
                ])),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: 1000.0,
                color: Colors.white,
              ),
            ),
            // END AN-NAAS
            // END BACAAN 3
            // BACAAN 4
            Container(padding: EdgeInsets.only(top: 20)),
            Container(
                padding: EdgeInsets.all(5),
                child: Text("Dibaca 1x",
                    style: TextStyle(fontSize: 10, color: Colors.white)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepPurple,
                )),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                  'أَصْبَحْنَا وَأَصْبَحَ الْمُلْكُ لِلَّهِ، وَالْحَمْدُ لِلَّهِ، لاَ إِلَـهَ إِلاَّ اللهُ وَحْدَهُ لاَ شَرِيْكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيْرُ. رَبِّ أَسْأَلُكَ خَيْرَ مَا فِيْ هَذَا الْيَوْمِ وَخَيْرَ مَا بَعْدَهُ، وَأَعُوْذُ بِكَ مِنْ شَرِّ مَا فِيْ هَذَا الْيَوْمِ وَشَرِّ مَا بَعْدَهُ، رَبِّ أَعُوْذُ بِكَ مِنَ الْكَسَلِ وَسُوْءِ الْكِبَرِ، رَبِّ أَعُوْذُ بِكَ مِنْ عَذَابٍ فِي النَّارِ وَعَذَابٍ فِي الْقَبْرِ',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.end),
            ),
            Container(
                padding: EdgeInsets.all(20),
                child: Column(children: [
                  Text("Artinya:", style: TextStyle(color: Colors.white)),
                  Container(padding: EdgeInsets.all(7)),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                          '"Kami telah memasuki waktu pagi dan kerajaan hanya milik Allah, segala puji bagi Allah. Tidak ada ilah (yang berhak disembah) kecuali Allah semata, tiada sekutu bagi-Nya. Milik Allah kerajaan dan bagi-Nya pujian. Dia-lah Yang Mahakuasa atas segala sesuatu. Wahai Rabbku, aku mohon kepada-Mu kebaikan di hari ini dan kebaikan sesudahnya. Aku berlindung kepada-Mu dari kejahatan hari ini dan kejahatan sesudahnya. Wahai Rabbku, aku berlindung kepada-Mu dari kemalasan dan kejelekan di hari tua. Wahai Rabbku, aku berlindung kepada-Mu dari siksaan di neraka dan siksaan di alam kubur."',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.white),
                          textAlign: TextAlign.justify)),
                ])),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: 1000.0,
                color: Colors.white,
              ),
            ),
            // END BACAAN 4
            // BACAAN 5
            Container(padding: EdgeInsets.only(top: 20)),
            Container(
                padding: EdgeInsets.all(5),
                child: Text("Dibaca 1x",
                    style: TextStyle(fontSize: 10, color: Colors.white)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepPurple,
                )),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                  'اَللَّهُمَّ بِكَ أَصْبَحْنَا، وَبِكَ أَمْسَيْنَا، وَبِكَ نَحْيَا، وَبِكَ نَمُوْتُ وَإِلَيْكَ النُّشُوْرُ',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.center),
            ),
            Container(
                padding: EdgeInsets.all(20),
                child: Column(children: [
                  Text("Artinya:", style: TextStyle(color: Colors.white)),
                  Container(padding: EdgeInsets.all(7)),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                          '“Ya Allah, dengan rahmat dan pertolongan-Mu kami memasuki waktu pagi, dan dengan rahmat dan pertolongan-Mu kami memasuki waktu petang. Dengan rahmat dan pertolongan-Mu kami hidup dan dengan kehendak-Mu kami mati. Dan kepada-Mu kebangkitan (bagi semua makhluk).”',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.white),
                          textAlign: TextAlign.justify)),
                ])),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: 1000.0,
                color: Colors.white,
              ),
            ),
            // END BACAAN 5
            // BACAAN TAMBAHAN
            Container(padding: EdgeInsets.only(top: 20)),
            Container(
                padding: EdgeInsets.all(5),
                child: Text("Dibaca 1x",
                    style: TextStyle(fontSize: 10, color: Colors.white)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepPurple,
                )),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                  'أَصْبَحْنَا عَلَى فِطْرَةِ اْلإِسْلاَمِ وَعَلَى كَلِمَةِ اْلإِخْلاَصِ، وَعَلَى دِيْنِ نَبِيِّنَا مُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ، وَعَلَى مِلَّةِ أَبِيْنَا إِبْرَاهِيْمَ، حَنِيْفًا مُسْلِمًا وَمَا كَانَ مِنَ الْمُشْرِكِيْنَ.',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.center),
            ),
            Container(
                padding: EdgeInsets.all(20),
                child: Column(children: [
                  Text("Artinya:", style: TextStyle(color: Colors.white)),
                  Container(padding: EdgeInsets.all(7)),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                          '“Di waktu pagi kami memegang agama Islam, kalimat ikhlas, agama Nabi kita Muhammad, dan agama ayah kami Ibrahim, yang berdiri di atas jalan yang lurus, muslim dan tidak tergolong orang-orang musyrik.”',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.white),
                          textAlign: TextAlign.justify)),
                ])),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: 1000.0,
                color: Colors.white,
              ),
            ),
            // END BACAAN TAMBAHAN
            // BACAAN 6
            Container(padding: EdgeInsets.only(top: 20)),
            Container(
                padding: EdgeInsets.all(5),
                child: Text("Dibaca 1x",
                    style: TextStyle(fontSize: 10, color: Colors.white)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepPurple,
                )),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                  'اَللَّهُمَّ أَنْتَ رَبِّيْ لاَ إِلَـهَ إِلاَّ أَنْتَ، خَلَقْتَنِيْ وَأَنَا عَبْدُكَ، وَأَنَا عَلَى عَهْدِكَ وَوَعْدِكَ مَا اسْتَطَعْتُ، أَعُوْذُ بِكَ مِنْ شَرِّ مَا صَنَعْتُ، أَبُوْءُ لَكَ بِنِعْمَتِكَ عَلَيَّ، وَأَبُوْءُ بِذَنْبِيْ فَاغْفِرْ لِيْ فَإِنَّهُ لاَ يَغْفِرُ الذُّنُوْبَ إِلاَّ أَنْتَ',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.center),
            ),
            Container(
                padding: EdgeInsets.all(20),
                child: Column(children: [
                  Text("Artinya:", style: TextStyle(color: Colors.white)),
                  Container(padding: EdgeInsets.all(7)),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                          '“Ya Allah, Engkau adalah Rabbku, tidak ada ilah yang berhak disembah kecuali Engkau, Engkaulah yang menciptakanku. Aku adalah hamba-Mu. Aku akan setia pada perjanjianku pada-Mu (yaitu aku akan mentauhidkan-Mu) semampuku dan aku yakin akan janji-Mu (berupa surga untukku). Aku berlindung kepada-Mu dari kejelekan yang kuperbuat. Aku mengakui nikmat-Mu kepadaku dan aku mengakui dosaku. Oleh karena itu, ampunilah aku. Sesungguhnya tiada yang mengampuni dosa kecuali Engkau.”',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.white),
                          textAlign: TextAlign.justify)),
                ])),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: 1000.0,
                color: Colors.white,
              ),
            ),
            //END BACAAN 6
            // BACAAN 7
            Container(padding: EdgeInsets.only(top: 20)),
            Container(
                padding: EdgeInsets.all(5),
                child: Text("Dibaca 3x",
                    style: TextStyle(fontSize: 10, color: Colors.white)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepPurple,
                )),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                  'اَللَّهُمَّ عَافِنِيْ فِيْ بَدَنِيْ، اَللَّهُمَّ عَافِنِيْ فِيْ سَمْعِيْ، اَللَّهُمَّ عَافِنِيْ فِيْ بَصَرِيْ، لاَ إِلَـهَ إِلاَّ أَنْتَ. اَللَّهُمَّ إِنِّي أَعُوْذُ بِكَ مِنَ الْكُفْرِ وَالْفَقْرِ، وَأَعُوْذُ بِكَ مِنْ عَذَابِ الْقَبْرِ، لاَ إِلَـهَ إِلاَّ أَنْتَ.',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.center),
            ),
            Container(
                padding: EdgeInsets.all(20),
                child: Column(children: [
                  Text("Artinya:", style: TextStyle(color: Colors.white)),
                  Container(padding: EdgeInsets.all(7)),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                          '“Ya Allah, selamatkan tubuhku. Ya Allah, selamatkan pendengaranku. Ya Allah, selamatkan penglihatanku, tidak ada Tuhan (yang berhak disembah) kecuali Engkau. Ya Allah, sesungguhnya aku berlindung kepada-Mu dari kekufuran dan kefakiran. Aku berlindung kepada-Mu dari siksa kubur, tidak ada Tuhan (yang berhak disembah) kecuali Engkau.”',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.white),
                          textAlign: TextAlign.justify)),
                ])),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: 1000.0,
                color: Colors.white,
              ),
            ),
            // END BACAAN 7
            // BACAAN 8
            Container(padding: EdgeInsets.only(top: 20)),
            Container(
                padding: EdgeInsets.all(5),
                child: Text("Dibaca 1x",
                    style: TextStyle(fontSize: 10, color: Colors.white)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepPurple,
                )),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                  'اَللَّهُمَّ إِنِّيْ أَسْأَلُكَ الْعَفْوَ وَالْعَافِيَةَ فِي الدُّنْيَا وَاْلآخِرَةِ، اَللَّهُمَّ إِنِّيْ أَسْأَلُكَ الْعَفْوَ وَالْعَافِيَةَ فِي دِيْنِيْ وَدُنْيَايَ وَأَهْلِيْ وَمَالِيْ. اَللَّهُمَّ اسْتُرْ عَوْرَاتِيْ وَآمِنْ رَوْعَاتِيْ اَللَّهُمَّ احْفَظْنِيْ مِنْ بَيْنِ يَدَيَّ، وَمِنْ خَلْفِيْ، وَعَنْ يَمِيْنِيْ وَعَنْ شِمَالِيْ، وَمِنْ فَوْقِيْ، وَأَعُوْذُ بِعَظَمَتِكَ أَنْ أُغْتَالَ مِنْ تَحْتِيْ.',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.center),
            ),
            Container(
                padding: EdgeInsets.all(20),
                child: Column(children: [
                  Text("Artinya:", style: TextStyle(color: Colors.white)),
                  Container(padding: EdgeInsets.all(7)),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                          '“Ya Allah, sesungguhnya aku memohon kebajikan dan keselamatan di dunia dan akhirat. Ya Allah, sesungguhnya aku memohon kebajikan dan keselamatan dalam agama, dunia, keluarga dan hartaku. Ya Allah, tutupilah auratku (aib dan sesuatu yang tidak layak dilihat orang) dan tenteramkanlah aku dari rasa takut. Ya Allah, Peliharalah aku dari depan, belakang, kanan, kiri dan atasku. Aku berlindung dengan kebesaran-Mu, agar aku tidak disambar dari bawahku.” (HR. Abu Dawud dan Ibnu Majah, Shahih Ibnu Majah 2/332)',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.white),
                          textAlign: TextAlign.justify)),
                ])),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: 1000.0,
                color: Colors.white,
              ),
            ),
            // END BACAAN 8
            // BACAAN 9
            Container(padding: EdgeInsets.only(top: 20)),
            Container(
                padding: EdgeInsets.all(5),
                child: Text("Dibaca 1x",
                    style: TextStyle(fontSize: 10, color: Colors.white)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepPurple,
                )),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                  'اَللَّهُمَّ عَالِمَ الْغَيْبِ وَالشَّهَادَةِ فَاطِرَ السَّمَاوَاتِ وَاْلأَرْضِ، رَبَّ كُلِّ شَيْءٍ وَمَلِيْكَهُ، أَشْهَدُ أَنْ لاَ إِلَـهَ إِلاَّ أَنْتَ، أَعُوْذُ بِكَ مِنْ شَرِّ نَفْسِيْ، وَمِنْ شَرِّ الشَّيْطَانِ وَشِرْكِهِ، وَأَنْ أَقْتَرِفَ عَلَى نَفْسِيْ سُوْءًا أَوْ أَجُرُّهُ إِلَى مُسْلِمٍ.',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.center),
            ),
            Container(
                padding: EdgeInsets.all(20),
                child: Column(children: [
                  Text("Artinya:", style: TextStyle(color: Colors.white)),
                  Container(padding: EdgeInsets.all(7)),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                          '“Ya Allah Yang Maha Mengetahui yang ghaib dan yang nyata, wahai Tuhan pencipta langit dan bumi, Tuhan segala sesuatu dan yang merajainya. Aku bersaksi bahwa tidak ada Tuhan yang berhak disembah kecuali Engkau. Aku berlindung kepada-Mu dari kejahatan diriku, setan dan balatentaranya, dan aku (berlindung kepada-Mu) dari berbuat kejelekan terhadap diriku atau menyeretnya kepada seorang muslim.”(HR. Tirmidzi dan Abu Dawud, Shahih At Tirmidzi 3/142.)',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.white),
                          textAlign: TextAlign.justify)),
                ])),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: 1000.0,
                color: Colors.white,
              ),
            ),
            // END BACAAN 9
            // BACAAN 10
            Container(padding: EdgeInsets.only(top: 20)),
            Container(
                padding: EdgeInsets.all(5),
                child: Text("Dibaca 3x",
                    style: TextStyle(fontSize: 10, color: Colors.white)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepPurple,
                )),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                  'بِسْمِ اللهِ لاَ يَضُرُّ مَعَ اسْمِهِ شَيْءٌ فِي اْلأَرْضِ وَلاَ فِي السَّمَاءِ وَهُوَ السَّمِيْعُ الْعَلِيْمُ.',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.center),
            ),
            Container(
                padding: EdgeInsets.all(20),
                child: Column(children: [
                  Text("Artinya:", style: TextStyle(color: Colors.white)),
                  Container(padding: EdgeInsets.all(7)),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                          '“Dengan nama Allah yang jika disebut, segala sesuatu di bumi dan langit tidak akan berbahaya, Dialah Yang Maha Mendengar lagi Maha Mengetahui.”',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.white),
                          textAlign: TextAlign.justify)),
                ])),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: 1000.0,
                color: Colors.white,
              ),
            ),
            // END BACAAN 10
            // BACAAN 11
            Container(padding: EdgeInsets.only(top: 20)),
            Container(
                padding: EdgeInsets.all(5),
                child: Text("Dibaca 1x",
                    style: TextStyle(fontSize: 10, color: Colors.white)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepPurple,
                )),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                  'يَاحَيُّ يَاقَيُّوْمُ بِرَحْمَتِكَ أَسْتَغِيْثُ، أَصْلِحْ لِيْ شَأْنِيْ كُلَّهُ وَلاَ تَكِلْنِيْ إِلَى نَفْسِيْ طَرْفَةَ عَيْنٍ.',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.center),
            ),
            Container(
                padding: EdgeInsets.all(20),
                child: Column(children: [
                  Text("Artinya:", style: TextStyle(color: Colors.white)),
                  Container(padding: EdgeInsets.all(7)),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                          '“Wahai Tuhan Yang Maha Hidup, wahai Tuhan Yang berdiri Sendiri, dengan rahmat-Mu aku meminta pertolongan, perbaikilah segala urusanku dan jangan diserahkan kepadaku sekalipun sekejap mata.” (HR. Hakim, menurut pendapatnya, hadis tersebut adalah shahih, dan Imam Adz-Dzahabi menyetujuinya, lihat kitabnya 1/545, dan Shahih At-Targhib wat Tarhib 1/273.)',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.white),
                          textAlign: TextAlign.justify)),
                ])),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: 1000.0,
                color: Colors.white,
              ),
            ),
            // END BACAAN 11
            // BACAAN 12
            Container(padding: EdgeInsets.only(top: 20)),
            Container(
                padding: EdgeInsets.all(5),
                child: Text("Dibaca 1x",
                    style: TextStyle(fontSize: 10, color: Colors.white)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepPurple,
                )),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                  'لاَ إِلَـهَ إِلاَّ اللهُ وَحْدَهُ لاَ شَرِيْكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيْرُ',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.center),
            ),
            Container(
                padding: EdgeInsets.all(20),
                child: Column(children: [
                  Text("Artinya:", style: TextStyle(color: Colors.white)),
                  Container(padding: EdgeInsets.all(7)),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                          '“Tidak ada Tuhan yang berhak disembah selain Allah Yang Maha Esa, tidak ada sekutu bagi-Nya. Bagi-Nya kerajaan dan segala pujian. Dia-lah yang berkuasa atas segala sesuatu.”',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.white),
                          textAlign: TextAlign.justify)),
                ])),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: 1000.0,
                color: Colors.white,
              ),
            ),
            // END BACAAN 12
            // BACAAN 13
            Container(padding: EdgeInsets.only(top: 20)),
            Container(
                padding: EdgeInsets.all(5),
                child: Text("Dibaca 100x",
                    style: TextStyle(fontSize: 10, color: Colors.white)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepPurple,
                )),
            Container(
              padding: EdgeInsets.only(top: 20, bottom: 5),
              child: Text('سُبْحَانَ اللهِ وَبِحَمْدِهِ.',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.center),
            ),
            Container(
                padding: EdgeInsets.all(20),
                child: Column(children: [
                  Text("Artinya:", style: TextStyle(color: Colors.white)),
                  Container(padding: EdgeInsets.all(7)),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text('“Mahasuci Allah sambil memuji-Nya.”',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.white),
                          textAlign: TextAlign.justify)),
                ])),
            Container(
              margin: EdgeInsets.only(top: 5, bottom: 25),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: 1000.0,
                color: Colors.white,
              ),
            ),
            // END BACAAN 13
            // TOMBOL AKHIR
            RaisedButton(
              child: Text('Alhamdulillah, selesai'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            // TOMBOL SELESAI
            Container(padding: EdgeInsets.all(10))
          ]))
        ]));
  }
}

class DzikirPetang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        appBar: AppBar(
          title: Text('Dzikir Petang'),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: ListView(children: [
          Center(
              child: Column(children: [
            // BACAAN 1
            Container(padding: EdgeInsets.only(top: 20)),
            Container(
                padding: EdgeInsets.all(5),
                child: Text("Dibaca 1x",
                    style: TextStyle(fontSize: 10, color: Colors.white)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepPurple,
                )),
            Container(
              padding: EdgeInsets.only(top: 15, bottom: 10),
              child: Text("أَعُوذُ بِاللَّهِ مِنَ الشَّيْطَانِ الرَّجِيمِ",
                  style: TextStyle(fontSize: 25, color: Colors.white)),
            ),
            Container(
                padding: EdgeInsets.all(10),
                child: Column(children: [
                  Text("Artinya:", style: TextStyle(color: Colors.white)),
                  Container(padding: EdgeInsets.all(7)),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                          '"Aku berlindung kepada Allah dari godaan syaitan yang terkutuk."',
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: Colors.white))),
                ])),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: 1000.0,
                color: Colors.white,
              ),
            ),
            // END BACAAN 1
            // BACAAN 2
            Container(padding: EdgeInsets.only(top: 20)),
            Container(
                padding: EdgeInsets.all(5),
                child: Text("Dibaca 1x",
                    style: TextStyle(fontSize: 10, color: Colors.white)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepPurple,
                )),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                  "اللَّهُ لاَ إِلَهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ، لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ، لَهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الْأَرْضِ، مَنْ ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ، يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ، وَلَا يُحِيطُونَ بِشَيْءٍ مِنْ عِلْمِهِ إِلاَّ بِمَا شَاءَ، وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالْأَرْضَ، وَلَا يَئُودُهُ حِفْظُهُمَا، وَهُوَ الْعَلِيُّ الْعَظِيمُ",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.end),
            ),
            Container(
                padding: EdgeInsets.all(20),
                child: Column(children: [
                  Text("Artinya:", style: TextStyle(color: Colors.white)),
                  Container(padding: EdgeInsets.all(7)),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                          '“Allah, tidak ada ilah (yang berhak disembah) melainkan Dia, yang hidup kekal lagi terus menerus mengurus (makhluk-Nya). Dia tidak mengantuk dan tidak tidur. Kepunyaan-Nya apa yang di langit dan di bumi. Tiada yang dapat memberi syafa’at di sisi-Nya tanpa seizin-Nya. Dia mengetahui apa-apa yang di hadapan mereka dan di belakang mereka. Mereka tidak mengetahui apa-apa dari ilmu Allah melainkan apa yang dikehendaki-Nya. Kursi Allah meliputi langit dan bumi. Dia tidak merasa berat memelihara keduanya. Dan Dia Maha Tinggi lagi Maha besar.” (QS. Al Baqarah: 255)',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.white),
                          textAlign: TextAlign.justify)),
                ])),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: 1000.0,
                color: Colors.white,
              ),
            ),
            // END BACAAN 2
            // START BACAAN 3
            // AL-IKHLAS
            Container(
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Membaca surat Al-Ikhlas",
                          style: TextStyle(color: Colors.white)),
                      Container(
                          padding: EdgeInsets.all(5),
                          child: Text("Dibaca 3x",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white)),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.deepPurple,
                          )),
                    ])),
            Container(padding: EdgeInsets.only(top: 10)),
            Container(
              padding: EdgeInsets.only(top: 15, bottom: 10),
              child: Text("بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ",
                  style: TextStyle(fontSize: 25, color: Colors.white)),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                  "قُلْ هُوَ اللَّهُ أَحَدٌ (1) اللَّهُ الصَّمَدُ (2) لَمْ يَلِدْ وَلَمْ يُولَدْ (3) وَلَمْ يَكُن لَّهُ كُفُوًا أَحَدٌ (4)",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.end),
            ),
            Container(
                padding: EdgeInsets.all(10),
                child: Column(children: [
                  Text("Artinya:", style: TextStyle(color: Colors.white)),
                  Container(padding: EdgeInsets.all(7)),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                          '“Dengan menyebut nama Allah Yang Maha Pengasih lagi Maha Penyayang. Katakanlah: Dialah Allah, Yang Maha Esa. Allah adalah ilah yang bergantung kepada-Nya segala urusan. Dia tidak beranak dan tiada pula diperanakkan, dan tidak ada seorang pun yang setara dengan Dia.” (QS. Al Ikhlas: 1-4)',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.white),
                          textAlign: TextAlign.justify)),
                ])),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: 1000.0,
                color: Colors.white,
              ),
            ),
            // END AL-IKHLAS
            // AL-FALAQ
            Container(
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Membaca surat Al-Falaq",
                          style: TextStyle(color: Colors.white)),
                      Container(
                          padding: EdgeInsets.all(5),
                          child: Text("Dibaca 3x",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white)),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.deepPurple,
                          )),
                    ])),
            Container(padding: EdgeInsets.only(top: 10)),
            Container(
              padding: EdgeInsets.only(top: 15, bottom: 10),
              child: Text("بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ",
                  style: TextStyle(fontSize: 25, color: Colors.white)),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                  "قُلْ أَعُوذُ بِرَبِّ الْفَلَقِ (1) مِن شَرِّ مَا خَلَقَ (2) وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ (3) وَمِن شَرِّ النَّفَّاثَاتِ فِي الْعُقَدِ (4) وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ (5)",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.end),
            ),
            Container(
                padding: EdgeInsets.all(10),
                child: Column(children: [
                  Text("Artinya:", style: TextStyle(color: Colors.white)),
                  Container(padding: EdgeInsets.all(7)),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                          '“Dengan menyebut nama Allah Yang Maha Pengasih lagi Maha Penyayang. Katakanlah: Dialah Allah, Yang Maha Esa. Allah adalah ilah yang bergantung kepada-Nya segala urusan. Dia tidak beranak dan tiada pula diperanakkan, dan tidak ada seorang pun yang setara dengan Dia.” (QS. Al Ikhlas: 1-4)',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.white),
                          textAlign: TextAlign.justify)),
                ])),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: 1000.0,
                color: Colors.white,
              ),
            ),
            // END AL-FALAQ
            // AN-NAAS
            Container(
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Membaca surat An-Naas",
                          style: TextStyle(color: Colors.white)),
                      Container(
                          padding: EdgeInsets.all(5),
                          child: Text("Dibaca 3x",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white)),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.deepPurple,
                          )),
                    ])),
            Container(padding: EdgeInsets.only(top: 10)),
            Container(
              padding: EdgeInsets.only(top: 15, bottom: 10),
              child: Text("بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ",
                  style: TextStyle(fontSize: 25, color: Colors.white)),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                  "قُلْ أَعُوذُ بِرَبِّ النَّاسِ (1) مَلِكِ النَّاسِ (2) إِلَهِ النَّاسِ (3) مِن شَرِّ الْوَسْوَاسِ الْخَنَّاسِ (4) الَّذِي يُوَسْوِسُ فِي صُدُورِ النَّاسِ (5) مِنَ الْجِنَّةِ وَ النَّاسِ (6)",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.end),
            ),
            Container(
                padding: EdgeInsets.all(10),
                child: Column(children: [
                  Text("Artinya:", style: TextStyle(color: Colors.white)),
                  Container(padding: EdgeInsets.all(7)),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                          '“Dengan menyebut nama Allah Yang Maha Pengasih lagi Maha Penyayang. Katakanlah: Dialah Allah, Yang Maha Esa. Allah adalah ilah yang bergantung kepada-Nya segala urusan. Dia tidak beranak dan tiada pula diperanakkan, dan tidak ada seorang pun yang setara dengan Dia.” (QS. Al Ikhlas: 1-4)',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.white),
                          textAlign: TextAlign.justify)),
                ])),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: 1000.0,
                color: Colors.white,
              ),
            ),
            // END AN-NAAS
            // END BACAAN 3
            // BACAAN 4
            Container(padding: EdgeInsets.only(top: 20)),
            Container(
                padding: EdgeInsets.all(5),
                child: Text("Dibaca 1x",
                    style: TextStyle(fontSize: 10, color: Colors.white)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepPurple,
                )),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                  'أَمْسَيْنَا وَأَمْسَى الْمُلْكُ للهِ، وَالْحَمْدُ للهِ، لَا إِلَهَ إِلاَّ اللهُ وَحْدَهُ لاَ شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ، وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ، رَبِّ أَسْأَلُكَ خَيْرَ مَا فِي هَذِهِ اللَّيْلَةِ وَخَيْرَ مَا بَعْدَهَا، وَأَعُوذُبِكَ مِنْ شَرِّ مَا فِي هَذِهِ اللَّيْلَةِ وَشَرِّ مَا بَعْدَهَا، رَبِّ أَعُوذُبِكَ مِنَ الْكَسَلِ وَسُوءِ الْكِبَرِ، رَبِّ أَعُوذُبِكَ مِنْ عَذَابٍ فِي النَّارِ وَعَذَابٍ فِي الْقَبْرِ',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.end),
            ),
            Container(
                padding: EdgeInsets.all(20),
                child: Column(children: [
                  Text("Artinya:", style: TextStyle(color: Colors.white)),
                  Container(padding: EdgeInsets.all(7)),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                          '“Kami telah memasuki waktu petang dan kerajaan hanya milik Allah, segala puji bagi Allah. Tidak ada ilah (yang berhak disembah) kecuali Allah semata, tiada sekutu bagi-Nya. Milik Allah kerajaan dan bagi-Nya pujian. Dia-lah Yang Mahakuasa atas segala sesuatu.Wahai Rabbku, aku mohon kepada-Mu kebaikan di malam ini dan kebaikan sesudahnya. Aku berlindung kepadaMu dari kejahatan malam ini dan kejahatan sesudahnya. Wahai Rabbku, aku berlindung kepadaMu dari kemalasan dan kejelekan di hari tua. Wahai Rabbku, aku berlindung kepada-Mu dari siksaan di neraka dan siksaan di kubur.”',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.white),
                          textAlign: TextAlign.justify)),
                ])),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: 1000.0,
                color: Colors.white,
              ),
            ),
            // END BACAAN 4
            // BACAAN 5
            Container(padding: EdgeInsets.only(top: 20)),
            Container(
                padding: EdgeInsets.all(5),
                child: Text("Dibaca 1x",
                    style: TextStyle(fontSize: 10, color: Colors.white)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepPurple,
                )),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                  'اللَّهُمَّ بِكَ أَمْسَيْنَا، وَبِكَ أَصْبَحْنَا،وَبِكَ نَحْيَا، وَبِكَ نَمُوتُ، وَإِلَيْكَ الْمَصِيْرُ',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.center),
            ),
            Container(
                padding: EdgeInsets.all(20),
                child: Column(children: [
                  Text("Artinya:", style: TextStyle(color: Colors.white)),
                  Container(padding: EdgeInsets.all(7)),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                          '“Ya Allah, dengan rahmat dan pertolongan-Mu kami memasuki waktu petang, dan dengan rahmat dan pertolongan-Mu kami memasuki waktu pagi. Dengan rahmat dan pertolonganMu kami hidup dan dengan kehendakMu kami mati. Dan kepada-Mu tempat kembali (bagi semua makhluk).”',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.white),
                          textAlign: TextAlign.justify)),
                ])),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: 1000.0,
                color: Colors.white,
              ),
            ),
            // END BACAAN 5
            // BACAAN 6
            Container(padding: EdgeInsets.only(top: 20)),
            Container(
                padding: EdgeInsets.all(5),
                child: Text("Dibaca 1x",
                    style: TextStyle(fontSize: 10, color: Colors.white)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepPurple,
                )),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                  'اَللَّهُمَّ أَنْتَ رَبِّيْ لاَ إِلَـهَ إِلاَّ أَنْتَ، خَلَقْتَنِيْ وَأَنَا عَبْدُكَ، وَأَنَا عَلَى عَهْدِكَ وَوَعْدِكَ مَا اسْتَطَعْتُ، أَعُوْذُ بِكَ مِنْ شَرِّ مَا صَنَعْتُ، أَبُوْءُ لَكَ بِنِعْمَتِكَ عَلَيَّ، وَأَبُوْءُ بِذَنْبِيْ فَاغْفِرْ لِيْ فَإِنَّهُ لاَ يَغْفِرُ الذُّنُوْبَ إِلاَّ أَنْتَ',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.center),
            ),
            Container(
                padding: EdgeInsets.all(20),
                child: Column(children: [
                  Text("Artinya:", style: TextStyle(color: Colors.white)),
                  Container(padding: EdgeInsets.all(7)),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                          '“Ya Allah, Engkau adalah Rabbku, tidak ada ilah yang berhak disembah kecuali Engkau, Engkaulah yang menciptakanku. Aku adalah hamba-Mu. Aku akan setia pada perjanjianku pada-Mu (yaitu aku akan mentauhidkan-Mu) semampuku dan aku yakin akan janji-Mu (berupa surga untukku). Aku berlindung kepada-Mu dari kejelekan yang kuperbuat. Aku mengakui nikmat-Mu kepadaku dan aku mengakui dosaku. Oleh karena itu, ampunilah aku. Sesungguhnya tiada yang mengampuni dosa kecuali Engkau.”',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.white),
                          textAlign: TextAlign.justify)),
                ])),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: 1000.0,
                color: Colors.white,
              ),
            ),
            //END BACAAN 6
            // BACAAN 7
            Container(padding: EdgeInsets.only(top: 20)),
            Container(
                padding: EdgeInsets.all(5),
                child: Text("Dibaca 3x",
                    style: TextStyle(fontSize: 10, color: Colors.white)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepPurple,
                )),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                  'اَللَّهُمَّ عَافِنِيْ فِيْ بَدَنِيْ، اَللَّهُمَّ عَافِنِيْ فِيْ سَمْعِيْ، اَللَّهُمَّ عَافِنِيْ فِيْ بَصَرِيْ، لاَ إِلَـهَ إِلاَّ أَنْتَ. اَللَّهُمَّ إِنِّي أَعُوْذُ بِكَ مِنَ الْكُفْرِ وَالْفَقْرِ، وَأَعُوْذُ بِكَ مِنْ عَذَابِ الْقَبْرِ، لاَ إِلَـهَ إِلاَّ أَنْتَ.',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.center),
            ),
            Container(
                padding: EdgeInsets.all(20),
                child: Column(children: [
                  Text("Artinya:", style: TextStyle(color: Colors.white)),
                  Container(padding: EdgeInsets.all(7)),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                          '“Ya Allah, selamatkan tubuhku. Ya Allah, selamatkan pendengaranku. Ya Allah, selamatkan penglihatanku, tidak ada Tuhan (yang berhak disembah) kecuali Engkau. Ya Allah, sesungguhnya aku berlindung kepada-Mu dari kekufuran dan kefakiran. Aku berlindung kepada-Mu dari siksa kubur, tidak ada Tuhan (yang berhak disembah) kecuali Engkau.”',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.white),
                          textAlign: TextAlign.justify)),
                ])),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: 1000.0,
                color: Colors.white,
              ),
            ),
            // END BACAAN 7
            // BACAAN 8
            Container(padding: EdgeInsets.only(top: 20)),
            Container(
                padding: EdgeInsets.all(5),
                child: Text("Dibaca 1x",
                    style: TextStyle(fontSize: 10, color: Colors.white)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepPurple,
                )),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                  'اَللَّهُمَّ إِنِّيْ أَسْأَلُكَ الْعَفْوَ وَالْعَافِيَةَ فِي الدُّنْيَا وَاْلآخِرَةِ، اَللَّهُمَّ إِنِّيْ أَسْأَلُكَ الْعَفْوَ وَالْعَافِيَةَ فِي دِيْنِيْ وَدُنْيَايَ وَأَهْلِيْ وَمَالِيْ. اَللَّهُمَّ اسْتُرْ عَوْرَاتِيْ وَآمِنْ رَوْعَاتِيْ اَللَّهُمَّ احْفَظْنِيْ مِنْ بَيْنِ يَدَيَّ، وَمِنْ خَلْفِيْ، وَعَنْ يَمِيْنِيْ وَعَنْ شِمَالِيْ، وَمِنْ فَوْقِيْ، وَأَعُوْذُ بِعَظَمَتِكَ أَنْ أُغْتَالَ مِنْ تَحْتِيْ.',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.center),
            ),
            Container(
                padding: EdgeInsets.all(20),
                child: Column(children: [
                  Text("Artinya:", style: TextStyle(color: Colors.white)),
                  Container(padding: EdgeInsets.all(7)),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                          '“Ya Allah, sesungguhnya aku memohon kebajikan dan keselamatan di dunia dan akhirat. Ya Allah, sesungguhnya aku memohon kebajikan dan keselamatan dalam agama, dunia, keluarga dan hartaku. Ya Allah, tutupilah auratku (aib dan sesuatu yang tidak layak dilihat orang) dan tenteramkanlah aku dari rasa takut. Ya Allah, Peliharalah aku dari depan, belakang, kanan, kiri dan atasku. Aku berlindung dengan kebesaran-Mu, agar aku tidak disambar dari bawahku.” (HR. Abu Dawud dan Ibnu Majah, Shahih Ibnu Majah 2/332)',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.white),
                          textAlign: TextAlign.justify)),
                ])),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: 1000.0,
                color: Colors.white,
              ),
            ),
            // END BACAAN 8
            // BACAAN 9
            Container(padding: EdgeInsets.only(top: 20)),
            Container(
                padding: EdgeInsets.all(5),
                child: Text("Dibaca 1x",
                    style: TextStyle(fontSize: 10, color: Colors.white)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepPurple,
                )),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                  'اَللَّهُمَّ عَالِمَ الْغَيْبِ وَالشَّهَادَةِ فَاطِرَ السَّمَاوَاتِ وَاْلأَرْضِ، رَبَّ كُلِّ شَيْءٍ وَمَلِيْكَهُ، أَشْهَدُ أَنْ لاَ إِلَـهَ إِلاَّ أَنْتَ، أَعُوْذُ بِكَ مِنْ شَرِّ نَفْسِيْ، وَمِنْ شَرِّ الشَّيْطَانِ وَشِرْكِهِ، وَأَنْ أَقْتَرِفَ عَلَى نَفْسِيْ سُوْءًا أَوْ أَجُرُّهُ إِلَى مُسْلِمٍ.',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.center),
            ),
            Container(
                padding: EdgeInsets.all(20),
                child: Column(children: [
                  Text("Artinya:", style: TextStyle(color: Colors.white)),
                  Container(padding: EdgeInsets.all(7)),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                          '“Ya Allah Yang Maha Mengetahui yang ghaib dan yang nyata, wahai Tuhan pencipta langit dan bumi, Tuhan segala sesuatu dan yang merajainya. Aku bersaksi bahwa tidak ada Tuhan yang berhak disembah kecuali Engkau. Aku berlindung kepada-Mu dari kejahatan diriku, setan dan balatentaranya, dan aku (berlindung kepada-Mu) dari berbuat kejelekan terhadap diriku atau menyeretnya kepada seorang muslim.”(HR. Tirmidzi dan Abu Dawud, Shahih At Tirmidzi 3/142.)',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.white),
                          textAlign: TextAlign.justify)),
                ])),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: 1000.0,
                color: Colors.white,
              ),
            ),
            // END BACAAN 9
            // BACAAN 10
            Container(padding: EdgeInsets.only(top: 20)),
            Container(
                padding: EdgeInsets.all(5),
                child: Text("Dibaca 3x",
                    style: TextStyle(fontSize: 10, color: Colors.white)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepPurple,
                )),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                  'بِسْمِ اللهِ لاَ يَضُرُّ مَعَ اسْمِهِ شَيْءٌ فِي اْلأَرْضِ وَلاَ فِي السَّمَاءِ وَهُوَ السَّمِيْعُ الْعَلِيْمُ.',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.center),
            ),
            Container(
                padding: EdgeInsets.all(20),
                child: Column(children: [
                  Text("Artinya:", style: TextStyle(color: Colors.white)),
                  Container(padding: EdgeInsets.all(7)),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                          '“Dengan nama Allah yang jika disebut, segala sesuatu di bumi dan langit tidak akan berbahaya, Dialah Yang Maha Mendengar lagi Maha Mengetahui.”',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.white),
                          textAlign: TextAlign.justify)),
                ])),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: 1000.0,
                color: Colors.white,
              ),
            ),
            // END BACAAN 10
            // BACAAN 11
            Container(padding: EdgeInsets.only(top: 20)),
            Container(
                padding: EdgeInsets.all(5),
                child: Text("Dibaca 1x",
                    style: TextStyle(fontSize: 10, color: Colors.white)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepPurple,
                )),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                  'يَاحَيُّ يَاقَيُّوْمُ بِرَحْمَتِكَ أَسْتَغِيْثُ، أَصْلِحْ لِيْ شَأْنِيْ كُلَّهُ وَلاَ تَكِلْنِيْ إِلَى نَفْسِيْ طَرْفَةَ عَيْنٍ.',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.center),
            ),
            Container(
                padding: EdgeInsets.all(20),
                child: Column(children: [
                  Text("Artinya:", style: TextStyle(color: Colors.white)),
                  Container(padding: EdgeInsets.all(7)),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                          '“Wahai Tuhan Yang Maha Hidup, wahai Tuhan Yang berdiri Sendiri, dengan rahmat-Mu aku meminta pertolongan, perbaikilah segala urusanku dan jangan diserahkan kepadaku sekalipun sekejap mata.” (HR. Hakim, menurut pendapatnya, hadis tersebut adalah shahih, dan Imam Adz-Dzahabi menyetujuinya, lihat kitabnya 1/545, dan Shahih At-Targhib wat Tarhib 1/273.)',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.white),
                          textAlign: TextAlign.justify)),
                ])),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: 1000.0,
                color: Colors.white,
              ),
            ),
            // END BACAAN 11
            // BACAAN 12
            Container(padding: EdgeInsets.only(top: 20)),
            Container(
                padding: EdgeInsets.all(5),
                child: Text("Dibaca 1x",
                    style: TextStyle(fontSize: 10, color: Colors.white)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepPurple,
                )),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                  'لاَ إِلَـهَ إِلاَّ اللهُ وَحْدَهُ لاَ شَرِيْكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيْرُ',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.center),
            ),
            Container(
                padding: EdgeInsets.all(20),
                child: Column(children: [
                  Text("Artinya:", style: TextStyle(color: Colors.white)),
                  Container(padding: EdgeInsets.all(7)),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                          '“Tidak ada Tuhan yang berhak disembah selain Allah Yang Maha Esa, tidak ada sekutu bagi-Nya. Bagi-Nya kerajaan dan segala pujian. Dia-lah yang berkuasa atas segala sesuatu.”',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.white),
                          textAlign: TextAlign.justify)),
                ])),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: 1000.0,
                color: Colors.white,
              ),
            ),
            // END BACAAN 12
            // BACAAN 13
            Container(padding: EdgeInsets.only(top: 20)),
            Container(
                padding: EdgeInsets.all(5),
                child: Text("Dibaca 100x",
                    style: TextStyle(fontSize: 10, color: Colors.white)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepPurple,
                )),
            Container(
              padding: EdgeInsets.only(top: 20, bottom: 5),
              child: Text('سُبْحَانَ اللهِ وَبِحَمْدِهِ.',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.center),
            ),
            Container(
                padding: EdgeInsets.all(20),
                child: Column(children: [
                  Text("Artinya:", style: TextStyle(color: Colors.white)),
                  Container(padding: EdgeInsets.all(7)),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text('“Mahasuci Allah sambil memuji-Nya.”',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.white),
                          textAlign: TextAlign.justify)),
                ])),
            Container(
              margin: EdgeInsets.only(top: 5),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: 1000.0,
                color: Colors.white,
              ),
            ),
            // END BACAAN 13
            // BACAAN 14
            Container(padding: EdgeInsets.only(top: 20)),
            Container(
                padding: EdgeInsets.all(5),
                child: Text("Dibaca 3x",
                    style: TextStyle(fontSize: 10, color: Colors.white)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepPurple,
                )),
            Container(
              padding: EdgeInsets.only(top: 20, bottom: 5),
              child: Text(
                  'أَعُوْذُ بِكَلِمَاتِ اللهِ التَّامَّاتِ مِنْ شَرِّ مَا خَلَقَ',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.center),
            ),
            Container(
                padding: EdgeInsets.all(20),
                child: Column(children: [
                  Text("Artinya:", style: TextStyle(color: Colors.white)),
                  Container(padding: EdgeInsets.all(7)),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                          '“Aku berlindung dengan kalimat-kalimat Allah yang sempurna dari kejahatan makhluk yang diciptakanNya.”',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.white),
                          textAlign: TextAlign.justify)),
                ])),
            Container(
              margin: EdgeInsets.only(top: 5, bottom: 25),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: 1000.0,
                color: Colors.white,
              ),
            ),
            // END BACAAN 14
            // TOMBOL AKHIR
            RaisedButton(
              child: Text('Alhamdulillah, selesai'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            // TOMBOL SELESAI
            Container(padding: EdgeInsets.all(10))
          ]))
        ]));
  }
}

class WaktuSholat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        appBar: AppBar(
          title: Text('Waktu Sholat'),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: ListView(children: [
          //JUDUL
          Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: Colors.deepPurple),
              child: Text("Waktunya Sholat Isya di Jonggol, Bogor",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center)),
          // END JUDUL
          // WAKTU
          Container(
              margin: EdgeInsets.only(right: 15, left: 14, top: 10, bottom: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('17/09/2020', style: TextStyle(color: Colors.white)),
                    Text('19:50:03', style: TextStyle(color: Colors.white)),
                  ])),
          // END WAKTU
          // SUBUH
          Container(
              margin: EdgeInsets.only(top: 5, right: 15, left: 15, bottom: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Shubuh',
                        style: TextStyle(color: Colors.deepPurpleAccent)),
                    Text('04:29',
                        style: TextStyle(color: Colors.deepPurpleAccent)),
                  ])),
          // END SUBUH
          // ZUHUR
          Container(
              margin: EdgeInsets.only(right: 15, left: 15, bottom: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Dzuhur',
                        style: TextStyle(color: Colors.deepPurpleAccent)),
                    Text('11:50',
                        style: TextStyle(color: Colors.deepPurpleAccent)),
                  ])),
          // END ZUHUR
          // ASHAR
          Container(
              margin: EdgeInsets.only(right: 15, left: 15, bottom: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Ashar',
                        style: TextStyle(color: Colors.deepPurpleAccent)),
                    Text('15:02',
                        style: TextStyle(color: Colors.deepPurpleAccent)),
                  ])),
          // END ASHAR
          // MAGHRIB
          Container(
              margin: EdgeInsets.only(right: 15, left: 15, bottom: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Maghrib',
                        style: TextStyle(color: Colors.deepPurpleAccent)),
                    Text('17:52',
                        style: TextStyle(color: Colors.deepPurpleAccent)),
                  ])),
          // END MAGHRIB
          // ISYA
          Container(
              margin: EdgeInsets.only(right: 15, left: 15, bottom: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.black87,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Isya',
                        style: TextStyle(color: Colors.deepPurpleAccent)),
                    Text('19:00',
                        style: TextStyle(color: Colors.deepPurpleAccent)),
                  ])),
          // END ISYA
        ]));
  }
}
