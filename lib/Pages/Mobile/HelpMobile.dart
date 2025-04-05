import 'package:flutter/material.dart';
import '../../components/CustomDrawerMobile.dart';
import '../../components/mobileAppBarWidget.dart';
import '../../components/mobileAppbarIntroWidget.dart';

class helpMobile extends StatefulWidget {
  const helpMobile({super.key});

  @override
  State<helpMobile> createState() => _helpMobileState();
}

class _helpMobileState extends State<helpMobile> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
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
      key: scaffoldKey,
      drawer: customDrawerMobile(),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Mobileappbarwidget(),
              const SizedBox(height: 5),
              Mobileappbarintrowidget(scaffoldKey: scaffoldKey),
              const SizedBox(height: 10),

              const Text(
                "We are here to help feel free to Ask Anything",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(height: 10),

              // Search bar
              TextField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: "Enter Topic",
                  suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                ),
              ),
              const SizedBox(height: 15),

              // Display search suggestions
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

              // FAQ Dropdown Header
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
                _faqItem("Whatsapp Login"),
                _faqItem("Telegram Setup"),
                _faqItem("General Usage"),
              ],

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
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
}
