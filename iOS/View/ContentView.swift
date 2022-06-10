//
//  ContentView.swift
//  ICS4U-Culminating
//
//  Created by Angus McAloon on 2022-06-01.
//

import SwiftUI

struct ContentView: View {
    
//    var timmyDeathCounter = 0
//    mutating func addTimmyDeath(){
//        if currentNode.timmyDeath == true{
//            timmyDeathCounter += 1
//        }
//    }
    
    // MARK: Stored properties (store things)
    
    // What page are we on?
    @State var activeNode = 0
    
    // MARK: Computed properties (tell us things or show us things)
    
    // Whether the game is being played or not
    var gameIsOn: Bool {
        // Returns true when the game is being played
        //       CONDITION
        return activeNode > 0
    }
    
    // The currently active actual node
    var currentNode: Node {
        // Return the active node
        // If we cannot do so, return an empty node
        // (we use the nil coalescing operator ?? to do this)
        return nodes[activeNode] ?? emptyNode
        
        //need to fix empty node
    }
    
    // User interface
    var body: some View {
        
        if gameIsOn == false {
            
            // Welcome screen
            Text("Press to Play!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .lineLimit(nil)
                .padding(.all, 16.0)
                .background(Color.red)
                .accentColor(Color.white)
                .onTapGesture {
                    startGame()
                
                }
            
        } else {
            
            // Game is being played
            // Show the node
            NodeView(node: currentNode, activeNode: $activeNode)
            
        }
        
        if (currentNode.ending != nil) == true{
            

            
            Text("Player Statistics")
            Text("You have killed Timmy _ times")
            
        }
            
    }
    
    
    // MARK: Functions (do things)
    
    // Start the game
    func startGame() {
        // NOTE: We can set this to whatever we want for debugging later on
        activeNode = 1
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
            .environment(\.sizeCategory, .extraExtraExtraLarge)
            
            
            
            
    }
}
