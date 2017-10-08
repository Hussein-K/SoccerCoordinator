// Unit 1 Project: Soccer Coordinator

// Dictionary for each player which includes their height, soccer experience, and the names of their guardians:

let player1: [String: Any] = ["Name": "Joe Smith", "Height": 42, "Soccer Experience": true, "Guardian(s)": "Jim and Jan Smith"]

let player2: [String: Any] = ["Name": "Jill Tanner", "Height": 36, "Soccer Experience": true, "Guardian(s)": "Clara Tanner"]

let player3: [String: Any] = ["Name": "Bill Bon", "Height": 43, "Soccer Experience": true, "Guardian(s)": "Sara and Jenny Bon"]

let player4: [String: Any] = ["Name": "Eva Gordon", "Height": 45, "Soccer Experience": false, "Guardian(s)": "Wendy and Mike Gordon"]

let player5: [String: Any] = ["Name": "Matt Gill", "Height": 40, "Soccer Experience": false, "Guardian(s)": "Charles and Sylvia Gill"]

let player6: [String: Any] = ["Name": "Kimmy Stein", "Height": 41, "Soccer Experience": false, "Guardian(s)": "Bill and Hillary Stein"]

let player7: [String: Any] = ["Name": "Sammy Adams", "Height": 45, "Soccer Experience": false, "Guardian(s)": "Jeff Adams"]

let player8: [String: Any] = ["Name": "Karl Saygan", "Height": 42, "Soccer Experience": true, "Guardian(s)": "Heather Bledsoe"]

let player9: [String: Any] = ["Name": "Suzane Greenberg", "Height": 44, "Soccer Experience": true, "Guardian(s)": "Henrietta Dumas"]

let player10: [String: Any] = ["Name": "Sal Dali", "Height": 41, "Soccer Experience": false, "Guardian(s)": "Gala Dali"]

let player11: [String: Any] = ["Name": "Joe Kavalier", "Height": 39, "Soccer Experience": false, "Guardian(s)": "Sam and Elaine Kavalier"]

let player12: [String: Any] = ["Name": "Ben Finkelstein", "Height": 44, "Soccer Experience": false, "Guardian(s)": "Aaron and Jill Finkelstein"]

let player13: [String: Any] = ["Name": "Diego Soto", "Height": 41, "Soccer Experience": true, "Guardian(s)": "Robin and Sarika Soto"]

let player14: [String: Any] = ["Name": "Chloe Alaska", "Height": 47, "Soccer Experience": false, "Guardian(s)": "David and Jamie Alaska"]

let player15: [String: Any] = ["Name": "Arnold Willis", "Height": 43, "Soccer Experience": false, "Guardian(s)": "Claire Willis"]

let player16: [String: Any] = ["Name": "Phillip Helm", "Height": 44, "Soccer Experience": true, "Guardian(s)": "Thomas Helm and Eva Jones"]

let player17: [String: Any] = ["Name": "Les Clay", "Height": 42, "Soccer Experience": true, "Guardian(s)": "Wynonna Brown"]

let player18: [String: Any] = ["Name": "Herschel Krustofsji", "Height": 45, "Soccer Experience": true, "Guardian(s)": "Hyman and Rachel Krustofski"]

// Array used to create a single collection of all 18 players

var players = [player1,
               player2,
               player3,
               player4,
               player5,
               player6,
               player7,
               player8,
               player9,
               player10,
               player11,
               player12,
               player13,
               player14,
               player15,
               player16,
               player17,
               player18]

// We must sort the experienced players and the inexperienced players into groups

var experiencedSoccerPlayers: [[String: Any]] = []
var inexperiencedSoccerPlayers: [[String: Any]] = []

// Looping the experienced players into a single array and the inexperienced players into a different array

for player in players {
    if player["Soccer Experience"] as! Bool == true { experiencedSoccerPlayers.append(player)
}   else { inexperiencedSoccerPlayers.append(player)
    }
}

// There are 3 teams we need to fairly sort these players into: Dragons, Raptors, and Sharks

var teamDragons: [[String: Any]] = []
var teamRaptors: [[String: Any]] = []
var teamSharks: [[String: Any]] = []

// Logic to fairly sort the experienced players into the three different teams

for i in 0..<experiencedSoccerPlayers.count {
    switch true {
    case i % 3 == 0: teamDragons.append(experiencedSoccerPlayers[i])
    case i % 3 == 1: teamRaptors.append(experiencedSoccerPlayers[i])
    case i % 3 == 2: teamSharks.append(experiencedSoccerPlayers[i])
    default: break
    }
}

// Logic to fairly sort the inexperienced players into the three different teams

for i in 0..<inexperiencedSoccerPlayers.count {
    switch true {
    case i % 3 == 0: teamDragons.append(inexperiencedSoccerPlayers[i])
    case i % 3 == 1: teamRaptors.append(inexperiencedSoccerPlayers[i])
    case i % 3 == 2: teamSharks.append(inexperiencedSoccerPlayers[i])
    default: break
    }
}

// Establishing the practice dates and times for each team's first practice

let practiceTimes: [String: String] = ["Team Dragons": "March 17th, at 1 p.m.", "Team Sharks": "March 17th, at 3 p.m.", "Team Raptors": "March 18th, at 1 p.m."]

// Creating a collection for the letters

var letters: [String] = []

// Logic that prints a letter for each player's guardian(s) that tells what team the child is on and when their first practice is, among other things

func writeLetter(for player: [String: Any], onTeam team: String) -> String {
    let letter = "Dear \(player["Guardian(s)"]!), Happy Autumn! With regards to the Youth Soccer League this season, \(player["Name"]!) has been placed on \(team) and should be ready to attend their first practice on \(practiceTimes[team]!) Please ensure that they arrive with cleats, shin pads, and plenty of water. I look forward to a wonderful season with all of you!"
    return letter
}

// Logic that adds the individual player letters to the letters collection

func addPlayerLetters(for team: [[String: Any]], onTeam: String) {
    for player in team {
        letters.append(writeLetter(for: player, onTeam: onTeam))
    }
}

// Running the function for each team so that the letters are appended

addPlayerLetters(for: players, onTeam: "Team Dragons")
addPlayerLetters(for: players, onTeam: "Team Raptors")
addPlayerLetters(for: players, onTeam: "Team Sharks")

// Printing each player letter to the console

print(letters)
 
 
 
 
 
