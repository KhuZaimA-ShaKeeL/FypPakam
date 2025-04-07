import 'package:flutter/material.dart';
import '../../components/DekstopSidebar.dart';
import '../../components/DesktopAppBarIntroWidget.dart';
import '../../components/DesktopAppbarWidget.dart';
class Desktophelp extends StatefulWidget {
  const Desktophelp({super.key});

  @override
  State<Desktophelp> createState() => _DesktophelpState();
}

class _DesktophelpState extends State<Desktophelp> {
  final TextEditingController searchController = TextEditingController();
  bool isFaqExpanded = false;

  // Sample list of topics for search suggestions
  final List<String> allTopics = [
    "Setting Bots",
    "Whatsapp Login",
    "Telegram Setup",
    "General Usage",
    "FAQ",
    "User Guide",
    "Account Settings",
    "Privacy Settings",
    "Troubleshooting",
  ];

  // List to hold filtered suggestions
  List<String> filteredSuggestions = [];

  @override
  void initState() {
    super.initState();
    filteredSuggestions = allTopics; // Initialize with all topics
    searchController.addListener(_filterSuggestions); // Listen for changes in the search input
  }

  // Function to filter suggestions based on the search query
  void _filterSuggestions() {
    setState(() {
      filteredSuggestions = allTopics
          .where((topic) =>
          topic.toLowerCase().contains(searchController.text.toLowerCase()))
          .toList();
    });
  }

  @override
  void dispose() {
    searchController.removeListener(_filterSuggestions); // Remove the listener when disposed
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 8),
        // Adding margin for the main body
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // AppBar
            Desktopappbarwidget(),
            SizedBox(height: 20), // Space between AppBar and main content

            // Row to split Sidebar and Content
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Left Sidebar with scrollable content
                  Expanded(
                    flex: 2,
                    child: SingleChildScrollView(
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        child: Desktopsidebar(),
                      ),
                    ),
                  ),

                  SizedBox(width: 20),
                  // Space between Sidebar and Content

                  // Right Content wrapped in SingleChildScrollView for vertical scrolling
                  Expanded(
                    flex: 8,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      // Allows vertical scrolling
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Desktopappbarintrowidget(),
                          // Intro section for the right content
                          SizedBox(height: 20),
                          // Space between intro and custom containers
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: const Text(
                                  "We are here to help feel free to Ask anything",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment:MainAxisAlignment.end,
                                children: [

                                  Container(
                                    width:500,

                                    child: TextField(
                                      controller: searchController,
                                      decoration: InputDecoration(
                                        hintText: "Enter Topic",
                                        suffixIcon: Icon(Icons.search),
                                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5,),
                              if (searchController.text.isNotEmpty) ...[
                                Container(
                                  padding: const EdgeInsets.symmetric(vertical: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.grey.shade300),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    children: filteredSuggestions.map((suggestion) {
                                      return ListTile(
                                        title: Text(suggestion),
                                        onTap: () {
                                          searchController.text = suggestion; // Set the selected suggestion in the search bar
                                          setState(() {
                                            filteredSuggestions = []; // Clear suggestions after selection
                                          });
                                        },
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ],
                              SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isFaqExpanded = !isFaqExpanded;
                                  });
                                },
                                child: Container(

                                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                                  decoration: BoxDecoration(
                                    color: Color(0xFF89E469),
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "Frequently asked Questions",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      Icon(isFaqExpanded ? Icons.expand_less : Icons.expand_more),
                                    ],
                                  ),
                                ),
                              ),

                              if (isFaqExpanded) ...[
                                const SizedBox(height: 10),
                                _faqItem("Setting Bots"),
                                Divider(
                                  height: 1,
                                  color: Colors.black,
                                  thickness: 1,
                                ),
                                _faqItem("Whatsapp Login"),
                                Divider(
                                  height: 1,
                                  color: Colors.black,
                                  thickness: 1,
                                ),
                                _faqItem("Telegram Setup"),
                                Divider(
                                  height: 1,
                                  color: Colors.black,
                                  thickness: 1,
                                ),

                                _faqItem("General Usage"),
                                Divider(
                                  height: 1,
                                  color: Colors.black,
                                  thickness: 1,
                                ),
                              ],

                              const SizedBox(height: 30),

                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
Widget _faqItem(String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 6),
    child: Center(
      child: Text(
        title,
        style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
      ),
    ),
  );
}
