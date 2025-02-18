//
//  HomeScreen.swift
//  SwiftRorty.iOS
//
//

import SwiftUI

struct HomeScreen: View {
    
    init() {
        let appeareance = UITabBarAppearance()
        appeareance.backgroundColor = UIColor(Color.Primary)
        
    }
    
    var body: some View {
        CharactersScreen()
      
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
