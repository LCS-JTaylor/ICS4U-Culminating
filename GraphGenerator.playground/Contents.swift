import Cocoa
import SwiftUI

struct Edge: Hashable {
    
    let destinationId: Int
    let prompt: String
    
}

// TODO: 1 - Add this enumeration to your project
enum EndingClassification: String, CaseIterable {
    case great = "Great"
    case favorable = "Favorable"
    case mediocre = "Mediocre"
    case disappointing = "Disappointing"
    case catastrophic = "Catastrophic"
}

// TODO: 2 - Add this structure to your project
struct Ending {
    let classification: EndingClassification
    let description: String
    var color: String {
        switch self.classification {
        case .great:
            return "#90C8E0"  // Light blue
        case .favorable:
            return "#FFDE5F"  // Pale yellow
        case .mediocre:
            return "#D7883C"  // Orange
        case .disappointing:
            return "#C1531E"  // Deep orange
        case .catastrophic:
            return "#AB1800"  // Deep red
        }
    }
}

// TODO: 3 - Update your story nodes to use the Ending type
struct Node: Identifiable {
    let id: Int
    let paragraphs: [String]
    let image: String?
    let edges: [Edge]
    let ending: Ending?
}

struct StoryInformation {
    let title: String
    let authorOrAuthors: String
    let seriesInfo: String
    let publisherInfo: String
}

// TODO: 4 - Replace details of this instance of StoryInformation with data for your own group's story
let storyInfo = StoryInformation(title: "Highschool: Love or Crime",
                                 authorOrAuthors: "Angus McAloon, Jackson Taylor, Sofi Andrade",
                                 seriesInfo: "CHOOSE YOUR OWN ADVENTURE #1",
                                 publisherInfo: "Team Infinity, Lakefield, 2022")

// A single node
let testNode = Node(id: 1,
                    paragraphs: [
                        "You are a deep sea explorer searching for the famed lost city of Atlantis. This is your most challenging and dangerous mission. Fear and excitement are now your companions.",
                        
                        "It is morning and the sun pushes up on the horizon. The sea is calm. You climb into the narrow pilot's compartment of the underwater vessel *Seeker* with your special gear. The crew of the research vessel *Maray* screws down the hatch clamps. Now begins the plunge into the depths of the ocean. The *Seeker* crew begins lowering by a strong, but thin, cable. Within minutes, you are so deep in the ocean that little light filters down to you. The silence is eerie as the *Seeker* slips deeper and deeper. You peer out the thick glass porthole and see strange white fish drifting past, sometimes stopping to look at you–an intruder from another world.",
                        
                    ],
                    image: "node-1",
                    edges: [
                        Edge(destinationId: 2,
                             prompt: "*Turn to the next page*")
                        ,
                    ],
                    ending: nil)

let emptyNode = Node(id: 0, paragraphs: [""], image: nil, edges: [], ending: Ending(classification: .great, description: "Lorem\\nipsum"))

// TODO: 5 - Replace the following list of nodes with your own group's nodes
// An array of nodes that model the narrative's directed graph
let storyNodes: [Int : Node] = [
    
    1 : Node (id: 1, paragraphs: ["Highschool: Love or Crime by Team Infinity"],
              image: nil, edges: [Edge(destinationId: 2, prompt: "Continue")], ending: nil)

        ,
        
    2 : Node (id: 2, paragraphs: ["You are a new student in high school, you and your parents just moved from a small town. You’ve been homeschooled from Grade 9 to Grade 11 and are attending Grade 12 this year. You wake up, brush your teeth and get ready for school. Your mother made you breakfast and you realize you’re running late for class.",],
             image: nil, edges: [Edge(destinationId: 3, prompt: "If you decide to take the bus go to Node 3"), Edge(destinationId: 4, prompt: "If you decide to walk to school go to Node 4")], ending: nil)
        
        ,
        
    3 : Node (id: 3, paragraphs: ["You board the bus with your bright pink backpack ready to take on your first day of highschool as a senior. A few minutes after you sit down, you notice that the bus driver is impaired and starts driving recklessly looking like he’s about to crash."],
             image: nil, edges: [Edge(destinationId: 7, prompt: "If you decide to take control of the bus to stop the crash go to Node 7"), Edge(destinationId: 8, prompt: "If you decide to jump out of the bus to avoid the crash go to Node 8")], ending: nil)
        
        ,
        
    4 : Node (id: 4, paragraphs: ["You decide to walk to school, and realize that you're actually miles away. There’s no way you can be late on your first day of school. How are you supposed to meet new people, get to class and get settled in?"],
             image: nil, edges: [Edge(destinationId: 5, prompt: "If you decide to walk to school and accept the fact that you will be late, go to Node 5"), Edge(destinationId: 6, prompt: "If you decide to run to school to possibly avoid being late go to Node 6")], ending: nil)
        
        ,
        
    5 : Node (id: 5, paragraphs: ["You make it to class but you are unfortunately 3 hours and 50 minutes late, you made a terrible first impression. The principle thinks you aren’t suitable enough to attend their school if you can’t show up in time, you plead with him to give you a second     chance as you know that your mother will never forgive you and he somehow agrees but you must attend detention for a month."], image: nil, edges: [], ending: Ending(classification: .disappointing, description: "ENDING: DETENTION"))
        
        ,
        
    6 : Node (id: 6, paragraphs: ["You begin to run as you know you can’t be late on your first day, you try and try to run as fast you can. You start to imagine what everyone will think of you and how they will judge you for being new and showing up late. All the overthinking leads to you getting distracted and you realize your keys just dropped out of your pocket and have fallen into the sewer. "], image: nil, edges: [Edge(destinationId: 10, prompt: "Continue")], ending: nil)
        
        ,
        
    7 : Node (id: 7, paragraphs: ["You find your way towards the front of the bus where the steering wheel lies, you grab the drunk bus driver and pull him off his seat forcing him to ragdoll on the ground. You sit down and try to take control of the situation. As you sit down, you remember that you were too lazy to get your driver's license in the summer and don't know how to drive."], image: nil, edges: [Edge(destinationId: 29, prompt: "Continue")], ending: nil)
        
        ,
        
    8 : Node (id: 8, paragraphs: ["You don't care about anyone else and decide to save yourself by jumping out of the bus. You open up the emergency window and jump out, falling on grass continuously rolling. "], image: nil, edges: [Edge(destinationId: 30, prompt: "Continue")], ending: nil)
        
        ,
        
    10 : Node (id: 10, paragraphs: ["You know  how upset your mother will be if you lose the house keys, and how are you going to get home at the end of the day. Both your parents work late night shifts as they are doctors, you remember a trick your mother taught you when things get stuck, you crouch down and begin to try and pick them up."], image: nil, edges: [Edge(destinationId: 11, prompt: "Continue")], ending: nil)
        
        ,
        
    11 : Node (id: 11, paragraphs: ["As you reach down into the sewer, the smell is indescribable; you've never smelt anything worse. Just as you begin reaching down for the keys a giant hot dog truck passes by you and splashes a puddle of water all over you. Which only results in you smelling terribly and covered in waste."], image: nil, edges: [Edge(destinationId: 12, prompt: "Continue")], ending: nil)
        
        ,
        
    12 : Node (id: 12, paragraphs: ["You finally end up making it to class in time and slowly try to sneak in the back of the class and avoid anyone from smelling you or making eye contact with you.  As you reach the bug everyone turns around and carefully looks at you, Derek the high school bully starts making fun of the way you look and the way you smell the whole class laughs You're overcome with shame and embarrassment."], image: nil, edges: [Edge(destinationId: 13, prompt: "If you decide to stand up to Derek go to Node 13"), Edge(destinationId: 14, prompt: "If you decide to do nothing to not draw more attention to yourself go to Node 14")], ending: nil)
        
        ,
        
    13 : Node (id: 13, paragraphs: ["You decide to stand on top of a table in front of the class, And make sure everyone catches your attention. You don't want to be remembered as a new kid who smelled bad and showed up late to class, Derek has publicly humiliated you and you want to get back at him."], image: nil, edges: [Edge(destinationId: 15, prompt: "If you decide to attack him mentally go to Node 15"), Edge(destinationId: 16, prompt: "If you decide to attack him physically go to Node 16")], ending: nil)
        
        ,
        
    14 : Node (id: 14, paragraphs: ["You let Derek completely ruin your social reputation and the whole class laughs at you. The teacher tells everyone to settle down and focus on the lesson. You sit down for the rest of the period and focus in  class. You make eye contact with this beautiful girl and wonder if she's even looking at you."], image: nil, edges: [Edge(destinationId: 17, prompt: "Continue")], ending: nil)
        
        ,
        
    15 : Node (id: 15, paragraphs: ["You get down from the table and get on Derek's eye level. You proceed to make fun of Derek and the way he dresses and how his father was absent in his life. You humiliate him publicly for having terrible grades, and how his only personality trait is to be a douchebag. The whole class starts laughing and cheering you on but suddenly the teacher calls the principal and you get sentenced to detention."], image: nil, edges: [Edge(destinationId: 28, prompt: "Continue")], ending: nil)
        
        ,
        
    16 : Node (id: 16, paragraphs: ["You jumped down from the table and pushed Derek on the corner next to the classroom. You get close to him and decide to Punch him across the face,  his nose snaps in two and his teeth fall out. You continue beating him as a whole class watches and is completely traumatized,  one of the students runs out and gets the principal you are now sentenced to detention and potentially could be expelled."], image: nil, edges: [Edge(destinationId: 28, prompt: "Continue")], ending: nil)
        
        ,
        
    17 : Node (id: 17, paragraphs: ["She comes up to you after class, and expresses how bad she feels for you and she wonders if you wanna hangout with her after class. She talks to you about Derek and how they used to date but she got fed up with how he was constantly rude. He was to everyone. She wants to get to know you."], image: nil, edges: [Edge(destinationId: 18, prompt: "If you decide to get to know her go to Node 18"), Edge(destinationId: 19, prompt: "If you decide to stay away from trouble, especially anything to do with Derek, go to Node 19")], ending: nil)
        
        ,
        
    18 : Node (id: 18, paragraphs: ["You go to meet Claire after school, she waits for you after class and makes eye contact with Derek. You wanna get out of school and meet somewhere else where people can’t see you guys hanging out, where do you go?"], image: nil, edges: [Edge(destinationId: 20, prompt: "If you decide to take Claire on a date to a fancy restaurant called Nora Grey, go to node 20"), Edge(destinationId: 21, prompt: "If you decide to take Claire on a date to Harveys for their great burgers, go to Node 21")], ending: nil)
        
        ,
        
    19 : Node (id: 19, paragraphs: ["You decide to ignore her and avoid drama, you get to know everyone else. Have a happy senior year for the rest of the year. Attend clubs, parties and everyone forgets about the incident about the smell. You make an unforgettable friend group and graduate."], image: nil, edges: [], ending: Ending(classification: .great, description: "ENDING: HAPPILY EVER AFTER"))
        
        ,
        
    20 : Node (id: 20, paragraphs: ["You go to Nora Grey, she orders some food and so do you. You get to know her through the time you spend together. You make jokes and even make her laugh, you see there's so much more to Claire than you used to think. You see yourself wanting to spend more time with her."], image: nil, edges: [Edge(destinationId: 22, prompt: "Continue")], ending: nil)
        
        ,
        
    21 : Node (id: 21, paragraphs: ["You end up going to Harvey’s, since you are on a tight budget and don’t fully trust Claire. You get there and look at the menu and bicker over what you wanna get, as you guys make the choice, the cashier comes up to you guys only to realize that. It’s Derek and he works at Harvey’s, he realizes you and Claire and on a date. He jumps over the counter and begins to chase you."], image: nil, edges: [Edge(destinationId: 24, prompt: "If you decide to run away from him go to Node 24"), Edge(destinationId: 25, prompt: "If you decide to just take the hit go to Node 25")], ending: nil)
        
        ,
        
    22 : Node (id: 22, paragraphs: ["You and Claire begin to spend more time together, and she becomes closer to you. You expected that she would leave to go back with Derek but she sticks around and makes the most out of the opportunity. You slowly end up falling in love with her."], image: nil, edges: [Edge(destinationId: 23, prompt: "Continue")], ending: nil)
        
        ,
        
    23 : Node (id: 23, paragraphs: ["You decide to begin dating Claire, everyone in school finds out. All the guys are jealous of you and now have gained respect for you. Girls keep asking you if you wanna hangout with them but you are madly in love with Claire, Derek is now hated by the whole school and is forgotten by everyone. You graduate and propose to Claire."], image: nil, edges: [], ending: Ending(classification: .great, description: "ENDING: HAPPILY EVER AFTER"))
        
        ,
        
    24 : Node (id: 24, paragraphs: ["You try to run away from Derek. Claire is embarrassed at the fact that you took her on a date where her ex-boyfriend works.  You slip on a pickle that was left on the ground and Derek eventually gets to you.", ], image: nil, edges: [], ending: Ending(classification: .disappointing, description: "ENDING: BEAT UP"))
        
        ,
        
    25 : Node (id: 25, paragraphs: ["You accept your fate and take the hit from him. He beats you up repeatedly and leaves you barely breathing. You end up having to go to the hospital and later you find out Derek and Claire got back together."], image: nil, edges: [], ending: Ending(classification: .catastrophic, description: "ENDING: BEAT UP"))
        
        ,
        
    28 : Node (id: 28, paragraphs: [], image: nil, edges: [], ending: Ending(classification: .disappointing, description: "ENDING: DETENTION"))
        
        ,
        
    29 : Node (id: 29, paragraphs: ["You try to take control of the bus’s direction and straighten it out, you close your eyes and take a deep breath not realizing that you are about to lead everyone on the bus (including little Timmy) to their death by driving into another vehicle. You swerve to the right trying to avoid them and run into a tree killing everybody on the bus (including little Timmy)."], image: nil, edges: [], ending: Ending(classification: .catastrophic, description: "ENDING: DEATH"))
        
        ,
        
    30 : Node (id: 30, paragraphs: ["After a few seconds of recovery, you pick yourself up and walk towards the destination of your bus. On your way there you find a coin."], image: nil, edges: [Edge(destinationId: 31, prompt: "If you decide to keep walking and forget the coin go to Node 31"),Edge(destinationId: 35, prompt: "If you decide to take the coin go to Node 35")], ending: nil)
        
        ,
        
    31 : Node (id: 31, paragraphs: ["As you are walking you come across a homeless guy and you start a conversation with him. You talk about politics and the economic state of the world but while doing so he said dogecoin to the dirt which aggravates you."], image: nil, edges: [Edge(destinationId: 33, prompt: "If you decide to throw coffee at him go to Node 33"), Edge(destinationId: 34, prompt: "If you decide to hug him, forgive him and donate a dolar go to Node 34")], ending: nil)
        
        ,
        
    33 : Node (id: 33, paragraphs: ["After throwing coffee at a homeless man, you are publicly humiliated and fall into a depression. Little did you know Little Timmy has loved you secretly his whole life and decided to kill himself after seeing you fall into a deep depression."], image: nil, edges: [], ending: Ending(classification: .catastrophic, description: "ENDING: DEPRESSION"))
        
        ,
        
    34 : Node (id: 34, paragraphs: ["After spreading kindness to the homeless man he gets up from his torn sleeping bag and points towards a camera across the street. He reveals to you that he is infact Elon Musk, who has gone undercover as a homeless man for a social experiment. Thanks to your kind act Elon gives you 100% Ownership in tesla. You then live a life of luxury and happiness. Turns out money can buy happiness."], image: nil, edges: [], ending: Ending(classification: .great, description: "ENDING: RICH 4 LIFE"))
        
        ,
        
    35 : Node (id: 35, paragraphs: ["The coin you had picked up belongs to a mafia family. They saw you pick it up and decided to kidnap you. As they torture you for taking there coin, you charm them with your resilience and kind compliments towards there skill in torturing others. They accept you as one of their own. Following this you climb the ranks and become their leader. With this new power of yours you kill Little Timmy for fun."], image: nil, edges: [], ending: Ending(classification: .great, description: "ENDING: MAFIA"))
    
]

// Function to generate output that Graphviz requires
func generateGraphvizCommands(using description: StoryInformation, with nodes: [Int : Node]) -> String {
    
    // Opening of graph
    var output = "digraph \"[map]\" {\n"

    // Start subgraph which contains table that comprises title section
    output += "subgraph { \"title\" [shape=none label=<<table border=\"0\">\n"
    output += "  <tr>\n"
    output += "    <td align=\"left\"><font face=\"Verdana,Helvetica\" point-size=\"40\"><b>\(description.title)</b></font></td>\n"
    output += "    <td width=\"100\"></td>\n"
    output += "  </tr>\n"
    output += "  <tr>\n"
    output += "    <td align=\"left\"><font face=\"Verdana,Helvetica\" point-size=\"20\">By \(description.authorOrAuthors)</font></td>\n"
    output += "    <td></td>"
    output += "  </tr>\n"
    output += "  <tr>\n"
    output += "    <td>&nbsp;</td>\n"
    output += "    <td></td>"
    output += "  </tr>\n"
    output += "  <tr>\n"
    output += "    <td align=\"left\"><font face=\"Verdana,Helvetica\" point-size=\"16\">\(description.seriesInfo)</font></td>\n"
    output += "    <td></td>"
    output += "  </tr>\n"
    output += "  <tr>\n"
    output += "    <td align=\"left\"><font face=\"Verdana,Helvetica\" point-size=\"16\">\(description.publisherInfo)</font></td>\n"
    output += "    <td></td>"
    output += "  </tr>\n"

    // End the table that comprises title section
    output += "</table>>]\n"
    output += "}\n"

    // Make empty dictionary to track endings
    var endingsCount = [String : Int]()

    // Build the graph itself from a sorted list of the nodes
    for (key, node) in nodes.sorted(by: { lhs, rhs in lhs.key < rhs.key }) {
        
        // Handle ending nodes
        if let ending = node.ending {
            
            // Make ending nodes show up in red
            output += "\(key) [style=\"filled\", fillcolor=\"\(ending.color)\"]\n"
            
            // Create an invisible node after each ending node
            output += "\"\(ending.description) \(node.id)\" [style=invis]\n"
            
            // Make a label after the ending node
            output += "\(key) -> \"\(ending.description) \(node.id)\" [labelangle=0, minlen=3,  color=white, taillabel=\"\\n\(ending.description)\", fontname=\"Helvetica Bold\"]\n"
            
            // Track endings by category
            if let valueForKey = endingsCount[ending.classification.rawValue] {
                // Increment count of endings of this type
                endingsCount[ending.classification.rawValue]! = valueForKey + 1
            } else {
                // Start count of endings of this type
                endingsCount[ending.classification.rawValue] = 1
            }
        }
            
        // Draw nodes and edges between nodes
        output += "\(key) -> {"
        for edge in node.edges {
            output += "\(edge.destinationId);"
        }
        output += "} [minlen=2]\n"
    }

    // Start subgraph which endings analysis
    output += "subgraph { \"endings\" [shape=none label=<<table border=\"0\">\n"
    output += "  <tr>\n"
    output += "  <td width=\"100\"></td>\n"
    output += "    <td colspan=\"2\" align=\"left\"><font face=\"Verdana,Helvetica\" point-size=\"20\"><b>&nbsp;</b></font></td>\n"
    output += "  </tr>\n"
    output += "  <tr>\n"
    output += "  <td></td>\n"
    output += "    <td colspan=\"2\" align=\"left\"><font face=\"Verdana,Helvetica\" point-size=\"20\"><b>&nbsp;</b></font></td>\n"
    output += "  </tr>\n"
    output += "  <tr>\n"
    output += "  <td></td>\n"
    output += "    <td colspan=\"2\" align=\"left\"><font face=\"Verdana,Helvetica\" point-size=\"20\"><b>Analysis of endings</b></font></td>\n"
    output += "  </tr>\n"

    // Make placeholders for counts of ending types
    for enumerationCase in EndingClassification.allCases {
        
        // Get count of endings for this ending type
        var countForThisEndingType = 0
        if let count = endingsCount[enumerationCase.rawValue] {
            countForThisEndingType = count
        }
        
        output += "  <tr>\n"
        output += "  <td></td>\n"
        output += "<td align=\"right\" valign=\"top\"><font face=\"Verdana,Helvetica\" point-size=\"16\">\(countForThisEndingType)</font></td>"
        output += "    <td align=\"left\" valign=\"bottom\"><font face=\"Verdana,Helvetica\" point-size=\"18\" color=\"\(Ending.init(classification: enumerationCase, description: "").color)\"><b>\(enumerationCase.rawValue)</b></font></td>\n"
        output += "  </tr>\n"
    }

    // End the table that comprises title section
    output += "</table>>]\n"
    output += "}\n"

    // Close out the graph
    output += "}\n"
    
    return output
    
}

let graphVizCommands = generateGraphvizCommands(using: storyInfo,
                                                with: storyNodes)

// Copy to the clipboard
let pasteBoard = NSPasteboard.general
pasteBoard.clearContents()
pasteBoard.setString(graphVizCommands, forType: .string)

// TODO: 6 - Paste the output from this program into a BBEdit text document named 'input.txt'.

// TODO: 7 - If you have not yet, install Homebrew.
//
//       https://brew.sh

// TODO: 8 - If you have not yet, install graphviz by running this command in the Terminal
//
//       brew install graphviz

// TODO: 9 - In the Terminal, from the folder 'input.txt' exists in, run the following command to generate your group's graph:
//
//           dot -Tpdf input.txt > output.pdf
