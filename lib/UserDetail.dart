import 'package:flutter/material.dart';

import 'models/user.dart';

class UserDetail extends StatelessWidget {
  final User user;

  const UserDetail({Key? key, required this.user}) : super(key: key);

  Widget cardUser(User user) {
    return Card(
      elevation: 6,
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.account_box,
                            color: Colors.pink,
                            size: 50,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Personal Information', // Replace with user's name
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.pink),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '   Name: ${user.name}', // Replace with user's name
                        style: const TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        '   Username: ${user.username}', // Replace with user's name
                        style: const TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        '   Email: ${user.email}', // Replace with user's name
                        style: const TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        '   Phone: ${user.phone}', // Replace with user's name
                        style: const TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        '   Webside: ${user.website}', // Replace with user's name
                        style: const TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      // SizedBox(height: 8),
                    ]))));
  }

  Widget cardAddress(User user) {

    return Card(
      elevation: 6,
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.place,
                            color: Colors.pink,
                            size: 50,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Address', // Replace with user's name
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.pink),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '   Street: ${user.address.street}\n   Suite: ${user.address.suite}\n   City: ${user.address.city}\n   Zipcode: ${user.address.zipcode}', // Replace with user's name
                        style: const TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        '   lat: ${user.address.geo.lat}', // Replace with user's name
                        style: const TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        '   Ing: ${user.address.geo.lng}', // Replace with user's name
                        style: const TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      // SizedBox(height: 8),
                    ]))));
  }

  Widget cardCompany(User user) {
    return Card(
      elevation: 6,
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.work,
                            color: Colors.pink,
                            size: 50,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Company', // Replace with user's name
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.pink),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '   Name: ${user.company.name}', // Replace with user's name
                        style: const TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        '   CatchPhrease: ${user.company.catchPhrase}', // Replace with user's name
                        style: const TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        '   Bs: ${user.company.bs}', // Replace with user's name
                        style: const TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      // SizedBox(height: 8),
                    ]))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // title: const Text('My Profile')
        title: Text(user.name),
      ),
      backgroundColor: const Color.fromARGB(255, 244, 98, 195),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              const SizedBox(height: 20),
              const CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                    'https://static.toiimg.com/thumb/msid-99964493,width-1280,resizemode-4/99964493.jpg'), // Replace with actual image URL
              ),
              const SizedBox(height: 10),
              Text(
                user.name, // Replace with user's name
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              Text(
                user.email, // Replace with user's role or bio
                style: const TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              const SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: cardUser(user),
              ),
              const SizedBox(height: 2),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: cardAddress(user),
              ),
              const SizedBox(height: 2),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: cardCompany(user),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
