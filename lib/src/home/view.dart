import 'package:adaptive_components/adaptive_components.dart';
import 'package:flutter/material.dart';
import 'package:peru/src/shared/models/item.dart';
import 'package:peru/src/shared/widgets/brightness_toggle.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Item> items = [
    Item(
      id: 1,
      name: "Machu Pichu",
      description:
          "Machu Picchu is a 15th-century Inca citadel located in the Eastern Cordillera of southern Peru on a 2,430-meter (7,970 ft) mountain ridge.",
      image:
          "https://images.unsplash.com/photo-1526392060635-9d6019884377?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740",
    ),
    Item(
      id: 2,
      name: "Vinicunca - Cusco",
      description:
          "Vinicunca o Winikunka, llamada también montaña de siete colores, montaña arcoíris o montaña de colores (los pobladores le llaman Cerro Colorado)",
      image:
          "https://images.unsplash.com/photo-1545330785-15356daae141?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1890",
    ),
    Item(
      id: 3,
      name: "Lima Perú",
      description:
          "April 4, 2022 - Lima (/ˈliːmə/ LEE-mə; Spanish pronunciation: [ˈlima]) is the capital and the largest city of Peru.",
      image:
          "https://images.unsplash.com/photo-1531968455001-5c5272a41129?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1806",
    ),
  ];

  List<Item> items1 = [
    Item(
      id: 1,
      name: "Machu Pichu",
      description:
          "Machu Picchu is a 15th-century Inca citadel located in the Eastern Cordillera of southern Peru on a 2,430-meter (7,970 ft) mountain ridge.",
      image:
          "https://images.unsplash.com/photo-1526392060635-9d6019884377?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740",
    ),
    Item(
      id: 2,
      name: "Vinicunca - Cusco",
      description:
          "Vinicunca o Winikunka, llamada también montaña de siete colores, montaña arcoíris o montaña de colores (los pobladores le llaman Cerro Colorado)",
      image:
          "https://images.unsplash.com/photo-1545330785-15356daae141?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1890",
    ),
    Item(
      id: 3,
      name: "Lima Perú",
      description:
          "April 4, 2022 - Lima (/ˈliːmə/ LEE-mə; Spanish pronunciation: [ˈlima]) is the capital and the largest city of Peru.",
      image:
          "https://images.unsplash.com/photo-1531968455001-5c5272a41129?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1806",
    ),
    Item(
        id: 4,
        name: "Isla los Uros",
        description:
            "The Uru or Uros (Uru: Qhas Qut suñi) are an indigenous people of Peru and Bolivia.",
        image:
            "https://images.unsplash.com/photo-1553550755-e6c236f88586?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHVub3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800"),
    Item(
        id: 5,
        name: "Volcan misti- Arequipa",
        description:
            "Misti, also known as Putina or Guagua Putina, is a stratovolcano of andesite, dacite, and rhyolite located in southern Peru near the city of Arequipa.",
        image:
            "https://images.unsplash.com/photo-1563818708336-3e3449ca7eb4?ixlib=rb-1.2.1&raw_url=true&q=80&fm=jpg&crop=entropy&cs=tinysrgb&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740"),
    Item(
        id: 6,
        name: "Ilo",
        description:
            "Ilo es una ciudad peruana, capital del distrito y de la provincia homónimos en el departamento de Moquegua.",
        image:
            "https://images.unsplash.com/photo-1590373366843-8c0a009ebe35?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGlsb3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800"),
    Item(
        id: 6,
        name: "Colca - Arequipa",
        description:
            "The Colca Canyon is a canyon of the Colca River in southern Peru, located about 160 kilometres (99 mi) northwest of Arequipa. ",
        image:
            "https://images.unsplash.com/photo-1563106254-9bffcc4994fa?ixlib=rb-1.2.1&raw_url=true&q=80&fm=jpg&crop=entropy&cs=tinysrgb&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740"),
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Peru"),
          actions: const [BrightnessToggle()],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        body: SingleChildScrollView(
          child: AdaptiveColumn(
            gutter: 20,
            children: [
              AdaptiveContainer(
                columnSpan: 12,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * .4,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      "https://images.unsplash.com/photo-1526392060635-9d6019884377?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              ...items
                  .map(
                    (e) => AdaptiveContainer(
                      columnSpan: 4,
                      child: ListTile(
                        onTap: () {},
                        title: Text(e.name),
                        subtitle: Text(
                          e.description,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontWeight: FontWeight.w300),
                        ),
                        leading: SizedBox(
                          width: 40,
                          height: 40,
                          child: ClipOval(
                            child: Image.network(
                              e.image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
              AdaptiveContainer(
                columnSpan: 12,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Mas Visitados",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              AdaptiveContainer(
                columnSpan: 12,
                child: SizedBox(
                  height: 400,
                  child: ListView.separated(
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 15),
                      scrollDirection: Axis.horizontal,
                      itemCount: items1.length,
                      itemBuilder: (context, index) {
                        final Item item = items1[index];
                        return Card(
                          child: SizedBox(
                            width: 200,
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                  child: Image.network(
                                    item.image,
                                    height: 180,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                    alignment: Alignment.bottomCenter,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                ListTile(
                                  title: Text(
                                    item.name,
                                    textAlign: TextAlign.center,
                                  ),
                                  subtitle: Text(
                                    item.description,
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    style: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
