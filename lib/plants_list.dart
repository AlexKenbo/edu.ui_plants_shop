import 'package:flutter/material.dart';
import 'package:ui_plants_shop/plant_detail.dart';

class PlantList extends StatefulWidget {
  PlantList({Key key}) : super(key: key);

  _PlantListState createState() => _PlantListState();
}

class _PlantListState extends State<PlantList> {
  ScrollController _scrollController;

  List allDescriptions = [
    'Aloe vera is a succelent plant of the genus Aloe. I\'ts medicinal uses and air purifying ability make it the plant that you shouldn\'t live without.',
    'Collectively known as fig trees or figs, they are native throughout the tropics with a few species extending into the semi-warm temperate zone. The common fig (F. carica) is a temperate species native to southwest Asia and the Mediterranean region (from Afghanistan to Portugal), which has been widely cultivated from ancient times for its fruit, also referred to as figs.',
    'Flowering plants generate gametes using a specialized cell division called meiosis. Meiosis takes place in the ovule (a structure within the ovary that is located within the pistil at the center of the flower) (see diagram labeled "Angiosperm lifecycle"). A diploid cell (megaspore mother cell) in the ovule undergoes meiosis (involving two successive cell divisions) to produce four cells (megaspores) with haploid nuclei.'
  ];

  String description;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController()
    ..addListener(changeDesc);
    setState(() {
      description = allDescriptions[0];
    });
  }

  changeDesc() {
    var value = _scrollController.offset.round();
    var descIndex = (value / 190).round();
    print(value);
    setState(() {
      description = allDescriptions[descIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 350,
          child: ListView(
            controller: _scrollController,
            padding: EdgeInsets.only(left: 25),
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              getPlantCard(
                  'assets/whiteplant.png', '25', 'OUTDOOR', 'Aloe Vera'),
              SizedBox(width: 15,),    
              getPlantCard(
                  'assets/smallplant.png', '35', 'INDOOR', 'Ficus'),
              SizedBox(width: 15,),   
              getPlantCard(
                  'assets/flowerplant.png', '15', 'INDOOR', 'Flower'),
              SizedBox(width: 100,),   
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 25, top:10),
          child: Text('Description', style: TextStyle(
            fontFamily: 'Montserrat',
            color: Colors.black,
            fontSize: 17,
            fontWeight: FontWeight.w500,
          )),
        ),
        Padding(
          padding: EdgeInsets.only(left: 25, top:10, right: 20),
          child: Text(description, style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 14,
            fontWeight: FontWeight.w500,
          )),
        ),
      ],
    );
  }

  Widget getPlantCard(
      String imgPath, String price, String plantType, String plantName) {
    return Stack(
      children: <Widget>[
        Container(
          height: 325,
          width: 225,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFF399D63),
            ),
            height: 250,
            width: 225,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Text('FROM',
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF8ac7a4))),
                        Text('\$$price',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                color: Colors.white)),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                Image(
                  image: AssetImage(imgPath),
                  height: 165,
                  fit: BoxFit.cover,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(plantType,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF8ac7a4))
                        ),
                        Text(plantName,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white)
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: <Widget>[
                    SizedBox(width: 25,),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFF8ac7a4),
                          style: BorderStyle.solid,
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFF399D63),
                      ),
                      child: Icon(Icons.wb_sunny, color: Colors.white.withOpacity(0.4), size:20),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFF8ac7a4),
                          style: BorderStyle.solid,
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFF399D63),
                      ),
                      child: Icon(Icons.branding_watermark, color: Colors.white.withOpacity(0.4), size:20),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFF8ac7a4),
                          style: BorderStyle.solid,
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFF399D63),
                      ),
                      child: Icon(Icons.hot_tub, color: Colors.white.withOpacity(0.4), size:20),
                    ),
                    SizedBox(width: 10,),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> PlantDetail()));
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(color: Color(0xFF399d63)),
                        child: Icon(Icons.help_outline, color: Colors.white.withOpacity(.4), size:20),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 90, top: 300),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.black
            ),
            child: Center(
              child: Icon(Icons.shopping_cart, color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
