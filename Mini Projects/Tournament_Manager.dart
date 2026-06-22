// Project Name:
// Tournament Manager (Console Based)

// Features:

// Add Team
// Show Teams
// Remove Team
// Declare Winner
// Exit

// Store team names in a list.

// I have not taken inputs (which is being shown as errors) in this since dart is mainly used for Flutter
// Flutter uses widgets so taking inputs is less effective right now!

 
class Player{
  String _uId;
  int _kills;
  int _damage;

  Player(this._uId, this._kills, this._damage);

  void displayPlayer(){
    print("UID # $_uId");
    print("Kills: $_kills");
    print("Damage: $_damage");
  }

  int getKills() => _kills;
}

class Team{
  String _name;
  int _noOfPlayers;
  static int _count = 0;
  int _teamId;
  int _score = 0;
  List<Player> _players = [];
  
  Team(this._name, this._noOfPlayers) : _teamId = ++_count;

  void addPlayer(String id, int kills, int dmg){
    _players.add(Player(id, kills, dmg));
  }


  void displayTeam(){
    print("Team Name: $_name");
    print("Team ID # $_teamId");
    print("Total Team Players: $_noOfPlayers");
    print("--- Player Details ---");
    for (int i = 0 ; i < _players.length ; i++){
      print("----- Player # ${i + 1} -----");
      // display player
      _players[i].displayPlayer();
    }
  }

  int getTeamId() => _teamId;

  void calcScore(){
    _score = 0;
    for (Player p in _players){
      _score += p.getKills();
    }
  }

  int getScore() => _score;
}

void main(){
  List<Team> teams = [];
  int totalTeams = 0;
  do{
    print("Menu:");
    print("\t1. Add Team");
    print("\t2. Show Teams");
    print("\t3. Remove Team");
    print("\t4. Declare Winner");
    print("\t5. Exit");
    print("Your Choice: ");
    int choice;
    // input choice;
    switch (choice) {
      case 1:
        print("Enter Team name: ");
        // input Team Name;
        String name;
        print("Enter Number of Players: ");
        // input number of players
        int players;
        teams.add(Team(name, players));
        totalTeams++;
        for (int i = 0 ; i < players ; i++){
          print("------- Enter Details for Player # ${i + 1} -------");
          print("Enter UID: ");
          // input uid
          String uId;
          print(("Enter Kills: "));
          // input kills
          int kills; 
          print("Enter Damage: ");
          // input damage
          int dmg;
          teams[totalTeams - 1].addPlayer(uId, kills, dmg);
        }
        break;

        case 2:
          print("========== Showing All Teams ==========");
          for (int i = 0 ; i < totalTeams ; i++){
            print("----- Team # ${i + 1} -----");
            // display team
            teams[i].displayTeam();
          }
          break;

        case 3:
          print("Enter the Team Id to remove: ");
          int rmvId;
          int idx = -1;
          // input the remover ID
          for (int i = 0 ; i < totalTeams ; i++){
            if(teams[i].getTeamId() == rmvId){
              print("Team with id $rmvId found!");
              idx = i;
              break;
            }
          }
          if (idx == -1){
            print("Invalid Team ID!");
          }
          else {
            teams.removeAt(idx);
            print("Team with ID $rmvId has been removed from the list!");
          }
          break;

        case 4:
          if (teams.isEmpty) {
            print("No teams available!");
            break;
          }
          int winnerIdx = 0;
          for (Team t in teams){
            t.calcScore();
          }
          int maxScore = teams[0].getScore();
          for (int i = 1 ; i < totalTeams ; i++){
            if(teams[i].getScore() > maxScore){
              maxScore = teams[i].getScore();
              winnerIdx = i;
            }
          }
          print("----- Winner of the Tournament has been declared! -----");
          print(">>> WINNER TEAM DETAILS <<<");
          teams[winnerIdx].displayTeam();
          break;

        case 5:
          print("Thank you for Joining us! Stay Consistent with your gameplay!");
          break;

      default:
        print("Invalid Choice! Please chose between 1-5");
    }
  } while(choice != 5);
}