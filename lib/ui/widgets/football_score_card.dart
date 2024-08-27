import 'package:flutter/material.dart';

import '../../entities/football.dart';

class FootballScoreCard extends StatelessWidget {
  const FootballScoreCard({
    super.key, required this.football,
  });

  final Football football;

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildTeam(football.team1Name,football.team1Score),
          const Text('vs'),
          _buildTeam(football.team2Name,football.team2Score)
        ],
      ),
    );
  }

  Column _buildTeam(String teamName, int score) {
    return Column(
          children: [
            Text(
              score.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            Text(
              teamName,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          ],
        );
  }
}
