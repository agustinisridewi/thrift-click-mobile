import 'package:flutter/material.dart';
import 'package:thrift_click/screens/menu.dart';
import 'package:thrift_click/screens/productentry_form.dart';
import 'package:thrift_click/screens/list_productentry.dart';


class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            // TODO: Bagian drawer header
            decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
          ),
          child: const Column(
            children: [
              Text(
                'Thrift Click',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFFF9C4),
                ),
              ),
              Padding(padding: EdgeInsets.all(8)),
              Text(
                "Upgrade, Curate, and Elevate Your Wardrobe!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          ),

            // TODO: Bagian routing
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.add),
            title: const Text('Add Product'),
            // Bagian redirection ke ProductEntryFormPage
            onTap: () {
               Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> const ProductEntryFormPage())
              );
            },
          ),
          ListTile(
          leading: const Icon(Icons.add_reaction_rounded),
          title: const Text('See Product List'),
          onTap: () {
              // Route menu ke halaman mood
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProductEntryPage()),
              );
          },
      ),
        ],
      ),
    );
  }
}