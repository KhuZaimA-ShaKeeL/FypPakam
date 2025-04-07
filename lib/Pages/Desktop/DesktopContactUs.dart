import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import '../../components/CustomButton.dart';
import '../../components/DekstopSidebar.dart';
import '../../components/DesktopAppBarIntroWidget.dart';
import '../../components/DesktopAppbarWidget.dart';

class Desktopcontactus extends StatefulWidget {
  const Desktopcontactus({super.key});

  @override
  State<Desktopcontactus> createState() => _DesktopcontactusState();
}

class _DesktopcontactusState extends State<Desktopcontactus> {
  PlatformFile? selectedFile;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController subjectController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  void dispose() {
    // Dispose controllers
    nameController.dispose();
    emailController.dispose();
    subjectController.dispose();
    descriptionController.dispose();
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                  flex: 6,
                                  child: Column(
                                    children: [
                                      const Text(
                                        "We are here to help feel free to contact us",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      // Contact Information
                                      _personalDetailRow(Icons.email_outlined,
                                          "support@pakam.com", "support Email"),
                                      _personalDetailRow(
                                          Icons.email_outlined,
                                          "salesquery@pakam.com",
                                          "sales query Email"),
                                      _personalDetailRow(
                                          Icons.email_outlined,
                                          "generalquery@pakam.com",
                                          "general query Email"),
                                      _personalDetailRow(
                                          Icons.phone, "O21-2695242", "phone"),
                                    ],
                                  )),
                              Spacer(),
                              Expanded(
                                flex: 4,
                                child: Container(

                                  padding: const EdgeInsets.all(12),
                                  margin: const EdgeInsets.only(top: 10),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF5F5F5),
                                    border:
                                        Border.all(color: Colors.grey.shade300),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(

                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      _textField("Enter Name",
                                          controller: nameController),
                                      _textField("Enter Email",
                                          controller: emailController),
                                      _textField("Subject",
                                          controller: subjectController),
                                      _textField("ProblemDescription",
                                          controller: descriptionController,
                                          maxLines: 4),
                                      const SizedBox(height: 10),
                                      InkWell(
                                        onTap: () async {
                                          FilePickerResult? result =
                                              await FilePicker.platform
                                                  .pickFiles(
                                                      type: FileType.custom,
                                                      allowedExtensions: [
                                                        'pdf',
                                                        'mp4'
                                                      ],
                                                      allowMultiple: true);

                                          if (result != null) {
                                            setState(() {
                                              selectedFile = result.files.first;
                                            });

                                            print(
                                                "File Name: ${selectedFile!.name}");
                                            print(
                                                "File Path: ${selectedFile!.path}");
                                            print(
                                                "File Size: ${selectedFile!.size}");
                                          } else {
                                            print("User canceled the picker");
                                          }
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 20),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(width: 1),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                selectedFile != null
                                                    ? selectedFile!.name
                                                    : "Additional Files",
                                                style: const TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const Icon(
                                                  Icons.file_copy_outlined),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 50),
                                      Custombutton(
                                          label: "Submit",
                                          radius: 10,
                                          onPressed: () {
                                            print(
                                                "Name: ${nameController.text}");
                                            print(
                                                "Email: ${emailController.text}");
                                            print(
                                                "Subject: ${subjectController.text}");
                                            print(
                                                "Description: ${descriptionController.text}");
                                          })
                                    ],
                                  ),
                                ),
                              )
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

Widget _textField(String hint,
    {TextEditingController? controller, int maxLines = 1}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 6),
    child: TextField(
      controller: controller,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      ),
    ),
  );
}

Widget _personalDetailRow(IconData icon, String title, String subtitle) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 12.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 40),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold)),
              Text(subtitle, style: const TextStyle(color: Colors.grey)),
              const SizedBox(height: 4),
              const Divider(thickness: 2, color: Colors.black),
            ],
          ),
        ),
      ],
    ),
  );
}
