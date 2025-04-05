import 'package:flutter/material.dart';
import 'package:fyppakam/components/CustomButton.dart';

import '../../components/CustomDrawerMobile.dart';
import '../../components/mobileAppBarWidget.dart';
import '../../components/mobileAppbarIntroWidget.dart';
import 'package:file_picker/file_picker.dart';


class contactUsMobile extends StatefulWidget {
  const contactUsMobile({super.key});


  @override
  State<contactUsMobile> createState() => _contactUsMobileState();
}

class _contactUsMobileState extends State<contactUsMobile> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  bool _isFormVisible = false;
  PlatformFile? selectedFile;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController subjectController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
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
      key: scaffoldKey,
      drawer: customDrawerMobile(),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              Mobileappbarwidget(),
              const SizedBox(height: 5),
              Mobileappbarintrowidget(scaffoldKey: scaffoldKey),
              const SizedBox(height: 10),
              const Text(
                "We are here to help feel free to contact us",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.2),

              // Contact Information
              _personalDetailRow(Icons.email_outlined, "support@pakam.com", "support Email"),
              _personalDetailRow(Icons.email_outlined, "salesquery@pakam.com", "sales query Email"),
              _personalDetailRow(Icons.email_outlined, "generalquery@pakam.com", "general query Email"),
              _personalDetailRow(Icons.phone, "O21-2695242", "phone"),

              const SizedBox(height: 20),

              // Collapsible Header
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isFormVisible = !_isFormVisible;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)

                  ,
                    color: Color(0xFF89E469),),

                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Submit a query", style: TextStyle(fontWeight: FontWeight.bold)),
                      Icon(_isFormVisible ? Icons.expand_less : Icons.expand_more),
                    ],
                  ),
                ),
              ),

              // Collapsible Form
              if (_isFormVisible)
                Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      _textField("Enter Name", controller: nameController),
                      _textField("Enter Email", controller: emailController),
                      _textField("Subject", controller: subjectController),
                      _textField("ProblemDescription", controller: descriptionController, maxLines: 4),
                      const SizedBox(height: 10),
                      InkWell(
                        onTap: () async {
                          FilePickerResult? result = await FilePicker.platform.pickFiles(type: FileType.custom,allowedExtensions: ['pdf','mp4'],allowMultiple: true);


                          if (result != null) {
                            setState(() {
                              selectedFile = result.files.first;
                            });

                            print("File Name: ${selectedFile!.name}");
                            print("File Path: ${selectedFile!.path}");
                            print("File Size: ${selectedFile!.size}");
                          } else {
                            print("User canceled the picker");
                          }
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                selectedFile != null ? selectedFile!.name : "Additional Files",
                                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              const Icon(Icons.file_copy_outlined),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Custombutton(label: "Submit", radius: 10, onPressed: (){
                        print("Name: ${nameController.text}");
                        print("Email: ${emailController.text}");
                        print("Subject: ${subjectController.text}");
                        print("Description: ${descriptionController.text}");
                      })
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _textField(String hint, {TextEditingController? controller, int maxLines = 1}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: TextField(
        controller: controller,
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: hint,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        ),
      ),
    );
  }
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
              Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
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
