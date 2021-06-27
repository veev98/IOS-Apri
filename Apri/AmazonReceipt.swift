//
//  AmazonReceipt.swift
//  Apri
//
//  Created by Joanna Aloor on 27/06/2021.
//

import SwiftUI

struct AmazonReceipt: View {
    var body: some View {
        Image(uiImage: #imageLiteral(resourceName: "amazonreceipt"))
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

struct AmazonReceipt_Previews: PreviewProvider {
    static var previews: some View {
        AmazonReceipt()
    }
}
