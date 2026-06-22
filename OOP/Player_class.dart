// Create a Player class containing:

// name
// kills

// Create 3 player objects and display their information.

class Player{
  String _name;
  int _kills;

  Player(this._name, this._kills);

  void displayPlayerInfo(){
    print("--------- Player Details ----------");
    print("Player Name: $_name");
    print("Kills = $_kills");
  }
}

void main(){
  Player p1 = Player("Huzu", 13);
  Player p2 = Player("Pithu", 27);
  Player p3 = Player("Ibtu", 4);

  p1.displayPlayerInfo();
  p2.displayPlayerInfo();
  p3.displayPlayerInfo();

}