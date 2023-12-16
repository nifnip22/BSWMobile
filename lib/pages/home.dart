import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:bswmobile/utils/NavDraw.dart' as NavDraw;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


// ===================================================== Ajuan permohonan =====================================
class AjukanPermohonan {
  final String title;
  final String subtitle;

  AjukanPermohonan({
    required this.title, 
    required this.subtitle, 
  });
}

final List<AjukanPermohonan> AjukanPermohonanData = [
  AjukanPermohonan(
    title: 'Bank Data Persyaratanan Untuk Setiap Pengguna', 
    subtitle: 'Manajemen penyimpanan data syarat permohonan, sehingga anda Tidak Perlu menggunakan ulang pada syarat yang sama untuk perizinan lainnya... '
  ), 
  AjukanPermohonan(
    title: 'Bank Data Persyaratanan Untuk Setiap Pengguna', 
    subtitle: 'Manajemen penyimpanan data syarat permohonan, sehingga anda Tidak Perlu menggunakan ulang pada syarat yang sama untuk perizinan lainnya... '
  ), 
  AjukanPermohonan(
    title: 'Bank Data Persyaratanan Untuk Setiap Pengguna', 
    subtitle: 'Manajemen penyimpanan data syarat permohonan, sehingga anda Tidak Perlu menggunakan ulang pada syarat yang sama untuk perizinan lainnya... '
  ), 
];

// ===================================================== DATA LAYANAN=====================================
class DataLayanan {
  final String title;
  final String image;

  DataLayanan({
    required this.title,
    required this.image,
  });

}

final List<DataLayanan> DataLayananList = [
  DataLayanan(title: 'Pelayanan Kependudukan' , image: 'pelayanan_kependudukan.svg'),
  DataLayanan(title: 'Izin Kesehatan'         , image: 'izin_kesehatan.svg'),
  DataLayanan(title: 'Pelayanan Kelurahan'    , image: 'pelayanan_kelurahan.svg'),
  DataLayanan(title: 'Lainnya'                , image: 'lainnya.svg'),
];

// ===================================================== DATA BERITA =====================================

class DataBerita {
  final String gambar;
  final String judul;
  final String isi;
  final String tanggal;
  final String bulan;
  final String tahun;

  DataBerita({
    required this.gambar, 
    required this.judul, 
    required this.isi, 
    required this.tanggal, 
    required this.bulan, 
    required this.tahun, 
  });
}

final List<DataBerita> DataBeritaList = [
  DataBerita(
    gambar: 'berita', 
    judul: 'Audiensi dengan wali kota pertamina keluarkan kebijakan SPBU khusu roda empat dan roda dua', 
    isi: 'Balikpapan - Pemerintah kota balikpapan bersama pertamina patra niaga menyampaikan rilis kepada awak medai yang akan mengeluarkan kebijakan baru khusus bagi kendaraan beroda empat dan dua tentang SPBU ', 
    tanggal: '28', bulan: 'November', tahun: '2023'
  ),
  DataBerita(
    gambar: 'berita', 
    judul: 'Audiensi dengan wali kota pertamina keluarkan kebijakan SPBU khusu roda empat dan roda dua', 
    isi: 'Balikpapan - Pemerintah kota balikpapan bersama pertamina patra niaga menyampaikan rilis kepada awak medai yang akan mengeluarkan kebijakan baru khusus bagi kendaraan beroda empat dan dua tentang SPBU ', 
    tanggal: '28', bulan: 'November', tahun: '2023'
  ),
  DataBerita(
    gambar: 'berita', 
    judul: 'Audiensi dengan wali kota pertamina keluarkan kebijakan SPBU khusu roda empat dan roda dua', 
    isi: 'Balikpapan - Pemerintah kota balikpapan bersama pertamina patra niaga menyampaikan rilis kepada awak medai yang akan mengeluarkan kebijakan baru khusus bagi kendaraan beroda empat dan dua tentang SPBU ', 
    tanggal: '28', bulan: 'November', tahun: '2023'
  ),
  DataBerita(
    gambar: 'berita', 
    judul: 'Audiensi dengan wali kota pertamina keluarkan kebijakan SPBU khusu roda empat dan roda dua', 
    isi: 'Balikpapan - Pemerintah kota balikpapan bersama pertamina patra niaga menyampaikan rilis kepada awak medai yang akan mengeluarkan kebijakan baru khusus bagi kendaraan beroda empat dan dua tentang SPBU ', 
    tanggal: '28', bulan: 'November', tahun: '2023'
  ),
];

class _HomePageState extends State<HomePage> {
  int bannerSlideIndicator = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: appBar(),
      endDrawer: NavDraw.NavigationDrawer(),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF3F4F6)
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              margin: EdgeInsets.only(bottom: 18),
              // constraints: BoxConstraints(maxWidth: 1000),
              child: Column(
                children: [
                  _CarouselBanner(screenWidth),
                  Container(
                    constraints: BoxConstraints(maxWidth: 1000),
                    child: Column(
                      children: [
                        Container(
                          width: screenWidth * 0.9,
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          margin: const EdgeInsets.only(top: 24, bottom: 8),
                          child:const Text.rich(
                            TextSpan(
                              text: 'Layanan yang bisa kamu akses di ',
                              style: TextStyle(
                                color: Colors.black, 
                                fontWeight: FontWeight.w600
                              ), // Color for the first part of the text
                              children: [
                                TextSpan(
                                  text: 'Balikpapan Single Window',
                                  style: TextStyle(
                                    color: Colors.blue, 
                                    fontWeight: FontWeight.w600
                                  ), // Color for the specified substring
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center, // Center the text
                          ),
                        ), 
                        _CarouselLayanan(screenWidth),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 12),
                          width: double.infinity,
                          // decoration: BoxDecoration(color: Colors.amber),
                          child: Wrap(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: screenWidth < 600 ? 6 : 4),
                                
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft, // Align child to the left
                                      child: Text(
                                        "Ajukan permohonan izin melalui BSW", 
                                        style: TextStyle(
                                          fontSize: screenWidth < 600 ? 15.0 : 20,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft, // Align child to the left
                                      child: Text(
                                        'Melalui Balikpapan Single Window (BSW). Anda dapat mengajukan permohonan izin secara mandiri dengan sistem daring (online). Keunggulan dari Balikpapan Single Window diantaranya;', 
                                        style: TextStyle(
                                          fontSize: screenWidth < 600 ? 9:11, 
                                          color: Colors.blue[800],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ), 
                        _CarouselAjuanPermohonan(screenWidth), 
                        Container(
                          CarouselSlider.builder(
                            itemCount: DataBeritaList.length, 
                            itemBuilder: (context, index, realindex){
                              final berita = DataBeritaList[index];
                              return buildBerita(index, screenWidth,berita.gambar, berita.judul, berita.isi, berita.tanggal, berita.bulan, berita.tahun);
                            }, 
                            options: CarouselOptions(
                              height: 200
                            ),
                          ),
                        )
                      ],
                    ), 
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
    
  }

  // ============================================================UNTUK CAROUSEL BERITA
  // ========================================UNTUK CAROUSEL BERITA
  // ====================UNTUK CAROUSEL BERITA

  Widget buildBerita(index, screenWidth, gambar, judul, isi, tanggal, bulan, tahun)=>
  Container(
    child: Text(gambar),
  );

  // ============================================================UNTUK CAROUSEL Ajuan Permohonan
  // ========================================UNTUK CAROUSEL Ajuan Permohonan
  // ====================UNTUK CAROUSEL Ajuan Permohonan
  CarouselSlider _CarouselAjuanPermohonan(double screenWidth) {
    return CarouselSlider.builder(
      itemCount: AjukanPermohonanData.length, 
      itemBuilder: (context, index, realindex){
        final permohonan = AjukanPermohonanData[index];
        return buildAjuanPermohonan(permohonan.title, permohonan.subtitle, index, screenWidth );
      }, 
      options: CarouselOptions(
        height: 140, 
        viewportFraction: 1.0,
        autoPlay: true, 
        autoPlayInterval: Duration(milliseconds: 5600), 
      ),
    );
  }

  Widget buildAjuanPermohonan(String title, String subtitle, int index, double screenWidth) =>
  Container(
    decoration: BoxDecoration(color: Colors.lightGreen[50]),
    margin: EdgeInsets.symmetric(horizontal: 5),
    width: screenWidth ,
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title, 
            style: TextStyle(
              fontWeight: FontWeight.bold, 
              color: Colors.lightGreen[600]
            ),
            textAlign: TextAlign.center,
          ), 
          SizedBox(height: 12,), 
          Text(
            subtitle, 
            textAlign: TextAlign.center, 
            style: TextStyle(
              fontSize: screenWidth < 600 ? 10:13
            ),
          ),
        
        ],
      ),
    ),
  );

  // ============================================================UNTUK CAROUSEL LAYANAN
  // ========================================UNTUK CAROUSEL LAYANAN
  // ====================UNTUK CAROUSEL LAYANAN

  Container _CarouselLayanan(double screenWidth) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12),
      child: CarouselSlider.builder(
        itemCount: DataLayananList.length,
        itemBuilder: (context, index, realindex) {
          final layananModel = DataLayananList[index];
          return buildLayananModel(layananModel.title, layananModel.image, index, screenWidth);
        },
        options: CarouselOptions(
          height: 150,
          enlargeCenterPage: true,
          enableInfiniteScroll: false,
          viewportFraction: screenWidth < 600 ? 0.78 : 0.38, 
          initialPage: screenWidth < 600 ? 0 : 1, 
          autoPlay: true, 
          autoPlayInterval: Duration(seconds: 6),
          autoPlayAnimationDuration: Duration(milliseconds: 1000), 
        ),
      ),
    );
  }

  Widget buildLayananModel(String title, String image, int index, double screenWidth) => 
  Container(
    width: screenWidth < 400 ? screenWidth * 0.78 : 660,
    // constraints: BoxConstraints(maxWidth: 700),
    decoration: BoxDecoration(
      color: Colors.white, 
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            
            border: Border.all(
              color: Colors.black, 
              width: 1.5
            )
          ),
          child: Center(
            child: SvgPicture.asset(
              'assets/icons/' + image,
            ),
          )
        ),
        SizedBox(height: 8,),
        Text(
          title,
          
        ),
      ],
    ),
  );


  // ===============================================================UNTUK BANNER SLIDER
  // ==========================================UNTUK BANNER SLIDER
  // =====================UNTUK BANNER SLIDER

  final carouselBanner = [
    'assets/img/mainBackGround.png',
    'assets/img/mainBackGround.png',
    'assets/img/mainBackGround.png',
    'assets/img/mainBackGround.png',
    'assets/img/mainBackGround.png',
    'assets/img/mainBackGround.png',
    'assets/img/mainBackGround.png',
    'assets/img/mainBackGround.png',
  ];

  Stack _CarouselBanner(double screenWidth) {
    return Stack(
      children: [
        CarouselSlider.builder( 
          itemCount: carouselBanner.length, 
          itemBuilder: (context, index, realindex){
            final urlimage = carouselBanner[index];
            return bannerImageSlider(urlimage, index);
          }, 
          options: CarouselOptions(
            height: screenWidth < 600 ? 250:400,
            autoPlay: true,  // Set this to true for automatic sliding
            autoPlayInterval: Duration(seconds: 5),  // Set the duration between slides
            autoPlayAnimationDuration: Duration(milliseconds: 900),  // Set the animation duration
            autoPlayCurve: Curves.fastOutSlowIn, 
            viewportFraction: 1.0,
            // aspectRatio: 16/9,
            disableCenter: true,
            onPageChanged: (index, reason) => setState(() => bannerSlideIndicator = index),
          ), 
          
        ),
        Center(
          child: Container(
            width: screenWidth,
            height: screenWidth < 600 ? 250:400,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.lightBlueAccent.shade200.withOpacity(0.8),
                  Colors.blueAccent.shade700.withOpacity(0.8),
                ],
              ),
            ),
          ),
        ),
        Center(
          child: Container(
            margin: EdgeInsets.only(top: screenWidth < 600 ? 230: 380),
            child: buildBannerPageIndicator()
          )
        ),
      ],
    );
  }

  Widget buildBannerPageIndicator() => AnimatedSmoothIndicator(
    effect: ExpandingDotsEffect(
      dotWidth: 14, 
      dotHeight: 4,
      dotColor: Colors.black45.withOpacity(0.4),
      activeDotColor: Colors.white.withOpacity(0.9), 
    ), 
    activeIndex: bannerSlideIndicator,
    count: carouselBanner.length,
  );

  Widget bannerImageSlider(String urlimage, int index) => Container(
    // margin: EdgeInsets.symmetric(horizontal: 5),
    width: double.infinity,
    child: Image.asset(
      urlimage, 
      fit: BoxFit.cover,
      alignment: Alignment.topCenter,
    ),
  );


  // ===================UNTUK APPBAR
  // ===================UNTUK APPBAR
  // ===================UNTUK APPBAR
  AppBar appBar() {
    return AppBar(
      title: Container(
        margin: EdgeInsets.only(top: 3),
        child: Image.asset(
          'assets/img/BSWblack.png',
          width: 120,
        )
      ),
      iconTheme: IconThemeData(color: Color.fromARGB(255, 53, 129, 192)),
      elevation: 0.0,
      backgroundColor: Colors.white,
    );
  }
}



