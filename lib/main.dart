import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Page(),

    ),
  );
}

const country=<String>['美國','印度','巴西','法國','德國','英國','俄羅斯','韓國','義大利','土耳其',];
class Page extends StatelessWidget {
  const Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFEFEBE9),
      appBar: AppBar(title: Text("國家列表"),),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: <Widget>[

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.network("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAACeCAMAAAC/1seNAAAAb1BMVEWyIjT///88O2703uHKZnPcmqLiq7LEVWP67/Hr4eeXlrI/PnDu7vLr6/Dy8vWenberqsBLSnlUVICRkK3Pz9tXVoK4uMpEQ3RnZo5wb5XJyNeiorpQT32wsMRkY4xubZOHhqbY2OJ6eZyCgaJ1dZlZ8INYAAADpUlEQVR4nO3d2XLaUBAEUCQ7m8SqJQaDDQT+/xsjgRbQxbFm4lHXVfV5oCrzND3gxHRMMglBJj7isQR4LIFm+zh2ExnO0LlVmu3PZzec4QydW6XZ/u3NDWc4Q+dWqZePp1Pn68Zyhs6tctk8yYKLY94mM56hc6tUz/mizLG8ey3YztC5VeoksyCYdb5uTGfo3CrV7uvg9TVY34cznaFzq1S7bxdxmG7vw5nO0LlVqt13zUPxW3FiPwufPPTo7U6a2s/CwEOPjpVl9rNRHCuJouJP+EUUJXaz0Rwr/DMvx/OT5Ww0xwqTaRBME9vZaI61Kscr29lojnWY7dezg+3M+2PVxdyheBWsDrYz74+12TjPvuUMHVwDVv6hg2vAyj90cI3rsfLj9VfH9zaZ8ezZQyz/JOooZTEXdljO0LlVqt1Z/vVR7c7yr49q99tibrezn3l9rFuDlH/o3CoPcgxS/qFzq3Qy5FEUBUHxkNvNRnOswco/dG6Vboihyj90bhUnxUDlHzq3ipPiMD3vnQLvi2eFbx5yy7+0LOtS21noc+tQYvn3KZZ/Am35N3tQ1hnO0ME16p/8mxffDs3n2e3fJdvO0ME16vJvWf7i98vd68B0hon7f2DlHzq4Rlv+ZZlb1hnO0ME1YOUfOrhGfaykeWjLOsuZ18e6xZ/8+wCs/PvuIZZ/Et1nnOXfP3RDhHlZ1uW2s9Eci+Xfx5wUA5V/6NwqzfYDl3/o3CrN9gOXf+jcKs32/Njv5+rlhy7/0LlVLpsDyj90bpVrkpcHZZ3tDJ1bpY4ydPn3w0Ms/wSa8m8bx1G3rLOcoYNrsPwTYPknwI/9CsDKP3RwDeeVdbqWdanlbDTHGqr8QwfX4Md+BR6Wf5vZyXbm/bGasq74rmjXLfC+eOb9sfZ759m3nP300E35t3TDGc7QBYJKvTzLvx4um+d1MXf77aTtDJ1b5ZqE5V8vdRR+7LeHavf3sph7v89mOkPnVql23y7jeNEt6yxn6Nwq1e5589AynaFzq4Qg6NwqPJYAjyXAYwn8AkG/KdaYYMoOP/FYAjyWAI8lwGMJ8FgCPJYAjyXAYwnwWAI8lsAE/UOtPkG/jyciIiIiIrKC/sdwfMLWQYDHEuCxBHgsAR5LgMcS4LEEeCwBHkuAxxLgsQQm6P9Ewyfo9/FERERERERWnqk3tg4CPJYAjyXAYwnwWAI8lgCPJcBjCfBYAjyWAI8lMHmi3tDv44mIiIiIiAjvLw24O4/KQGb1AAAAAElFTkSuQmCC",height: 50,width: 50,),
                SizedBox(
                  height:75,
                  child:TextButton(
                    onPressed: (){Navigator.of(context).push(_createRoute1());},
                    child: Text("美國",style: TextStyle(fontSize: 30,color: Colors.black),),

                  ),),

              ],
            ),
 ),

        Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.network("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAP8AAACqCAMAAABVlWm8AAAAkFBMVEX/mTMSiAf///8AAIj/u3dgr1lwcLy7u9+qqteNjcpiYrbExONMTKt3d8AfH5bk5PLb2+4uLp3MzOf5+fzr6/Y2NqEKCo0oKJskJJl/f8Pd3e/u7veystvDw+P29vuSksyamtA5OaMUFJFWVrCvr9pfX7TT0+pPT61GRqmHh8ekpNVoaLhBQaaPj8sbG5VaWrIWuSmSAAAEL0lEQVR4nO2a6XbaSBBGne4ZrWhFC0IghBFiM/D+b5dqwdjjeJzkR6bkQ33XBwwS9qlLb9XL0xMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAvhx/yeZJyQb+soG/bEb0jxau5W08y11E4wUxln9qlfqN0kpHimMcfyfRP5J3o0Qyhr9/s09OOkz9NNSn+/sx6gC//9QabC9Rpvq5itW8V1n0PFyzpuzRsPtHOYnOnKpVqbG1zbVUtZUzM42AvSfk9p8bTauu6WW2pKeWHsuMnura1IswZo6H2T8KtS50dyt2lx7V/bdaKofu6MucNyBe/3pmijg1Yz+9s+jh3X93VPPTmG6XNWtEvP47KuB4aOMV1XmXGsCeSp7KPzuYi9mcqseGNSJW/5Za+FWZ8lcRFfySCr6k4qevwTNfShqrK32i5QyJ0z+jUS6kgrYdemN1qgmVKpQKa7UwTWBBncKBKsBzxhgTp/9J693w4kg1PprVqvQb3fgldQtU/KvjcG9CwwNjTIz+UaGL+Da+VaRoeWprZTqztsqjt9XQA6i4p08xZgGM/pXWazVdmMqvrE2TFfbqEus4XNlFNr2ezGXbmSrKjyq+oBj9qWlrKtneo29gunupg9DXNv34YdDsJ5QM2p4ZGU0WxBcUn39KM5wh7Zkeckc166R/XiVd0SWr5z5ZN8peB0P6b9NsiG8mxOd/0Nq9v4xfEicr8262Oq/Pq9LJy8zO1/3bBw9sUfH5U8eezu12YUa3qVvk/u4adEEQOIG3t/PCNYVfL4/2nCrKhC0qPn9q/ibpXVr5pLKbeFK0h3YTFuFkFayKSTxNz9uX7YK+hQXND9miYvNvtOn+B3zropNqGXibYda/OZ3sKtEXy7/dXtM1toUANn/q15O3ya0f7GcT97705U5m+8B/vRdTB8iWArL5x5T8NVGf2k7rVpa3sVzndPc/Oa618azKbR077aOGZklsywDwZ+In9f8sof7/V/+3G/R3Ivo/M/6Z9O/d+Hel8W8nY/z7kP/Y++2Q/3SB9/Iu//EfM//5V1r7T/5bfpb/up/9kz8O7/zHJIC/mv8sHnT+o2a/Pf/la/4jrH8M+5yfrH8sH3n9Iyt00Qte/5K+/vlb69+XB17//nH/wxa2/3Hf/xqK1+x/HfwP+1+Xh97/UnVJLaCXu/953/92pO5//+z8Q3YScP6BaoCZ3s6OH86/HM32yJqz6x8Y9fxTOpx/Sl/PPwUCzj8RaX479Ph6/u12FDKXcf7N0OWSzz8a+uDd+deg//Wf/C98gfPPZ4nnn78K8JcN/GXz9Ldsnr7JBv6ygb9s4C8b+MsG/rKBv2zgLxv4ywb+soG/bOAvG/jLBv6ygb9s4C8b+MsG/rKBv2zgLxv4ywb+soG/bOAvG/jLBv6ygb9s4C8b6f7fAYUo+r9l75WeAAAAAElFTkSuQmCC",height: 50,width: 50,),
                SizedBox(
                  height:75,
                child:TextButton(
                  onPressed: (){Navigator.of(context).push(_createRoute2());},
                  child: Text("印度",style: TextStyle(fontSize: 30,color: Colors.black),),
                ),),
              ],
            ),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.network("data:image/png;base64,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",height: 50,width: 50,),
                SizedBox(
                  height:75,
                  child:TextButton(
                    onPressed: (){Navigator.of(context).push(_createRoute3());},
                    child: Text("巴西",style: TextStyle(fontSize: 30,color: Colors.black),),
                  ),),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.network("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAP8AAACqCAMAAABVlWm8AAAACVBMVEUAJlT////OESaBoDijAAAAxklEQVR4nO3PMQEAAAjAILV/aFPsgwbMFLZwhaTv7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v75/+HwW0qVdTeFEnAAAAAElFTkSuQmCC",height: 50,width: 50,),
                SizedBox(
                  height:75,
                  child:TextButton(
                    onPressed: (){Navigator.of(context).push(_createRoute4());},
                    child: Text("法國",style: TextStyle(fontSize: 30,color: Colors.black),),
                  ),),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.network("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAP8AAACZCAMAAADXexy/AAAACVBMVEUAAADdAAD/zgDGIigcAAAAjklEQVR4nO3PAQ0AIAAEodf+oa3hdtCADQAAAAAAAAAAAAAAAD522vzb/Nv82/zb/Nv82/zb/Nv82/zb/Nv82/zb/Nv82/zb/Nv82/zb/Nv82/zb/Nv82/zbdtv82/zb/Nv82/zb/Nv82/zb/Nv82/zb/Nv82/zb/Nv82/zb/Nv82/zb/Nv82/zb/Nv82x4uIZho613S3wAAAABJRU5ErkJggg==",height: 50,width: 50,),
                SizedBox(
                  height:75,
                  child:TextButton(
                    onPressed: (){Navigator.of(context).push(_createRoute5());},
                    child: Text("德國",style: TextStyle(fontSize: 30,color: Colors.black),),
                  ),),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.network("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAP8AAACACAMAAADzok/sAAAAnFBMVEXIEC7///8BIWnTP1dWa5vxw8vAyNraYHTtr7lneqXrp7LYV2zcZ3pwgqp4ia+ZpsOirsjut8CIl7necILpn6uqtc3VR17XUGaRn75fc6D++vvnl6SAkLQHJm3gd4gMK2/q7fPo6/GzvdLyx84RL3IjP33QNE3KFzX11docOXnc4erPL0n44OQnQn/Y3ejSOlP55OcxS4X77vDM0+Fd+fhZAAAEwklEQVR4nO3da1faQBAG4BDFK6iIFYq1aL3famv//38rtYSE7OxmZ3ZmEs6Z+dBPMfC8idBjdmaz837PW7PT25yvdpZn7We+Kt7KDuOrzo+ulme9mTgveN7//MefwBVjAm34K/pDVz/q9ZYxaCSg72/UL/06CWj7I/Qrv0YCuv4ofcUvn4CmP1K/5m9I4FtqAnr++fA6Tl/zZ9nkRi4BLX9FD3zjjdZRzgFyCej4Edf+07/lHHQolICGP3jttxz9wt/ruwmE74F5Z/2l/nHX1e9BnOzfG0ImcERLQNpffuYD+ndQ/9+PT4B0D8j6g9fepy/8KglI+on6hX86oyVwPcQmIOcn62fTLL89JSaA/RyQ8l/uU/XHT3m2OIFSAjL+JH3+6a8mMAL+P/DIk4CEP1Ff+FUS4PdX9ANXf9CsL/15/iSdALe/QT9z36mjr/oXCUxFE+D10/Und5XTZGsnFU2A00/W99b0dX9SApdqfja9609I4HoYToDLf/n12a+/R+khf0ICz8EEePysethfTWDv3nmRXWICHH5mvc+f53f8CaT7S/3r2PnhlzO83u8XSCDVn6B/8yr9/kUCx8UJWBJI89P1X/z6sJ85gRS/kL7Jz5oA3S+mb/Y3JfAaSGB/PQGyf1tMH+NnS4Dol9TH+ZkSIPm3f0rqY/2VBGYHTgIPg6gECP6V/peMPt7PkADaX+q/Pzj6Cw49xp+cANKvocf58/ztZJXACzoBlJ+s//EbJcL5kxJA+LX0eH9CAqs/sjf6iyPF9RR/QgKxfjU9zZ+YQJxfRb/wb9NqWPw2z/rj3VoNzj5S/R8Hg/pZx6OA/s8R0ZH5zylVsfe/SplfvcxvfvOb3/xd8G+pl/sXpKLu9d+M971YWVlZWVlZWVlZWVlZWVlZWVlZWVlZWW1u6T9y6NbzD/1HTt16/qX/kuY3v/nNb37zt+9PXf8KFLQk9qJcEkv0B5fE0te/pq1/hvRNS6LJ1z+4JJq6/llbn3T/8yeQ0P+A1eP7HxQSIPe/YPW0/hfxBIj9T6A+0BRG738SToDU/0bR0/vfsAkI9b8l6lP6HwUTQPe/xunLpmCe/lcogTFHAtj+Z6BCLdF8/c9gAs4ZyqZgxv5nFn16/ztQwaZwpv53Jj3H/AOBBOLnX0Tqi5EYMvMv2BOInX+SrOeaf8KcQNz8GwY93/wb1gRi5h+x6DnnH2ETIMw/Ytfzzr9CJ4Cbf/WE1B8267nnnwEFjERrTCA8/w6o0Eg83fl3cQmUQ+Ei59+R9frzDxkS8M+/ROrbmX8Zl8C7PwHf/FO0vq35p4kJwPNvBfRy82+RCfjm35bzj0X0kvOPsQkA849vpfWy869jE+jVE6jPP4/TT/B66fnnUALASPR6Auvz74EKjcTv1vz7yASKofDF/Hslvcb+B4QEstBnfkjfzf0vsAlMA89/g9e+s/ufIBPw+rn1evvfoBLw+Dl/73X81f2PEAmAfv5rr+En3QOAH/q+L/Wbsv8ZUMCGcO76z/65c9BqW8TN2v8uLoHaAdAeuSz6NvY/jElAS9/O/pfNCUTqN3b/06YEtPTt7X8bTkBL3+b+x6EEtPTt7n/tT0BL3/b+574EQt/3M0Z9O/6GBPqTv8ulFoK1ElhaAAAAAElFTkSuQmCC",height: 50,width: 50,),
                SizedBox(
                  height:75,
                  child:TextButton(
                    onPressed: (){Navigator.of(context).push(_createRoute6());},
                    child: Text("英國",style: TextStyle(fontSize: 30,color: Colors.black),),
                  ),),
              ],
            ),
          ),
          Container(

            child: Row(

              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.network("data:image/png;base64,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",height: 50,width: 50,),
                SizedBox(
                  height:75,
                  child:TextButton(
                    onPressed: (){Navigator.of(context).push(_createRoute7());},
                    child: Text("俄羅斯",style: TextStyle(fontSize: 30,color: Colors.black),),

                  ),),
              ],
            ),

          ),Container(

            child: Row(

              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.network("data:image/png;base64,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",height: 50,width: 50,),
                SizedBox(
                  height:75,
                  child:TextButton(
                    onPressed: (){Navigator.of(context).push(_createRoute8());},
                    child: Text("韓國",style: TextStyle(fontSize: 30,color: Colors.black),),

                  ),),
              ],
            ),

          ),Container(

            child: Row(

              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.network("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAP8AAACqCAMAAABVlWm8AAAACVBMVEUAkkb////OKzdsRJOSAAAAxklEQVR4nO3PMQEAAAjAILV/aFPsgwbMFLZwhaTv7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v75/+HwW0qVdTeFEnAAAAAElFTkSuQmCC",height: 50,width: 50,),
                SizedBox(
                  height:75,
                  child:TextButton(
                    onPressed: (){Navigator.of(context).push(_createRoute9());},
                    child: Text("義大利",style: TextStyle(fontSize: 30,color: Colors.black),),

                  ),),
              ],
            ),

          ),Container(

            child: Row(

              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.network("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAP8AAACqCAMAAABVlWm8AAAAflBMVEXjChf////kER3jDRr++Pn+9PXwfIPnMTz/+/v1pqr85+j5xsnlHSnmIy/pQErrUlvnKzbua3P3trr3u77zk5nkFiLqS1X97/DvdXzzl53xgon609XubHTuZ2/qR1HmIS384+X2rbLpPUfxiY/0oab5y87619nrUVrtYGjxhoy2x6qNAAADvklEQVR4nO3c63aiMBQFYLlYRFHB+xXRqqPv/4IDSjutHBCGEyBkf79mrWmzsgXTk0DS6QAAAAAAAAAAAAAAAAAAAAAAAAAAgMIM17/tPkK7m+8adfemWpZnb03tB3Nr76y6e1UNY3Hua6T+edH6+8CdpYSPP4KZW3cPRfInWeGfJn7dvRTllCN9ZNDKT+BwzJc+Yh/q7i07b5k/vqYtvbr7y8uZFkkfmTh195mRH2QkNQdrz7ccvWM4rr//nMY3StCeUcDrpYYPZr7+8tPGaXOJ/qu3r6Wz/O5p4XtHP6XgsWbRXbCptp+CrNPu+9kw47fmq7BQWlfWSXFmKfHtrPSR+b2rzSrpokifdPprntHNnWp34R0Ua0/HP8/z/frKlHsQHJlU+gKhTteRwO6JdiAne/0ikYZTiQshcsLTL7bQMV8J6px4HkP88AOQdWFo2CXid0+F25F1UcimLv+47l5VZkTF/yzbqjw3w4CIPyjbfV2aOQF1+c3SQ5nek6UeoFY8yl88XQvkqAcsIn7wOtUvTte0I0PvxKOmfQy1fJhfk2FtUCcq34Bh7I7ydyUoiMbE5ecoZKP82rb890g0YtGnm3POm+mRP7kudCheVYpFLPjaHO0+8/+uIoe7Sf/dYlLFqNGfpfKN8y+/87ofF662Ge2S8U2WL22cPy4k3dWzyGzcMuE5mX/K0vBX/rCUsu7X+N/NGw+3yfwfLA1/5+/9G2Ga9/fQIB74LFha1pMNc5RVzIZEL3nKdiJ/A+thP9nLJUe7+p/kwBJwlBXMbsn829KN6mObeIegkfNh4s9fyeF/fjtSq4lcwyqzFe+31LnZdHiGBSUhNsmO/nf163hT8iHSw7JhdW+MNf9+Il1+1e9/1cc/1f/+qV7/qF7/GsSIrdL8R/X5r/LrH6qvf6m+/qn6+rfyzz9Uf/6l+vNP1Z9/K//+A/nup0Lvvyj//pPq7791TkR+ld5/VP39185B8fef6c0v6rz/zrT/oZErvPnQ+1+WRXa2Sr3/pfz+p9G1aTO7Ykrvf7uJ7Z9wKZt/r3mWg92B9PsfM/a/vjvpZH43m7ew9x9S9z+v3+5/bkN88mn4kxr738NBMOv8g8XrUGicNo/HJ5Jv/f1p9Ob8i93CchxD/33+hTQT3RwUP/8ktC92/k177v0vhc4/atnFf7JyfgJTuUveDGqffxZR+/y7iOGv084/XKeVQ21jefbl1+JY93L2Wn/lX7j+2HucfzoeqRYdAAAAAAAAAAAAAAAAAAAAAAAAAAAq8BfvyTGXMbYFXgAAAABJRU5ErkJggg==",height: 50,width: 50,),
                SizedBox(
                  height:75,
                  child:TextButton(
                    onPressed: (){Navigator.of(context).push(_createRoute10());},
                    child: Text("土耳其",style: TextStyle(fontSize: 30,color: Colors.black),),

                  ),),
              ],
            ),

          ),
        ],
      )
    );
  }
}
Route _createRoute1() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Page1(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("美國資料"),),
        backgroundColor: Color(0xFFD7CCC8),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              height: 100,
              child: const Center(child: Text('資料更新日期:2022-05-25',style:TextStyle(fontSize: 25))),
            ),
            Container(
              height: 100,
              child: const Center(child: Text('總確診數:83,706,662',style:TextStyle(fontSize: 25))),
            ),
            Container(
              height: 100,
              child: const Center(child: Text('總死亡數:1,003,743',style:TextStyle(fontSize: 25))),
            ),
          ],
        )
    );
  }
}





Route _createRoute2() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Page2(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("印度資料"),),
        backgroundColor: Color(0xFFD7CCC8),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              height: 100,
              child: const Center(child: Text('資料更新日期:2022-05-25',style:TextStyle(fontSize: 25))),
            ),
            Container(
              height: 100,
              child: const Center(child: Text('總確診數:43,144,820',style:TextStyle(fontSize: 25))),
            ),
            Container(
              height: 100,
              child: const Center(child: Text('總死亡數:524,525',style:TextStyle(fontSize: 25))),
            ),
          ],
        )
    );
  }
}

Route _createRoute3() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Page3(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("巴西資料"),),
        backgroundColor: Color(0xFFD7CCC8),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              height: 100,
              child: const Center(child: Text('資料更新日期:2022-05-25',style:TextStyle(fontSize: 25))),
            ),
            Container(
              height: 100,
              child: const Center(child: Text('總確診數:30,851,191',style:TextStyle(fontSize: 25))),
            ),
            Container(
              height: 100,
              child: const Center(child: Text('總死亡數:666,261',style:TextStyle(fontSize: 25))),
            ),
          ],
        )
    );
  }
}

Route _createRoute4() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Page4(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("法國資料"),),
        backgroundColor: Color(0xFFD7CCC8),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              height: 100,
              child: const Center(child: Text('資料更新日期:2022-05-25',style:TextStyle(fontSize: 25))),
            ),
            Container(
              height: 100,
              child: const Center(child: Text('總確診數:29,467,642',style:TextStyle(fontSize: 25))),
            ),
            Container(
              height: 100,
              child: const Center(child: Text('總死亡數:148,125',style:TextStyle(fontSize: 25))),
            ),
          ],
        )
    );
  }
}

Route _createRoute5() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Page5(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("德國資料"),),
        backgroundColor: Color(0xFFD7CCC8),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              height: 100,
              child: const Center(child: Text('資料更新日期:2022-05-25',style:TextStyle(fontSize: 25))),
            ),
            Container(
              height: 100,
              child: const Center(child: Text('總確診數:26,198,811',style:TextStyle(fontSize: 25))),
            ),
            Container(
              height: 100,
              child: const Center(child: Text('總死亡數:138,779',style:TextStyle(fontSize: 25))),
            ),
          ],
        )
    );
  }
}

Route _createRoute6() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Page6(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
class Page6 extends StatelessWidget {
  const Page6({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("英國資料"),),
        backgroundColor: Color(0xFFD7CCC8),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              height: 100,
              child: const Center(child: Text('資料更新日期:2022-05-25',style:TextStyle(fontSize: 25))),
            ),
            Container(
              height: 100,
              child: const Center(child: Text('總確診數:22,352,993',style:TextStyle(fontSize: 25))),
            ),
            Container(
              height: 100,
              child: const Center(child: Text('總死亡數:178,489',style:TextStyle(fontSize: 25))),
            ),
          ],
        )
    );
  }
}

Route _createRoute7() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Page7(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
class Page7 extends StatelessWidget {
  const Page7({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("俄羅斯資料"),),
        backgroundColor: Color(0xFFD7CCC8),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              height: 100,
              child: const Center(child: Text('資料更新日期:2022-05-25',style:TextStyle(fontSize: 25))),
            ),
            Container(
              height: 100,
              child: const Center(child: Text('總確診數:18,038,920',style:TextStyle(fontSize: 25))),
            ),
            Container(
              height: 100,
              child: const Center(child: Text('總死亡數:370,972',style:TextStyle(fontSize: 25))),
            ),
          ],
        )
    );
  }
}

Route _createRoute8() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Page8(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
class Page8 extends StatelessWidget {
  const Page8({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("韓國資料"),),
        backgroundColor: Color(0xFFD7CCC8),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              height: 100,
              child: const Center(child: Text('資料更新日期:2022-05-25',style:TextStyle(fontSize: 25))),
            ),
            Container(
              height: 100,
              child: const Center(child: Text('總確診數:18,036,720',style:TextStyle(fontSize: 25))),
            ),
            Container(
              height: 100,
              child: const Center(child: Text('總死亡數:24,063',style:TextStyle(fontSize: 25))),
            ),
          ],
        )
    );
  }
}

Route _createRoute9() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Page9(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
class Page9 extends StatelessWidget {
  const Page9({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("義大利資料"),),
        backgroundColor: Color(0xFFD7CCC8),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              height: 100,
              child: const Center(child: Text('資料更新日期:2022-05-25',style:TextStyle(fontSize: 25))),
            ),
            Container(
              height: 100,
              child: const Center(child: Text('總確診數:17,312,432',style:TextStyle(fontSize: 25))),
            ),
            Container(
              height: 100,
              child: const Center(child: Text('總死亡數:166,264',style:TextStyle(fontSize: 25))),
            ),
          ],
        )
    );
  }
}

Route _createRoute10() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Page10(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
class Page10 extends StatelessWidget {
  const Page10({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("土耳其資料"),),
        backgroundColor: Color(0xFFD7CCC8),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              height: 100,
              child: const Center(child: Text('資料更新日期:2022-05-25',style:TextStyle(fontSize: 25))),
            ),
            Container(
              height: 100,
              child: const Center(child: Text('總確診數:15,066,784',style:TextStyle(fontSize: 25))),
            ),
            Container(
              height: 100,
              child: const Center(child: Text('總死亡數:98,943',style:TextStyle(fontSize: 25))),
            ),
          ],
        )
    );
  }
}