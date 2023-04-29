import 'dart:io';

import 'package:flutter/cupertino.dart';

class global {
  static String? name;
  static String? email;
  static int? contactNo;
  static String? a1;
  static String? a2;
  static String? a3;
  static File? image;

  static String? Carrier_Objective_des;
  static String? Carrier_Objective_Current_Designation;

  static String? maritalStatus;
  static String? dob;
  static String? languagesKnown;
  static String? nationality;
  static bool isChecked1 = false;
  static bool isChecked2 = false;
  static bool isChecked3 = false;

  static String? Education_Course;
  static String? Education_School;
  static String? Education_Per;
  static String? Education_Year;

  static String? Experience_com_name;
  static String? Experience_school;
  static String? Experience_roles;
  static String? Experience_date_joined;
  static String? Experience_date_exit;
  static String? Experience_current_emp_date_exit;
  static String? Experience_ExpRadio;
  static String? Experience_emp;

  static List<String?> mySkills = [];
  static List<TextEditingController> mySkillsControllers = [];

  static List<String?> myachievments = [];
  static List<TextEditingController> myachievmentsControllers = [];

  static List<String?> myHobbies = [];
  static List<TextEditingController> myHobbiesControllers = [];

  static bool MyCheckboxP1 = false;
  static bool MyCheckboxP2 = false;
  static bool MyCheckboxP3 = false;
  static String? projects_project_title;
  static String? projects_roles;
  static String? projects_Technologies;
  static String? projects_Project_Description;

  static String? Refrences_name;
  static String? Refrences_designation;
  static String? Refrences_institute;

  static bool isDeclared = false;
  static String? Declaration_Description;
  static String? Declaration_date;
  static String? Declaration_place;
}
