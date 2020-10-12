import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teen_titans_go_app/TItan.dart';
import 'package:teen_titans_go_app/membros.dart';

void main() {
  runApp(TitansApp());
}

// ignore: must_be_immutable
class TitansApp extends StatelessWidget {
  List<Titan> titanList = [
    Titan(
        nome: 'Robin',
        arguments: {
          'imagePath': 'assets/robin.png',
          'desc':
              'Líder dos Titãs. Ele tenta impressionar a Estelar, mas sempre acaba falhando. Nessa série sempre tem referências deles sendo o Dick Grayson, e ele tem uma equipe de Robins que tem um Dick Grayson (versão dos anos 60), Jason Todd (versão obscura), e Carry Kelly (versão feminina).'
        },
        imagePath: 'assets/robin_avatar.png'),
    Titan(
        nome: 'Mutano',
        arguments: {
          'imagePath': 'assets/mutano.png',
          'desc':
              'Transmorfo de animal verde, mudou de garoto ingênuo pra um anãozinho bobão que sempre faz e fala besteiras, é apaixonado pela Ravena e vive chamando ela de gatinha, apesar dela aparentemente não dar bola. Antes gostava da Terra, apesar de saber que ela só o estava usando.'
        },
        imagePath: 'assets/mutano_avatar.jpg'),
    Titan(
        nome: 'Estelar',
        arguments: {
          'imagePath': 'assets/estelar.png',
          'desc':
              'A mais ingênua e também ficou mais tapada, sempre levando as coisas ao pé da letra. Primeiramente ela já foi apaixonada pelo Robin, mas parou de ligar pra ele. Apesar dela ser bonitinha e meiga, ela pode se enfurecer e atacar até os seus amigos.'
        },
        imagePath: 'assets/estelar_avatar.jpg'),
    Titan(
        nome: 'Ciborgue',
        arguments: {
          'imagePath': 'assets/ciborgue.png',
          'desc':
              'Vice líder dos Jovens titans,Metade humano, metade robô costumava ser a figura mais séria e inteligente, mas passou a ser um bobo alegre que se diverte com o Mutano, apesar deles discutirem pelo fato do Cyborg gostar mais de hamburger e o Mutano de burrito. Em alguns episódios, ele aparesenta ter uma queda pela Jinx.'
        },
        imagePath: 'assets/ciborgue_avatar.jpg'),
    Titan(
        nome: 'Ravena',
        arguments: {
          'imagePath': 'assets/ravena.png',
          'desc':
              'Nessa série, a Ravena não mudou tanto, continua com a mesma personalidade anti-social e gótica que pode se irritar com facilidade com os seus membros da equipe. Ela inclusive já se separou das suas cinco personalidades, a vermelha que era a raiva e maldosa, a rosa que era a alegria, a roxa que era a paixão, a cinza que era a tristeza e o medo e a laranja que era dorminhoca e porca. No fundo, ela gosta do Mutano, mas não quer admitir pois acha ele um bobão qualquer.'
        },
        imagePath: 'assets/ravena_avatar.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/membros': (context) => Membro(),
      },
      darkTheme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
          appBar: AppBar(
            flexibleSpace: Image(
              filterQuality: FilterQuality.high,
              color: Colors.black26,
              colorBlendMode: BlendMode.softLight,
              image: AssetImage('assets/appBarImage.jpg'),
              fit: BoxFit.cover,
            ),
            backgroundColor: Colors.transparent,
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 21),
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) => Stack(
                    children: [
                      Card(
                        elevation: 10,
                        color: Colors.indigo,
                        margin: EdgeInsets.fromLTRB(28, 0, 0, 28),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 28),
                          child: ListTile(
                            onTap: () {
                              Navigator.pushNamed(context, '/membros',
                                  arguments: titanList[index].arguments);
                            },
                            title: Text(titanList[index].nome),
                            subtitle: Text(titanList[index]
                                    .arguments['desc']
                                    .substring(0, 40) +
                                '...'),
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: CircleAvatar(
                            radius: 28,
                            backgroundImage: AssetImage(
                              titanList[index].imagePath,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          )),
    );
  }
}
