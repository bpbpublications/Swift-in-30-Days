//
//  WordDelegate.swift
//  WordBank
//
//  Created by Gaurang on 04/04/2021.
//

import Foundation

protocol WordDelegate {
    func didSaveWord(word savedWord: Word)
    func didUpdateWord(word updatedWord: Word)
}
