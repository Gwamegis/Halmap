//
//  SongHeaderView.swift
//  Halmap
//
//  Created by Yeni Hwang on 2022/10/08.
//

import SwiftUI

struct SongHeaderView: View {
    
    @Environment(\.presentationMode) var presentationMode
    var team: String = "롯데 자이언츠"
    var title: String = "유정인"
    
    var body: some View {

        ZStack{
            Image("lotteBackground")
                .resizable()
            
            
            HStack(spacing: 20){
                VStack(alignment: .leading, spacing: 10){
                    Spacer()
                    // TODO: - System Style to Custom Style
                    Text(team)
                        .font(.caption)
                        .foregroundColor(Color("songLabel"))
                        .bold()
                    // TODO: - System Style to Custom Style
                    Text(title)
                        .font(.title2)
                        .foregroundColor(.white)
                        .bold()
                }.padding(EdgeInsets(top: 0, leading: 20, bottom: 25, trailing: 20))
                
                Spacer()
                VStack(alignment: .trailing, spacing: 10){
                    Spacer()
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "xmark.circle.fill")
                            .resizable()
                            .frame(width: 30, height: 30, alignment: .center)
                            .foregroundColor(Color("sheetCloseButtonBlack"))
                    })
                    
                    Button(action: {
                        // TODO
                    }, label: {
                        ZStack{
                            Rectangle()
                                .foregroundColor(Color("LotteBackground"))
                                .cornerRadius(20)
                                .frame(width: 83, height: 44)
                            
                            Text("재생").foregroundColor(.white)
                                .bold()
                        }

                    })
                }.padding(EdgeInsets(top: 0, leading: 20, bottom: 17, trailing: 17))
            }
        }
    }
}
