//
//  ReciptImage.swift
//  apri
//
//  Created by Joanna Aloor on 26/06/2021.
//

import SwiftUI

struct ReceiptImage: View {
    var body: some View {
        Image(uiImage: #imageLiteral(resourceName: "starbucksreceipt"))
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

struct ReceiptImage_Previews: PreviewProvider {
    static var previews: some View {
        ReceiptImage()
    }
}
