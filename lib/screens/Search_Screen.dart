import 'package:flutter/material.dart';
import '../models/candi.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
 // TODO: 1. Deklarasikan variabel yang dibutuhkan
  List<Candi> _filteredCandi = [];
  String _searchQuery = '';
  final TextEditingController _searhController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: 2. Buat appbar dengan judul Pencarian Candi
      appBar: AppBar(title: Text('Pencarian Candi'),),
      // TODO: 3. Buat body berupa Column
      body: Column(
        children: [
      // TODO: 4. Buat TextField pencarian sebagai anak dari Column
          Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(
               horizontal: 16, vertical: 12),
             child: TextField(autofocus: false,
               decoration: InputDecoration(
                 hintText: 'Cari Candi',
                 prefixIcon: Icon(Icon.search),
                 border: InputBorder.none,
                 focusedBorder: OutlineInputBorder(
                   borderSide: BorderSide(color: Colors.deepPurple),
                 ),
               )),
      ),
    ),
    // TODO: 5. Buat ListView hasil pencarian sebagai anak dari Column
            ),
          ),

         ],
       ),
     );
  }
}
