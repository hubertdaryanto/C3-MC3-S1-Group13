//
//  ExploreItemView.swift
//  Aplikasi Motor
//
//  Created by Feri Fajri on 27/07/20.
//  Copyright © 2020 Hubert Daryanto. All rights reserved.
//

import SwiftUI

struct ExploreItemView: View {
    
    var explore:ExploreRevised
    
    
    var body: some View {
//        ZStack {
//        GeometryReader { geometry in
        NavigationLink(destination: ExploreDetailsView(explore: self.explore))
                                {
        VStack {
            
            Image(self.explore.imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fill)
                .frame(width: 350, height: 220)
                .cornerRadius(10)
                .shadow(radius: 5)
//                .padding(.leading)
//            .padding(.trailing)
            
            
            HStack {
                
                VStack(alignment: .leading, spacing: 5.0) {
                    
                    Text(self.explore.name).font(.system(size: 16)).bold()
                    .foregroundColor(Color("baseColor").opacity(1))
                    Text(self.explore.province).font(.system(size: 12))
                        .fontWeight(.light).foregroundColor(Color.black)
                    
                    HStack(spacing:0){
                        
                        ForEach(0..<Int(modf(self.explore.rating).0)) { numstar in
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 10, height: 10)
                                .foregroundColor(Color("baseColor").opacity(1))
                        }
                        
                        if (round(modf(self.explore.rating).1 * 2) / 2 ) == 1 {
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 10, height: 10)
                                .foregroundColor(Color("baseColor").opacity(1))
                        } else  {
                            Image(systemName: "star.lefthalf.fill")
                                .resizable()
                                .frame(width: 10, height: 10)
                                .foregroundColor(Color("baseColor").opacity(1))
                        }
                        
                        
                        Text("(\(self.explore.review.count) Reviews)").font(.system(size: 10))
                            .fontWeight(.semibold)
                            .foregroundColor(Color("foregroundGrey").opacity(0.4))
                        
                    }
                    
                    Text("Maximum \(self.explore.maximumPeople) of people").font(.caption).foregroundColor(.secondary)
                }
                Spacer()
                
//                Button(action: {
//                    print("Ubah State Ride Disini")
//                    //self.deleteEventInvitationsList(at:self.EventInvitationsList.firstIndex(where: { $0.id == index.id })!)
//                }){
                    Text("Ride").font(.system(size: 12)).fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .frame(minWidth: 0, maxWidth: 64, maxHeight: 22)
                        .background(Color("baseColor").opacity(1)).cornerRadius(30)
//                }
//                .buttonStyle(PlainButtonStyle())
                .shadow(radius: 2, x: 1, y: 2)
                
                
//                ZStack{
//                    NavigationLink(destination: CreateEventView()){
//                        EmptyView()
//                    }

                    
                
//                ZStack {
//                        NavigationLink(destination: CreateEventView())
//                        {
//                            Image(systemName: "plus.circle.fill").resizable().foregroundColor(Color(red: 0.96484375, green: 0.7421875, blue: 0)).frame(width: 50, height: 50, alignment: .center)
//                            .shadow(radius: 2, x: 1, y: 2)
//                        }
//
//                    }
             
                
                
//            }
            
                                    }
            .padding()
            
//            .padding(.bottom)
            
        }

        
//        .padding()
//        }
            }
//        }
    
    }
        

}
struct ExploreItemView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreItemView(explore: exploreData[0])
    }
}
