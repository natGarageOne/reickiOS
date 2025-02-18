//
//  CharacterRepository.swift
//  SwiftRorty.iOS
//
//

import Foundation
import Combine
import Resolver

class CharacterRepository {
    @Injected private var remoteService: CharacterService

    func getCharacters(page: Int) -> AnyPublisher<CharacterResponse, Error> {
        remoteService.getCharacters(page: page)
    }
    
    func getCharacter(characterId: Int) -> AnyPublisher<CharacterInfo, Error> {
        remoteService.getCharacter(characterId: characterId)
    }
}
