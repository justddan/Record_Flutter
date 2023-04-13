import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavItem {
  final int id;
  final IconData icon;
  final String label;

  NavItem({required this.label, required this.id, required this.icon});
}

List<NavItem> navItems = [
  NavItem(id: 0, label: "개인 공부", icon: FontAwesomeIcons.code),
  NavItem(id: 1, label: "프로젝트", icon: FontAwesomeIcons.filePowerpoint),
  NavItem(id: 2, label: "내 이력서", icon: Icons.edit_document),
];
