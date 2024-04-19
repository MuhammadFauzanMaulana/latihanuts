import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:latihanuts/screen_page//manajemen.dart';
import 'package:latihanuts/screen_page//tekom.dart';
class PageTugas extends StatelessWidget {
  const PageTugas({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        //biar bisa scroll kalau widgetnya panjang ke bawah
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('gambar/film4.png',
                fit: BoxFit.contain,
                height: 200,
                width: 200,
              ),
              SizedBox(height: 15,),
              Text('Selamat Datang di Politeknik Negeri Padang ',

                style: TextStyle(color: Colors.deepOrangeAccent,
                    fontSize: 20, fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 4,),
              Text(
                'Limau Manih, Padang, Sumbar',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 40,),
              Container(
                height: 40, //tinggi button
                width: 280, // panjang button
                child: MaterialButton(
                  onPressed: () {
                    //tambahkan code toast
                    showToast(
                        'Ini Manajemen Informatika',
                        context: context,
                        axis: Axis.horizontal,
                        alignment: Alignment.center,
                        position: StyledToastPosition.bottom,
                        toastHorizontalMargin: 20,
                        fullWidth: true
                    );
//code untuk pindah page
                    Navigator.push(context, MaterialPageRoute(builder:
                        (context)
                    => PageManajemen()
                    ));
                  },
                  child: Text(
                    'Manajemen Informatika',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  color: Colors.orange,
                  textColor: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 40, //Untuk tinggi button
                width: 280, // Untuk Panjang Button
                child: MaterialButton(
                  onPressed: () {
                    showToast(
                      'Ini Teknik Komputer',
                      context: context,
                      animation: StyledToastAnimation.slideFromBottomFade,
                      reverseAnimation:
                      StyledToastAnimation.slideToTopFade,
                      position: StyledToastPosition(
                          align: Alignment.topCenter, offset: 0.0
                      ),
                      startOffset: Offset(0.0, -3.0),
                      reverseEndOffset: Offset(0.0, -3.0),
                      duration: Duration(seconds: 4),
                      animDuration: Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                      reverseCurve: Curves.fastOutSlowIn,
                    );
//code untuk pindah page
                    Navigator.push(context, MaterialPageRoute(builder:
                        (context)
                    => PageTekom()
                    ));
                  },
                  child: Text(
                    'Teknik Komputer',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  color: Colors.orange,
                  textColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
