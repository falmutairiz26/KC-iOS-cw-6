//
//  ContentView.swift
//  cw5
//
//  Created by ... on 23/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State var counter: [Int] = [0, 0, 0]
    var body: some View {
        ZStack {
            Image("mmm")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Spacer()
                HStack{
                    VStack{
                    Text("أستغفر الله العظيم")
                            .font(.title)
                            .foregroundColor(.black)
                            .padding()
                            .background(Color.white.opacity(0.4))
                            .cornerRadius(20)
                        prc()
                    }
                    .frame(width: 270, height: 240)
                    .background(Color.white.opacity(0.7))
                    .cornerRadius(20)
                    Spacer()
                }
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                    Text("الحمدلله")
                            .font(.title)
                            .foregroundColor(.black)
                            .padding()
                            .frame(width: 200, height: 60)
                            .background(Color.white.opacity(0.5))
                            .cornerRadius(20)
                        prc()
                    }
                    .frame(width: 250, height: 240)
                    .background(Color.white.opacity(0.7))
                    .cornerRadius(20)
                }
                Spacer()
                HStack{
                    VStack{
                    Text("سبحان الله وبحمده")
                            .font(.title)
                            .foregroundColor(.black)
                            .padding()
                            .background(Color.white.opacity(0.4))
                            .cornerRadius(20)
                    Spacer()
                        prc()
                    }.padding()
                        .frame(width: 270, height: 240)
                        .background(Color.white.opacity(0.7))
                        .cornerRadius(20)
                    Spacer()
                }
                Spacer()
            }.padding()
    }
    }
    }
// يجب عمل extract

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13")
    }
}

struct prc: View {
    @State var counter: [Int] = [0, 0, 0]
    var body: some View {
        Text("\(counter[0])")
            .font(.largeTitle)
            .frame(width: 100, height: 100, alignment: .center)
            .foregroundColor(.white)
            .background(Color("cp").opacity(0.8))
            .clipShape(Circle())
            .padding()
            .onTapGesture {
                counter[0] = counter[0] + 1
            }
    }
}
