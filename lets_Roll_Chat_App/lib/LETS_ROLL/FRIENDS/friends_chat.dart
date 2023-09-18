import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

String testDescription =
    'This is the first phrase or sentence of my chat that is hidden inside this ...';

class Chats {
  final String imageURL;
  final String name;
  final String dateTime;
  final String? description;
  final Widget? icon;

  Chats({
    required this.imageURL,
    required this.name,
    required this.dateTime, 
    this.description,
    this.icon,
  });
}

class FriendsChats extends StatefulWidget {
  const FriendsChats({super.key});

  @override
  State<FriendsChats> createState() => _FriendsChatsState();
}

class _FriendsChatsState extends State<FriendsChats> {
  final List<Chats> chats = [
    Chats(
        imageURL:
            'https://img.freepik.com/free-photo/african-american-man-wearing-stylish-hat_23-2148634061.jpg?w=740&t=st=1688058987~exp=1688059587~hmac=a75950e5fc90a6ac5b89ec712e0df60ada8ad7df48abe292072695a2715446cd',
        name: 'Irma Flores',
        icon: followerChatIcon,
        dateTime: '09:08pm',
        description: testDescription),
    Chats(
        imageURL:
            'https://img.freepik.com/free-photo/african-american-man-wearing-stylish-hat_23-2148634061.jpg?w=740&t=st=1688058987~exp=1688059587~hmac=a75950e5fc90a6ac5b89ec712e0df60ada8ad7df48abe292072695a2715446cd',
        name: 'Ronald Robertson',
        dateTime: 'Today',
        description: testDescription),
    Chats(
        imageURL:
            'https://img.freepik.com/free-photo/african-american-man-wearing-stylish-hat_23-2148634061.jpg?w=740&t=st=1688058987~exp=1688059587~hmac=a75950e5fc90a6ac5b89ec712e0df60ada8ad7df48abe292072695a2715446cd',
        name: 'Johnny Dartson',
        dateTime: 'Yesterday',
        description: testDescription),
    Chats(
        imageURL:
            'https://img.freepik.com/free-photo/african-american-man-wearing-stylish-hat_23-2148634061.jpg?w=740&t=st=1688058987~exp=1688059587~hmac=a75950e5fc90a6ac5b89ec712e0df60ada8ad7df48abe292072695a2715446cd',
        name: 'Annette Cooper',
        dateTime: '20/May/2019',
        description: testDescription),
    Chats(
        imageURL:
            'https://img.freepik.com/free-photo/african-american-man-wearing-stylish-hat_23-2148634061.jpg?w=740&t=st=1688058987~exp=1688059587~hmac=a75950e5fc90a6ac5b89ec712e0df60ada8ad7df48abe292072695a2715446cd',
        name: 'Authur Bell',
        dateTime: '18/Dec/2019',
        description: testDescription),
    Chats(
        imageURL:
            'https://img.freepik.com/free-photo/african-american-man-wearing-stylish-hat_23-2148634061.jpg?w=740&t=st=1688058987~exp=1688059587~hmac=a75950e5fc90a6ac5b89ec712e0df60ada8ad7df48abe292072695a2715446cd',
        name: 'Jane Warren',
        dateTime: '17/Jun/2019',
        description: testDescription),
    Chats(
        imageURL:
            'https://img.freepik.com/free-photo/african-american-man-wearing-stylish-hat_23-2148634061.jpg?w=740&t=st=1688058987~exp=1688059587~hmac=a75950e5fc90a6ac5b89ec712e0df60ada8ad7df48abe292072695a2715446cd',
        name: 'Annette Cooper',
        dateTime: '12/May/2019',
        description: testDescription),
    Chats(
        imageURL:
            'https://img.freepik.com/free-photo/african-american-man-wearing-stylish-hat_23-2148634061.jpg?w=740&t=st=1688058987~exp=1688059587~hmac=a75950e5fc90a6ac5b89ec712e0df60ada8ad7df48abe292072695a2715446cd',
        name: 'Johnny Dartson',
        dateTime: 'Yesterday',
        description: testDescription),
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) {
        //This contains the whole list tile including the divider
        return InkWell(
          onTap: () {
            context.go('/friendsmessaging');
          },
          child: Column(
            children: [
              Container(
                color: Colors.white,
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 23),
                width: screenWidth,
                child: Stack(
                  alignment: const Alignment(0, 2),
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
                                NetworkImage(chats[index].imageURL),
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
                                        chats[index].name,
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
                                            chats[index].dateTime,
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
                                        width: screenWidth * 0.72,
                                        child: Text(
                                          '${chats[index].description}',
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
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
                    chats[index].icon ??
                        const SizedBox(
                          width: 2,
                        ),
                  ],
                ),
              ),
              const MyDivider(),
            ],
          ),
        );
      },
    );
  }
}

Widget followerChatIcon = Container(
    padding: const EdgeInsets.only(right: 8),
    width: 500,
    child: const Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Icon(
          Icons.people_outline_outlined,
          color: Color.fromARGB(255, 155, 155, 155),
          size: 26,
        ),
      ],
    ));

class MyDivider extends StatelessWidget {
  const MyDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.only(left: 20, bottom: 7),
        child: Divider(
          thickness: 0.8,
          height: 0,
          color: Color.fromARGB(136, 155, 155, 155),
        ));
  }
}
