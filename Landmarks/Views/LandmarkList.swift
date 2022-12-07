//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Rodolfo Gutierrez on 7/12/22.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks){ landmark in
                NavigationLink{
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("LandMarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (3rd generation)",/*@START_MENU_TOKEN@*/"iPhone 14"/*@END_MENU_TOKEN@*/], id: \.self){ deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewLayout(.device)
                .previewDisplayName(deviceName)
        }
    }
}
