import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

String url =
    "https://images.unsplash.com/photo-1595341888016-a392ef81b7de?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHNob2VzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60";

String testDescription =
    'This is the first phrase or sentence of my chat that is hidden inside this...';

class Inquires {
  final String imageURL;
  final String price;
  final String dateTime; 
  final String description;

  Inquires({
    required this.imageURL,
    required this.price,
    required this.dateTime,
    required this.description,
  });
}

class ProvidersInquiresToSeller extends StatefulWidget {
  const ProvidersInquiresToSeller({super.key});

  @override
  State<ProvidersInquiresToSeller> createState() => _ProvidersInquiresToSellerState();
}

class _ProvidersInquiresToSellerState extends State<ProvidersInquiresToSeller> {
  final List<Inquires> inquires = [
    Inquires(
      imageURL: url,
      price: "GHC 890000000.95",
      dateTime: "Yesterday | 12:39pm",
      description:
          "Fine looking jacket from Paco Rabane. Hottest trend for upcoming summer 2018.",
    ),
    Inquires(
      imageURL: url,
      price: "GHC 890000000.95",
      dateTime: "Yesterday | 12:39pm",
      description:
          "Fine looking jacket from Paco Rabane. Hottest trend for upcoming summer 2018.",
    ),
    Inquires(
      imageURL: url,
      price: "GHC 890000000.95",
      dateTime: "Yesterday | 12:39pm",
      description:
          "Fine looking jacket from Paco Rabane. Hottest trend for upcoming summer 2018.",
    ),
    Inquires(
      imageURL: url,
      price: "GHC 890000000.95",
      dateTime: "Yesterday | 12:39pm",
      description:
          "Fine looking jacket from Paco Rabane. Hottest trend for upcoming summer 2018.",
    ),
    Inquires(
      imageURL: url,
      price: "GHC 890000000.95",
      dateTime: "Yesterday | 12:39pm",
      description:
          "Fine looking jacket from Paco Rabane. Hottest trend for upcoming summer 2018.",
    ),
    Inquires(
      imageURL: url,
      price: "GHC 890000000.95",
      dateTime: "Yesterday | 12:39pm",
      description:
          "Fine looking jacket from Paco Rabane. Hottest trend for upcoming summer 2018.",
    ),
    Inquires(
      imageURL: url,
      price: "GHC 890000000.95",
      dateTime: "Yesterday | 12:39pm",
      description:
          "Fine looking jacket from Paco Rabane. Hottest trend for upcoming summer 2018.",
    ),
    Inquires(
      imageURL: url,
      price: "GHC 890000000.95",
      dateTime: "Yesterday | 12:39pm",
      description:
          "Fine looking jacket from Paco Rabane. Hottest trend for upcoming summer 2018.",
    ),
    Inquires(
      imageURL: url,
      price: "GHC 890000000.95",
      dateTime: "Yesterday | 12:39pm",
      description:
          "Fine looking jacket from Paco Rabane. Hottest trend for upcoming summer 2018.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return ListView.builder(
      itemCount: inquires.length,
      itemBuilder: (context, index) {
        //This contains the whole list tile including the divider
        return InkWell(
            onTap: () {
              context.go('/providersmessaging');
            },
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 30, left: 30),
                  width: screenWidth,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: Container(
                                width: 90,
                                height: 70,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          inquires[index].imageURL),
                                      fit: BoxFit.cover),
                                ),
                              )),
                          SizedBox(
                            width: screenWidth * 0.61,
                            child: Text(
                              inquires[index].description,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                              softWrap: true,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: screenWidth * 0.90,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(inquires[index].dateTime,
                                style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff3C3C43))),
                            Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                inquires[index].price,
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff3B03DB)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const MyDivider(),
              ],
            ));
      },
    );
  }
}

class MyDivider extends StatelessWidget {
  const MyDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 12),
        child: Divider(
          thickness: 0.8,
          height: 0,
          color: Color.fromARGB(136, 155, 155, 155),
        ));
  }
}
