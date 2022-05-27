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
    
    Node(id: 1, paragraphs: ["Intro"], image: nil, edges: [2])

    ,
    
    Node(id: 2, paragraphs: ["Do you take the bus to school? or do you walk instead?"], image: nil, edges: [3, 4])
    
    ,
    
    Node(id: 3, paragraphs: ["You Chose to take the bus"], image: nil, edges: [7, 8])
    
    ,
    
    Node(id: 4, paragraphs: ["You chose to walk to school. You are now late to school, do you keep walking? or do you run to school?"], image: nil, edges: [5, 6])
    
    ,
    
    Node(id: 5, paragraphs: ["You continue to walk to school."], image: nil, edges: [9])
    
    ,
    
    Node(id: 6, paragraphs: ["You run to school. you drop your keys on the side of the road."], image: nil, edges: [10])
    
    ,
    
    Node(id: 7, paragraphs: ["You take control of the bus"], image: nil, edges: <#T##[Int]#>)
    
    ,
    
    Node(id: 8, paragraphs: ["You jump out of the bus."], image: nil, edges: <#T##[Int]#>)
    
    ,
    
    Node(id: 9, paragraphs: ["Detention!"], image: nil, edges: <#T##[Int]#>)
    
    ,
    
    Node(id: 10, paragraphs: ["You pick up your keys"], image: nil, edges: <#T##[Int]#>)
    
    ,
    
    Node(id: 11, paragraphs: ["Truck splashes you."], image: nil, edges: [12])
    
    ,
    
    Node(id: 12, paragraphs: ["You go to class and are bullied because you are wet and smelly. do you fight back? or do you do nothing?"], image: nil, edges: [13, 14])
    
    ,
    
    Node(id: 13, paragraphs: ["You decide to do something about it. do you attack him? or curse his family?"], image: nil, edges: [15, 16])
    
    ,
    
    Node(id: 14, paragraphs: ["You just sat there and took the beating."], image: nil, edges: <#T##[Int]#>)
    
    ,
    
    Node(id: 15, paragraphs: ["You curse his family"], image: nil, edges: [28])
    
    ,
    
    Node(id: 16, paragraphs: ["You attack him"], image: nil, edges: [28])
    
    ,
    
    Node(id: 17, paragraphs: ["A girl comes up to you afterwards and asks if you want to see here later?"], image: nil, edges: [18, 19])
    
    ,
    
    Node(id: 18, paragraphs: ["you decide to meet up later, where do you go together, Harveys or the Itallian place?"], image: nil, edges: [20, 21])
    
    ,
    
    Node(id: 19, paragraphs: <#T##[String]#>, image: nil, edges: <#T##[Int]#>)
    
    ,
    
    Node(id: 20, paragraphs: <#T##[String]#>, image: nil, edges: <#T##[Int]#>)
    
    ,
    
    Node(id: 21, paragraphs: <#T##[String]#>, image: nil, edges: <#T##[Int]#>)
    
    ,
    
    Node(id: 22, paragraphs: <#T##[String]#>, image: nil, edges: <#T##[Int]#>)
    
    ,
    
    Node(id: 23, paragraphs: <#T##[String]#>, image: <#T##String?#>, edges: <#T##[Int]#>)
    
    ,
    
    Node(id: 24, paragraphs: <#T##[String]#>, image: <#T##String?#>, edges: <#T##[Int]#>)
    
    ,
    
    Node(id: 25, paragraphs: <#T##[String]#>, image: <#T##String?#>, edges: <#T##[Int]#>)
    
    ,
    
    Node(id: 26, paragraphs: <#T##[String]#>, image: <#T##String?#>, edges: <#T##[Int]#>)
    
    ,
    
    Node(id: 27, paragraphs: <#T##[String]#>, image: <#T##String?#>, edges: <#T##[Int]#>)
    
    ,
    
    Node(id: 28, paragraphs: ["Detention!"], image: nil, edges: <#T##[Int]#>)
]

