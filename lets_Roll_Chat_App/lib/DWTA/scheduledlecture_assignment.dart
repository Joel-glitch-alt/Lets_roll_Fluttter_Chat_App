import 'package:flutter/material.dart';

//This file defines the Assignment section of the Scheduled lecture page

class Assignment extends StatelessWidget {
  const Assignment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      padding: const EdgeInsets.only(top: 10, bottom: 7),
      height: 375,
      child: ListView(
        children: const [
          AssignmentInstruction(instruction: '30 questions, answer in 15 mins ( 1 try only)'),
          AssignmentQuestions(
            question: '1. The snippet of code for navbar can be found in?',
            children: [
              AssignmentQuestion(option: 'Assets folder'),
              AssignmentQuestion(option: 'HTML Source'),
              AssignmentQuestion(option: 'Main Header'),
              AssignmentQuestion(option: 'Child Header'),
            ],),
          AssignmentQuestions(
            question: '2. When implementing fonts, is it best to use native, import?',
            children: [
              AssignmentQuestion(option: 'Native'),
              AssignmentQuestion(option: 'Import'),
              AssignmentQuestion(option: 'Depends on app goal'),
            ],),
          AssignmentQuestions(
            question: '3. How does andriod login function and implementation differs from web login implentation?',
            children: [
              AssignmentQuestion(option: 'Accent'),
              AssignmentQuestion(option: 'Asymptomatic'),
              AssignmentQuestion(option: 'Dependency variable '),
            ],),
        ],
      ),
    );
  }
}

class AssignmentQuestions extends StatelessWidget {
  final List<Widget> children;
  final String question;

  const AssignmentQuestions({
    required this.children,
    required this.question,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 9, left: 12, top: 5, right: 12),
          child: Container(
            width: screenWidth,
            padding: const EdgeInsets.fromLTRB(15, 10, 3, 4),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(12)),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 191, 191, 191),
                    blurRadius: 3.0,
                    spreadRadius: 2.0,
                  ), //BoxShad
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(question),
                ),
                Column(
                  children: children,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

//This defines the Questions
class AssignmentQuestion extends StatelessWidget {
  final String option;
  const AssignmentQuestion({
    required this.option,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.circle, size: 20, color: Color(0xFF65A7E3)),
          ),
          Text(option,),
        ],
      ),
    );
  }
}

//This defines the instruction of the assignment which appears before the questions
class AssignmentInstruction extends StatelessWidget {
  final String instruction;
  const AssignmentInstruction({
    required this.instruction,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10, bottom: 10),
          child: Text(instruction, style: const TextStyle(fontWeight: FontWeight.w400),),
        ),
      ],
    );
  }
}