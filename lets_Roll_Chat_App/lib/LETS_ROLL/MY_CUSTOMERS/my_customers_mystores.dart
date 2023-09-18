import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyStores {
  final String imageURL;
  final String sellerName;
  final String dateTime;
  final String? description; 
  final int inquireCustomer;
  final int order;

  MyStores({
    required this.imageURL,
    required this.sellerName,
    required this.dateTime,
    this.description,
    required this.inquireCustomer,
    required this.order,
  });
}

class MyCustomersMyStores extends StatefulWidget {
  const MyCustomersMyStores({super.key});

  @override
  State<MyCustomersMyStores> createState() =>
      _MyCustomersMyStoresState();
}

class _MyCustomersMyStoresState extends State<MyCustomersMyStores> {
  final List<MyStores> myStores = [
    MyStores(
        imageURL:
            'https://img.freepik.com/free-photo/african-american-man-wearing-stylish-hat_23-2148634061.jpg?w=740&t=st=1688058987~exp=1688059587~hmac=a75950e5fc90a6ac5b89ec712e0df60ada8ad7df48abe292072695a2715446cd',
        sellerName: 'Irma Flores',
        dateTime: '09:08pm',
        inquireCustomer: 2,
        order: 16),
    MyStores(
        imageURL:
            'https://img.freepik.com/free-photo/african-american-man-wearing-stylish-hat_23-2148634061.jpg?w=740&t=st=1688058987~exp=1688059587~hmac=a75950e5fc90a6ac5b89ec712e0df60ada8ad7df48abe292072695a2715446cd',
        sellerName: 'Ronald Robertson',
        dateTime: 'Today',
        inquireCustomer: 2,
        order: 16),
    MyStores(
        imageURL:
            'https://img.freepik.com/free-photo/african-american-man-wearing-stylish-hat_23-2148634061.jpg?w=740&t=st=1688058987~exp=1688059587~hmac=a75950e5fc90a6ac5b89ec712e0df60ada8ad7df48abe292072695a2715446cd',
        sellerName: 'Johnny Dartson',
        dateTime: 'Yesterday',
        inquireCustomer: 2,
        order: 16),
    MyStores(
        imageURL:
            'https://img.freepik.com/free-photo/african-american-man-wearing-stylish-hat_23-2148634061.jpg?w=740&t=st=1688058987~exp=1688059587~hmac=a75950e5fc90a6ac5b89ec712e0df60ada8ad7df48abe292072695a2715446cd',
        sellerName: 'Annette Cooper',
        dateTime: '20/May/2019',
        inquireCustomer: 2,
        order: 16),
    MyStores(
        imageURL:
            'https://img.freepik.com/free-photo/african-american-man-wearing-stylish-hat_23-2148634061.jpg?w=740&t=st=1688058987~exp=1688059587~hmac=a75950e5fc90a6ac5b89ec712e0df60ada8ad7df48abe292072695a2715446cd',
        sellerName: 'Authur Bell',
        dateTime: '18/Dec/2019',
        inquireCustomer: 2,
        order: 16),
    MyStores(
        imageURL:
            'https://img.freepik.com/free-photo/african-american-man-wearing-stylish-hat_23-2148634061.jpg?w=740&t=st=1688058987~exp=1688059587~hmac=a75950e5fc90a6ac5b89ec712e0df60ada8ad7df48abe292072695a2715446cd',
        sellerName: 'Jane Warren',
        dateTime: '17/Jun/2019',
        inquireCustomer: 2,
        order: 16),
    MyStores(
        imageURL:
            'https://img.freepik.com/free-photo/african-american-man-wearing-stylish-hat_23-2148634061.jpg?w=740&t=st=1688058987~exp=1688059587~hmac=a75950e5fc90a6ac5b89ec712e0df60ada8ad7df48abe292072695a2715446cd',
        sellerName: 'Annette Cooper',
        dateTime: '12/May/2019',
        inquireCustomer: 2,
        order: 16),
    MyStores(
        imageURL:
            'https://img.freepik.com/free-photo/african-american-man-wearing-stylish-hat_23-2148634061.jpg?w=740&t=st=1688058987~exp=1688059587~hmac=a75950e5fc90a6ac5b89ec712e0df60ada8ad7df48abe292072695a2715446cd',
        sellerName: 'Johnny Dartson',
        dateTime: 'Yesterday',
        inquireCustomer: 2,
        order: 16),
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return ListView.builder(
      itemCount: myStores.length,
      itemBuilder: (context, index) {
        //This contains the whole list tile including the divider
        return InkWell(
          onTap: () {
            context.go('/mycustomersinquiresPage');
          },
          child: Container(
            color: Colors.white,
            child: Column(
              children: [ 
                Container(
                  padding: const EdgeInsets.all(10),
                  width: screenWidth,
                  child: Column(
                    children: [
                      //This row contains the circle avatar and text
                      Row(
                        children: [
                          //This is for the profile picture
                          Container(
                            margin: const EdgeInsets.only(right: 18),
                            child: CircleAvatar(
                              radius: 27,
                              backgroundImage:
                                  NetworkImage(myStores[index].imageURL),
                            ),
                          ),
                          //This is for the name, date/time and text
                          SizedBox(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //This is for the name and date/time
                                  SizedBox(
                                    width: screenWidth *
                                        0.77, //This sets the width of this container
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          myStores[index].sellerName,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              myStores[index].dateTime,
                                              style: const TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 124, 124, 124)),
                                            ),
                                            const Icon(Icons.keyboard_arrow_right,
                                                color: Color.fromARGB(
                                                    255, 155, 155, 155)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  //This is for the text
                                  SizedBox(
                                    // used a column to allow for instances when there are two text widgets.
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: screenWidth * 0.66,
                                          child: Text(
                                            'Inquires from Customer: ${myStores[index].inquireCustomer}',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            softWrap: true,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                color: Color.fromARGB(
                                                    255, 124, 124, 124)),
                                          ),
                                        ),
                                        SizedBox(
                                          width: screenWidth * 0.66,
                                          child: Text(
                                            'MakersTrust Order: ${myStores[index].order}',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            softWrap: true,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                color: Color.fromARGB(
                                                    255, 124, 124, 124)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                          ),
                        ],
                      ),
                      //This row contains the people icon
                      const SizedBox(child: Row()),
                    ],
                  ),
                ),
                const MyDivider(),
              ],
            ),
          ),
        );
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
        padding: EdgeInsets.only(left: 20, top: 12, bottom: 12),
        child: Divider(
          thickness: 0.8,
          height: 0,
          color: Color.fromARGB(136, 155, 155, 155),
        ));
  }
}
