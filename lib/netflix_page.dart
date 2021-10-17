import 'package:flutter/material.dart';
import 'package:netflix_clone_app/widgets/botones.dart';
import 'package:netflix_clone_app/widgets/header.dart';
import 'package:netflix_clone_app/widgets/nav_bar_inferior.dart';

class NetflixPage extends StatelessWidget {

  final List<String> oneMovies = [
      'https://occ-0-4440-114.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABcZNznQQU9igM5tUkCAg0DvggpBwn1o6xOUaKwP8ns2m2M_DpQjCK9chDIxcurAYH8pu6gBhZocEYhRSJg5oPaPrhH8.jpg?r=487', 
      'https://occ-0-4440-114.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABQWRGu3d9lLo-Uymy_snR7LzXS604nv0Sgtx21Ev1YbD6zbbHBWF7vcOF2DrMDZBgnnxLDp4EavetRKk6qMa7o8ydOcvrWsQokTtVwDsdVgvkxku-mR8Rl6QihenwA.jpg?r=8d5',
      'https://occ-0-4440-114.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABZ7JKjii1Wjza4yPyN0rSATXc6xKggoIccV0loQPFzT8DrvaJswx1Um8y4djt3GyZ6ZTX8xNF-lo7qPsZ4oaOjQXKPoU-iKYY0sgEdJfe_QWgvJTR6bB1G-wzmVlqg.jpg?r=fda',
      'https://occ-0-4440-114.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABf2QqXTPyFc73nw57iPTAmVstcIgP6HdDbhe4MWsno8rtw6UdncrJhgPfMnZxNsApL3BO6TmVkF7l6uZVb0zFHM7cZjY2jaYMAiD63VsIHnxc-0MU_lr-yt4FTYE2w.jpg?r=d8c',
      'https://occ-0-4440-114.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABVg6zFS0g6Z9eEM9gzW0mXrWGxp1mv-teYd5hADozg7oPOrvqaWBXRaaLNaAvyn5Sz6Hw4oJwnNmOJdXP0kWhxaIQWaFrF6aYxto8v0vb0pB5Ch2xl6vzcECV4QU.jpg?r=15a',
      'https://occ-0-4440-114.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABctehTRVz6OY8Xrq4M1tusxYSUITyY-d_pWKS9WnKGENn15yPq16lEyFPQIn2vaLunqnj-SnOhEKmteaYhxqhaNpQ6E.jpg?r=b93',
      'https://occ-0-4440-114.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABXfuktF1dqjcqKRTkaPVAEvIgJ9qeEQn-B2XBsMdQDV3zuYsBZMewVtqaQFayNyK4oP9CNS2rmwdezWDAfEgFcttuUA.jpg?r=146',
      'https://occ-0-4440-114.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABUMt01ypxoJp0UuAnq025abmZ2MGCGSnwbeTyl-E-NE4v-OmfMML-RSXUgESuf2rT-t15Iq7lMUasvc9sABPVjIGlCg.jpg?r=8cb'
  ];

  final List<String> twoMovies = [
      'https://occ-0-4440-114.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABbavb2xDw5oASXIsPq5ePrMkmJLm8C_4dRlhn80pu3vKQx0CwQCTyL5w_f79rtIxsJ1YX4Eqzol6faZT4ynrVyqU2fs.jpg?r=b03',
      'https://occ-0-4440-114.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABZdMWW9LWaoACuXZpHIFdnKFdDX-BLXhLX9r-IuyZYxTPSqG_yJGKVGVj9l7uKAl-vF6NIw9hiAH0WS19Qy_7viCUjs.jpg?r=51b',
      'https://occ-0-4440-114.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABdkC3I6tm5MURNfdz33IU7GjiW5-LAr_id2uMYS-Kcoki0yUDC6iRKJ-u2XsfNlIPDUBfDaOAWvQYR-i7M7aV-PnAPg.jpg?r=ba2',
      'https://occ-0-4440-114.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABXJBquA8H3eEH0i3Y0-J1_8fWYKEbCNJ9uuRzPE9OmHuaQ6-LGdGI4dKE4cwsDp_ZJQzrF-SJXgB-SZbWLXiErwJe_s.jpg?r=908',
      'https://occ-0-4440-114.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABSmmQnUGIhUazr4xn1QWwtuGaZo-qkbg7hjpv2cfr1rhV0eYIUR-OHATZfqBzkQ58fkEQaDr0SNSqo3Lkcz_C7bu6XA.jpg?r=707',
      'https://occ-0-4440-114.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABSkfdTUpcC6_oEDki83a5JMk18CDS0Vo8wKDlEt_7xFXfvLi6_oUm2JQy0lFV3Hnh34CKUk28i7rgoKZHNf-bnLjk1k.jpg?r=66f',
      'https://occ-0-4440-114.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABff8LJLt9Ptz-X9TqZseuo4zqeNlYXH47dWWVqraQRXHePQ3sy6F77LQ5AdQorlpPX0hB3loN5Qpw4ixLnp5rfsJiDA.jpg?r=672',
      'https://occ-0-4440-114.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABRlOX3oQ8LWlSh4cDbrRTFbsXMyGITkh_Sm6ro463Y91E5MdZOoyjzdRg_EAnYAm1U1Xkiv5hqdue0CupgvR3UsBFEw.jpg?r=e75'
  ];

  final Header header = Header();
  final NavBarInferior navBarInferior = NavBarInferior();
  final Botones botones = Botones();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: <Widget>[
            header.header(),
            this.infoSerie(),
            botones.botones(),
            this.listado('Avances', this.oneMovies, true),
            SizedBox(height: 10.0),
            this.listado('Nuevos Lanzamientos', this.twoMovies, false),
            SizedBox(height: 20.0),
          ],
        ),
        bottomNavigationBar: navBarInferior.navBarInferior(),
      ),
    );
  }

  Widget infoSerie() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Accion',
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        SizedBox(width: 6.0),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5.0,
        ),
        Text(
          'Suspenso',
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        SizedBox(width: 6.0),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5.0,
        ),
        Text(
          'Terror',
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        SizedBox(width: 6.0),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5.0,
        ),
        Text(
          'Comedia',
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        SizedBox(width: 6.0),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5.0,
        ),
      ],
    );
  }

  Widget listadoUno(String pathImage) {
    return Row(
      children: [
        Stack(
          children: [
            Container(
              height: 110.0,
              width: 110.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(110.0),
                  border: Border.all(color: Colors.orange, width: 2.0)),
              child: ClipOval(
                child: Image.network(
                  pathImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        SizedBox(width: 10.0),
      ],
    );
  }

  Widget listado(String titulo, List<String> movies, bool oneOrTwo) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
          child: Text(
            titulo,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
        ),
        Container(
          height: 110.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,

            itemCount: oneMovies.length,
            itemBuilder: (context, index) {
              if (oneOrTwo) {
                return this.listadoUno('${movies[index]}');  
              } else {
                return this.itemCartel('${movies[index]}');
              }
            },
          ),
        ),
      ],
    );
  }

  Widget itemCartel(String pathImage) {
    return Row(
      children: [
        Image.network(
          pathImage,
          width: 100.0,
          height: 250.0,
          fit: BoxFit.cover,
        ),
        SizedBox(width: 10.0)
      ],
    );
  }

}