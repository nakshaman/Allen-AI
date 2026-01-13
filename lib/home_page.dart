import 'package:allen/feature_box.dart';
import 'package:allen/pallete.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Bar
      appBar: AppBar(
        title: const Text(
          'Allen',
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Cera Pro',
          ),
        ),
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
      ),
      // Body
      body: Column(
        children: [
          // Virtual assistant picture
          Stack(
            children: [
              Center(
                child: Container(
                  height: 120,
                  width: 120,
                  margin: EdgeInsets.only(top: 4),
                  decoration: BoxDecoration(
                    color: Pallete.assistantCircleColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Container(
                height: 125,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/virtual_assistant.png'),
                  ),
                ),
              ),
            ],
          ),
          // chat bubble
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            margin: EdgeInsets.symmetric(horizontal: 40).copyWith(
              top: 30,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Pallete.borderColor,
              ),
              borderRadius: BorderRadius.circular(20).copyWith(
                topLeft: Radius.zero,
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                'Good Morning, Nakshaman! How can I assist you today?',
                style: TextStyle(
                  color: Pallete.mainFontColor,
                  fontSize: 18,
                  fontFamily: 'Cera Pro',
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          // "Here are a few commands" text
          Container(
            margin: EdgeInsets.only(top: 10, left: 22),
            padding: EdgeInsets.all(10),
            alignment: Alignment.centerLeft,
            child: const Text(
              'Here are a few commands ',
              style: TextStyle(
                fontFamily: 'Cera Pro',
                fontSize: 20,
                color: Pallete.mainFontColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          // features list
          Column(
            children: [
              FeatureBox(
                color: Pallete.firstSuggestionBoxColor,
                headerText: 'ChatGPT',
                descriptionText:
                    'A Smarter Way to stay organized and informed with ChatGPT',
              ),
              SizedBox(
                height: 10,
              ),
              FeatureBox(
                color: Pallete.secondSuggestionBoxColor,
                headerText: 'DALL-E',
                descriptionText:
                    'Get inspired and stay creative with your personal assistant powered by DALL-E',
              ),
              SizedBox(
                height: 10,
              ),
              FeatureBox(
                color: Pallete.thirdSuggestionBoxColor,
                headerText: 'Smart Voice Assistant',
                descriptionText: 'Control your devices with voice commands',
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Pallete.firstSuggestionBoxColor,
        onPressed: () {},
        child: Icon(Icons.mic),
      ),
    );
  }
}
