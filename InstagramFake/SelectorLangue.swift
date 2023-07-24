//
//  SelectorLangue.swift
//  InstagramFake
//
//  Created by samuel maboza hondi on 17/04/2023.
//

import Foundation
import SwiftUI

struct Countries: Identifiable {
    let countrie: String;
    let language: String;
    let acronyme: String;
    let id = UUID()
}

let langues: [Countries] = [
    Countries(countrie: "France", language: "Français", acronyme: "fr"),
    Countries(countrie: "Etat-unis", language: "Anglais", acronyme: "en"),
    Countries(countrie: "Espagne", language: "Espagnol", acronyme: "es"),
    Countries(countrie: "Portugal", language: "Portugais", acronyme: "pt"),
]
