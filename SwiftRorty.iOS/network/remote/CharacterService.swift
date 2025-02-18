//
//  CharacterService.swift
//  SwiftRorty.iOS
//
//

import Foundation
import Combine
import Resolver

protocol CharacterService {
    func getCharacters(page: Int) -> AnyPublisher<CharacterResponse, Error>
    func getCharacter(characterId: Int) -> AnyPublisher<CharacterInfo, Error>
}

class CharacterServiceImpl: CharacterService {
    @Injected private var restClient: RestClient
    
    func getCharacters(page: Int) -> AnyPublisher<CharacterResponse, Error> {
        restClient.get(APIEndpoint.characters(page))
    }
    
    func getCharacter(characterId: Int) -> AnyPublisher<CharacterInfo, Error> {
        restClient.get(APIEndpoint.character(characterId))
    }
}
