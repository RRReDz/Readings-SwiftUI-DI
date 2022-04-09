//
//  ToReadList.swift
//  Readings
//
//  Created by Riccardo Rossi Home on 09/04/22.
//

import SwiftUI

struct ToReadList: View {
    
    @EnvironmentObject var readingListController: ReadingListController
    
    var body: some View {
        List(readingListController.readingList) { item in
            HStack {
                Text(item.title)
                Text(item.author)
            }
        }
    }
}

struct ToReadList_Previews: PreviewProvider {
    static var previews: some View {
        ToReadList()
            .environmentObject(previewController)
    }
}
