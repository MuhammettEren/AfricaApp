//
//  CenterModifier.swift
//  AfricaApp
//
//  Created by Muhammet Eren on 31.10.2023.
//

import Foundation
import SwiftUI

struct CenterModifier:ViewModifier{
    func body(content:Content) -> some View{
        HStack{
            Spacer()
            content
            Spacer()
        }
    }
}
