import 'package:flutter/material.dart';

String url =
    "https://images.unsplash.com/photo-1595341888016-a392ef81b7de?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHNob2VzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60";

class InquiresListTile extends StatelessWidget {
  final String? name;
  const InquiresListTile({
    this.name,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5, left: 8),
            child: Text(
              name ?? '',
              style: const TextStyle(color: Color(0xFF3C3C43)),
            ),
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(10),
            height: 120,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Image.network(url, width: 110),
                  const SizedBox(height: 10),
                  const Text("Yesterday | 12:39pm",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff3C3C43)))
                ]),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: 200,
                        child: Text(
                            "Fine looking jacket from Paco Rabane. Hottest trend for upcoming summer 2018.",
                            style:
                                TextStyle(color: Colors.black, fontSize: 15))),
                    Text(
                      "GHC 890000000.95",
                      style: TextStyle(color: Color(0xff3B03DB)),
                    )
                  ],
                )
              ],
            ),
          )
        ]));
  }
}
