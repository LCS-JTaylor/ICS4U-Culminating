//
//  Node.swift
//  ICS4U-Culminating
//
//  Created by Angus McAloon on 2022-05-25.
//

import Foundation

struct Node: Identifiable {
    let id: Int              // The node id (e.g.: 1, 2, 3, etc)
    let paragraphs: [String] // Models paragraphs on a page of the book
    let image: String?       // Name of image from assets folder, if one exits
    let edges: [Edge]         // A list of id's of nodes this node is connected to
    let ending: Bool
}

struct Edge {
    let destinationId: Int
    let prompt: String?
}

let nodes = [
    
    Node(id: 1, paragraphs: ["Highschool: Love or Crime by Team Infinity"], image: nil, edges: [Edge(destinationId: 2, prompt: nil)], ending: false)

    ,
    
    Node(id: 2, paragraphs: ["You are a new student in high school, you and your parents just moved from a small town. You’ve been homeschooled from Grade 9 to Grade 11 and are attending Grade 12 this year. You wake up, brush your teeth and get ready for school. Your mother made you breakfast and you realize you’re running late for class.",],
         image: nil, edges: [Edge(destinationId: 3, prompt: "If you decide to take the bus go to Node 3"), Edge(destinationId: 4, prompt: "If you decide to walk to school go to Node 4")], ending: false)
    
    ,
    
    Node(id: 3, paragraphs: ["You board the bus with your bright pink backpack ready to take on your first day of highschool as a senior. A few minutes after you sit down, you notice that the bus driver is impaired and starts driving recklessly looking like he’s about to crash."],
         image: nil, edges: [Edge(destinationId: 7, prompt: "If you decide to take control of the bus to stop the crash go to Node 7"), Edge(destinationId: 8, prompt: "If you decide to jump out of the bus to avoid the crash go to Node 8")], ending: false)
    
    ,
    
    Node(id: 4, paragraphs: ["You decide to walk to school, and realize that you're actually miles away. There’s no way you can be late on your first day of school. How are you supposed to meet new people, get to class and get settled in?"],
         image: nil, edges: [Edge(destinationId: 5, prompt: "If you decide to walk to school and accept the fact that you will be late, go to Node 5"), Edge(destinationId: 6, prompt: "If you decide to run to school to possibly avoid being late go to Node 6")], ending: false)
    
    ,
    
    Node(id: 5, paragraphs: ["You make it to class but you are unfortunately 3 hours and 50 minutes late, you made a terrible first impression. The principle thinks you aren’t suitable enough to attend their school if you can’t show up in time, you plead with him to give you a second     chance as you know that your mother will never forgive you and he somehow agrees but you must attend detention for a month.",
                             "ENDING: DETENTION"], image: nil, edges: [], ending: true)
    
    ,
    
    Node(id: 6, paragraphs: ["You begin to run as you know you can’t be late on your first day, you try and try to run as fast you can. You start to imagine what everyone will think of you and how they will judge you for being new and showing up late. All the overthinking leads to you getting distracted and you realize your keys just dropped out of your pocket and have fallen into the sewer. "], image: nil, edges: [Edge(destinationId: 10, prompt: nil)], ending: false)
    
    ,
    
    Node(id: 7, paragraphs: ["You find your way towards the front of the bus where the steering wheel lies, you grab the drunk bus driver and pull him off his seat forcing him to ragdoll on the ground. You sit down and try to take control of the situation. As you sit down, you remember that you were too lazy to get your driver's license in the summer and don't know how to drive."], image: nil, edges: [Edge(destinationId: 29, prompt: nil)], ending: false)
    
    ,
    
    Node(id: 8, paragraphs: ["You don't care about anyone else and decide to save yourself by jumping out of the bus. You open up the emergency window and jump out, falling on grass continuously rolling. "], image: nil, edges: [Edge(destinationId: 30, prompt: nil)], ending: false)
    
    ,
    
    Node(id: 9, paragraphs: [], image: nil, edges: [], ending: false)
    
    ,
    
    Node(id: 10, paragraphs: ["You know  how upset your mother will be if you lose the house keys, and how are you going to get home at the end of the day. Both your parents work late night shifts as they are doctors, you remember a trick your mother taught you when things get stuck, you crouch down and begin to try and pick them up."], image: nil, edges: [Edge(destinationId: 11, prompt: nil)], ending: false)
    
    ,
    
    Node(id: 11, paragraphs: ["Truck splashes you."], image: nil, edges: [Edge(destinationId: 12, prompt: nil)], ending: false)
    
    ,
    
    Node(id: 12, paragraphs: ["You go to class and are bullied because you are wet and smelly. do you fight back? or do you do nothing?"], image: nil, edges: [Edge(destinationId: 13, prompt: nil), Edge(destinationId: 14, prompt: nil)], ending: false)
    
    ,
    
    Node(id: 13, paragraphs: ["You decide to do something about it. do you attack him? or curse his family?"], image: nil, edges: [Edge(destinationId: 15, prompt: nil), Edge(destinationId: 16, prompt: nil)], ending: <#Bool#>)
    
    ,
    
    Node(id: 14, paragraphs: ["You just sat there and took the beating."], image: nil, edges: [Edge(destinationId: 17, prompt: nil)], ending: <#Bool#>)
    
    ,
    
    Node(id: 15, paragraphs: ["You curse his family"], image: nil, edges: [Edge(destinationId: 28, prompt: nil)], ending: <#Bool#>)
    
    ,
    
    Node(id: 16, paragraphs: ["You attack him"], image: nil, edges: [Edge(destinationId: 28, prompt: nil)], ending: <#Bool#>)
    
    ,
    
    Node(id: 17, paragraphs: ["A girl comes up to you afterwards and asks if you want to see here later?"], image: nil, edges: [Edge(destinationId: 18, prompt: nil), Edge(destinationId: 19, prompt: nil)], ending: <#Bool#>)
    
    ,
    
    Node(id: 18, paragraphs: ["you decide to meet up later, where do you go together, Harveys or the Itallian place?"], image: nil, edges: [Edge(destinationId: 20, prompt: nil), Edge(destinationId: 21, prompt: nil)], ending: <#Bool#>)
    
    ,
    
    Node(id: 19, paragraphs: [], image: nil, edges: [], ending: <#Bool#>)
    
    ,
    
    Node(id: 20, paragraphs: ["You go to the fancy restaurant."], image: nil, edges: [Edge(destinationId: 22, prompt: nil)], ending: <#Bool#>)
    
    ,
    
    Node(id: 21, paragraphs: [], image: nil, edges: [Edge(destinationId: 24, prompt: nil), Edge(destinationId: 25, prompt: nil)], ending: <#Bool#>)
    
    ,
    
    Node(id: 22, paragraphs: [], image: nil, edges: [Edge(destinationId: 23, prompt: nil)], ending: <#Bool#>)
    
    ,
    
    Node(id: 23, paragraphs: [], image: nil, edges: [], ending: <#Bool#>)
    
    ,
    
    Node(id: 24, paragraphs: [], image: nil, edges: [Edge(destinationId: 26, prompt: nil)], ending: <#Bool#>)
    
    ,
    
    Node(id: 25, paragraphs: [], image: nil, edges: [Edge(destinationId: 27, prompt: nil)], ending: <#Bool#>)
    
    ,
    
    Node(id: 26, paragraphs: [], image: nil, edges: [Edge(destinationId: 27, prompt: nil)], ending: <#Bool#>)
    
    ,
    
    Node(id: 27, paragraphs: [], image: nil, edges: [], ending: <#Bool#>)
    
    ,
    
    Node(id: 28, paragraphs: ["Detention!"], image: nil, edges: [], ending: <#Bool#>)
    
    ,
    
    Node(id: 29, paragraphs: ["You try to take control of the bus’s direction and straighten it out, you close your eyes and take a deep breath not realizing that you are about to lead everyone on the bus (including little Timmy) to their death by driving into another vehicle. You swerve to the right trying to avoid them and run into a tree killing everybody on the bus (including little Timmy).",
                              "ENDING: DEATH"], image: nil, edges: [], ending: <#Bool#>)
    
    ,
    
    Node(id: 30, paragraphs: ["After a few seconds of recovery, you pick yourself up and walk towards the destination of your bus. On your way there you find a coin."], image: nil, edges: [Edge(destinationId: 31, prompt: "If you decide to keep walking and forget the coin go to Node 31"),Edge(destinationId: 35, prompt: "If you decide to take the coin go to Node 35")], ending: false)
    
    ,
    
    Node(id: 31, paragraphs: ["As you are walking you come across a homeless guy and you start a conversation with him. You talk about politics and the economic state of the world but while doing so he said dogecoin to the dirt which aggravates you."], image: nil, edges: [Edge(destinationId: 33, prompt: "If you decide to throw coffee at him go to Node 33"), Edge(destinationId: 34, prompt: "If you decide to hug him, forgive him and donate a dolar go to Node 34")], ending: false)
    
    ,
    
    Node(id: 33, paragraphs: ["After throwing coffee at a homeless man, you are publicly humiliated and fall into a depression. Little did you know Little Timmy has loved you secretly his whole life and decided to kill himself after seeing you fall into a deep depression.", "ENDING: DEPRESSION"], image: nil, edges: [], ending: true)
    
    ,
    
    Node(id: 34, paragraphs: ["After spreading kindness to the homeless man he gets up from his torn sleeping bag and points towards a camera across the street. He reveals to you that he is infact Elon Musk, who has gone undercover as a homeless man for a social experiment. Thanks to your kind act Elon gives you 100% Ownership in tesla. You then live a life of luxury and happiness. Turns out money can buy happiness.", "ENDING: RICH 4 LIFE"], image: nil, edges: [], ending: true)
    
    ,
    
    Node(id: 35, paragraphs: ["The coin you had picked up belongs to a mafia family. They saw you pick it up and decided to kidnap you. As they torture you for taking there coin, you charm them with your resilience and kind compliments towards there skill in torturing others. They accept you as one of their own. Following this you climb the ranks and become their leader. With this new power of yours you kill Little Timmy for fun.", "ENDING: MAFIA"], image: nil, edges: [], ending: true)
    
    ,
    
]

