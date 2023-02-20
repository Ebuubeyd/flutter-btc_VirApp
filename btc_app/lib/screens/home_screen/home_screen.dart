import 'package:btc_app/screens/home_screen/components/balance_card/balance_card.dart';
import 'package:btc_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/balance_card/favorites/favorites.dart';
import 'components/portfolio/portfolio.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget header() {
    //header Widget ı oluşturuluyor
    return Padding(
      //padding Döndürülüyor
      padding: const EdgeInsets.symmetric(
          horizontal:
              24), //döndürülen padding e Sabşt depşken olarak simetrik şekilde yatay kısıma 24 piksel boşluk veriliyor
      child: Row(
        //Padding içinde child özelliği ile bir adet satır açılması sağlanıyor
        mainAxisAlignment: MainAxisAlignment
            .spaceBetween, //mainAxisAlignment yaani soldan sağa doğru Spacebetween özelliği veriliyor
        children: [
          //satır içerisine daha fazla özellik tanımlamak için children Tanımlanıyor
          Column(
            //satır içine bir adet kolon tanımlanıyor
            mainAxisSize: MainAxisSize
                .min, //mainAxsiz büyüklüğü Minimum olarak ayarlanıyor
            crossAxisAlignment: CrossAxisAlignment
                .start, //crossAxisAlignment Yaani yukardan aşşağıya doğru kısımı Start başlangıç olarak seçiyoruz
            children: const [
              //const İle değiştirilemez children Özellikleri tanımlıyoruz
              Text(
                //text Açıyoruz
                'Hoşgeldin', //text içine data Yazıyoruz
                style: TextStyle(
                  //yazdığımız Yazının sitillerini değiştiriyoruz
                  fontSize: 20, //font büyüklüğünü Ayarlıyoruz
                  color: kSecondaryTextColor, //rengini ayarlıyoruz
                ),
              ),
              SizedBox(
                  height:
                      2), //2 piksel boyutunda boş kutu oluşturup boşluk veriyoruz
              Text(
                //başka bir text Özelliği daha
                'Ebu Ubeyd', //text özelliğinin datası
                style: TextStyle(
                  //Yazıya sitil veriyoruz
                  fontSize: 30, //tekrardan yazının boyu
                  fontWeight: FontWeight
                      .bold, //ve yazının fontunu kalın olarak ayarlıyoruz
                ),
              ),
            ],
          ),
          CircleAvatar(
            //daire biçiminde Avatar fotoğrafı koymak için tanımlıyoıuz
            foregroundImage: AssetImage(
                'assets/images/jack_brown.png'), //fotoğrafı belirliyoruz
            backgroundColor:
                kBackgroundColor, //arka plan rengini kBackgroundColor olarak ayarlıyoruz
            radius: 30, //ovalliğe 30 piksel veriyoruz
          ),
          // Container(
          //   child: Column(
          //     children: [
          //       CircleAvatar(
          //         foregroundImage: AssetImage('assets/images/vrp.png'),
          //         backgroundColor: kBackgroundColor,
          //         radius: 30,
          //       ),
          //       const SizedBox(
          //         height: 4,
          //       ),
          //       Text('Vir-App'),
          //       Text('Bitcoin')
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget bottomNavigationBar() {
    //bottomNavigationBar widget i oluşturuluyor
    return Container(
      //bir konteyner dönürülüyor
      decoration: BoxDecoration(
          //bilinmiyor
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: const Alignment(0, -0.1),
              colors: [
            kBackgroundColor.withOpacity(0),
            kBackgroundColor,
          ])), //bilinmiyor
      child: Padding(
        //child özelliği sayesinde padding çağırılıp boşluklar veriliyor
        padding: const EdgeInsets.only(
            top: 16,
            bottom:
                28), // const ile sabit edgeInsets.only İle de sadece top 16 bottom ise 28 piksel boşluk veriliyor
        child: Row(
          //child özelliği sayesinde Row çağırılıyor
          mainAxisAlignment: MainAxisAlignment
              .spaceAround, //main axisAlignment Sayesinde rowun içeriği soldan sağa doğru spacearound Olarak ayarlanıyor
          crossAxisAlignment: CrossAxisAlignment
              .end, //crossAxisAlinment sayesinde Rowun içeriği yukardan aşşağıya doğru end olarak Ayarlanıyor
          children: [
            for (final icon in [
              //for döngüsü ile 4 ikon tanımlanıyor Detayları bilmiyorum :(
              FontAwesomeIcons.house,
              FontAwesomeIcons.chartColumn,
              FontAwesomeIcons.wallet,
              FontAwesomeIcons.gear,
            ])
              Icon(
                icon,
                color: icon == FontAwesomeIcons.house
                    ? kPrimaryTextColor
                    : kSecondaryColor,
              ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //scaffold çerçevesi çağırılıp uygulamaya boş sayfa eklenmiş
      body: Column(
        //gövde de bir kolon oluşturulmuş
        children: [
          //kolonun özellikleri olabilsin diye birden fazla özellik tanımlamak için cihldren özelliği tanımlanmış
          Expanded(
            //expanded kullanılarak Sonraki gelecek parçaların düzenli durması sağlanmıştır
            child: ShaderMask(
              //bilinmiyor
              shaderCallback: (bounds) => LinearGradient(
                begin: const Alignment(0, 0.8),
                end: Alignment.bottomCenter,
                colors: [
                  kBackgroundColor,
                  kBackgroundColor.withOpacity(0),
                ],
              ).createShader(bounds),
              blendMode: BlendMode.dstATop, //Bilinmiyor
              child: ListView(
                //expanded içerisinde Liste görünümü oluşturulmuştur
                padding: const EdgeInsets.only(
                    top: 64,
                    bottom:
                        24), //padding ile sabit olarak Sadece top ve bottom a Belirli pikseller verilmiştir
                children: [
                  // daha fazla metod çağırıp uygulamayı şekillendirebilmemiz için children özelliği kullanılmıştır
                  header(), //header Adlı metod widget çağırılmıştır
                  const SizedBox(
                      height:
                          36), //const ile Sabit bir sizedbox (Yaani 36 yüksekliğinde boş bir kutu) Oluşturuluyor
                  const BalanceCard(), //const sayesinde sabit olarak BalanceCard Metodu çağırılıyor
                  const SizedBox(
                    height: 36,
                  ), //tekrardan boş bir kutucuk oluşturulup Bi sonraki elementle ara boşaltılıyor
                  const Portfolio(), //portfolyo Metdou çağırılıyor
                  const SizedBox(
                    height: 36,
                  ), //tekraradan boşluk bırakılıyor
                  const Favorites(), //ve bu sefer Favorites Metodu çağırılıyor
                ],
              ),
            ),
          ),
          Align(
            //konum belirlemesi için align Çağırılıyor
            alignment: Alignment
                .bottomCenter, //align ın Standart özelliği çağırılıp BottomCenter veriliyor
            child:
                bottomNavigationBar(), //bottom navigationBar widget i çağırılıyor
          )
        ],
      ),
    );
  }
}
