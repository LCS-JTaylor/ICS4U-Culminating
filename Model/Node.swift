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
    let edges: [Int]         // A list of id's of nodes this node is connected to
}

let nodes = [
    
    Node(id: 1, paragraphs: ["Highschool: Love or Crime by Team Infinity"], image: nil, edges: [2])

    ,
    
    Node(id: 2, paragraphs: ["You are a new student in high school, you and your parents just moved from a small town. You’ve been homeschooled from Grade 9 to Grade 11 and are attending Grade 12 this year. You wake up, brush your teeth and get ready for school. Your mother made you breakfast and you realize you’re running late for class.",
            "Do you?",
            "Take the bus (Node 3)",
            "or",
            "Walk to school (Node 4)"], image: nil, edges: [3, 4])
    
    ,
    
    Node(id: 3, paragraphs: ["You board the bus with your bright pink backpack ready to take on your first day of highschool as a senior. A few minutes after you sit down, you notice that the bus driver is impaired and starts driving recklessly looking like he’s about to crash.",
            "Do you?",
            "Take control of the bus (Node 7)",
            "Or",
            "Jump out (Node 8)"], image: nil, edges: [7, 8])
    
    ,
    
    Node(id: 4, paragraphs: ["You decide to walk to school, and realize that you're actually miles away. There’s no way you can be late on your first day of school. How are you supposed to meet new people, get to class and get settled in?",
            "Do you?",
            "Walk to school and accept that you’ll be late? (Node 5)",
            "Or",
            "Run to school, you don’t wanna be late. (Node 6)"], image: nil, edges: [5, 6])
    
    ,
    
    Node(id: 5, paragraphs: ["You make it to class but you are unfortunately 3 hours and 50 minutes late, you made a terrible first impression. The principle thinks you aren’t suitable enough to attend their school if you can’t show up in time, you plead with him to give you a second     chance as you know that your mother will never forgive you and he somehow agrees but you must attend detention for a month.",
            "ENDING: DETENTION"], image: nil, edges: [])
    
    ,
    
    Node(id: 6, paragraphs: ["You begin to run as you know you can’t be late on your first day, you try and try to run as fast you can. You start to imagine what everyone will think of you and how they will judge you for being new and showing up late. All the overthinking leads to you getting distracted and you realize your keys just dropped out of your pocket and have fallen into the sewer. "], image: nil, edges: [10])
    
    ,
    
    Node(id: 7, paragraphs: ["You take control of the bus"], image: nil, edges: [29])
    
    ,
    
    Node(id: 8, paragraphs: ["You jump out of the bus."], image: nil, edges: [30])
    
    ,
    
    Node(id: 9, paragraphs: [], image: nil, edges: [])
    
    ,
    
    Node(id: 10, paragraphs: ["You know  how upset your mother will be if you lose the house keys, and how are you going to get home at the end of the day. Both your parents work late night shifts as they are doctors, you remember a trick your mother taught you when things get stuck, you crouch down and begin to try and pick them up."], image: nil, edges: [11])
    
    ,
    
    Node(id: 11, paragraphs: ["Truck splashes you."], image: nil, edges: [12])
    
    ,
    
    Node(id: 12, paragraphs: ["You go to class and are bullied because you are wet and smelly. do you fight back? or do you do nothing?"], image: nil, edges: [13, 14])
    
    ,
    
    Node(id: 13, paragraphs: ["You decide to do something about it. do you attack him? or curse his family?"], image: nil, edges: [15, 16])
    
    ,
    
    Node(id: 14, paragraphs: ["You just sat there and took the beating."], image: nil, edges: [17])
    
    ,
    
    Node(id: 15, paragraphs: ["You curse his family"], image: nil, edges: [28])
    
    ,
    
    Node(id: 16, paragraphs: ["You attack him"], image: nil, edges: [28])
    
    ,
    
    Node(id: 17, paragraphs: ["A girl comes up to you afterwards and asks if you want to see here later?"], image: nil, edges: [18, 19])
    
    ,
    
    Node(id: 18, paragraphs: ["you decide to meet up later, where do you go together, Harveys or the Itallian place?"], image: nil, edges: [20, 21])
    
    ,
    
    Node(id: 19, paragraphs: [], image: nil, edges: [])
    
    ,
    
    Node(id: 20, paragraphs: ["You go to the fancy restaurant."], image: nil, edges: [22])
    
    ,
    
    Node(id: 21, paragraphs: [], image: nil, edges: [24, 25])
    
    ,
    
    Node(id: 22, paragraphs: [], image: nil, edges: [23])
    
    ,
    
    Node(id: 23, paragraphs: [], image: nil, edges: [])
    
    ,
    
    Node(id: 24, paragraphs: [], image: nil, edges: [26])
    
    ,
    
    Node(id: 25, paragraphs: [], image: nil, edges: [27])
    
    ,
    
    Node(id: 26, paragraphs: [], image: nil, edges: [27])
    
    ,
    
    Node(id: 27, paragraphs: [], image: nil, edges: [])
    
    ,
    
    Node(id: 28, paragraphs: ["Detention!"], image: nil, edges: [])
    
    ,
    
    Node(id: 29, paragraphs: ["You try to take control of the bus’s direction and straighten it out, you close your eyes and take a deep breath not realizing that you are about to lead everyone on the bus (including little Timmy) to their death by driving into another vehicle. You swerve to the right trying to avoid them and run into a tree killing everybody on the bus (including little Timmy).",
            "ENDING: DEATH"], image: nil, edges: [])
]

