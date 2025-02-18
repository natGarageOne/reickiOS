//
//  CharactersPage.swift
//  SwiftRorty.iOS
//
//

import SwiftUI

struct CharactersScreen: View {
    @ObservedObject
    var viewModel = CharactersViewModel()
    
    @State private var showAlert = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.Background.edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    LazyVStack {
                        
                        ForEach(viewModel.charactersList, id: \.id) { character in
                            CharacterRow(dto: character)
                        }
                        
                        ProgressView()
                            .progressViewStyle(CircularProgressViewStyle())
                            .onAppear {
                                viewModel.loadNextPage()
                            }.disabled(!viewModel.hasMorePages)
                        
                    }.padding(.all, 8)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    VStack {
                        Text(LocalizedStringKey("toolbar_characters_title")).fontStyle(RortyFont.title)
                    }
                }
            }.onAppear(perform: {
                viewModel.loadPage()
            })
        }
    }
 
    
}

struct CharactersScreen_Previews: PreviewProvider {
    static var previews: some View {
        CharactersScreen()
    }
}
