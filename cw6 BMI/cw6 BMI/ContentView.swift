//
//  ContentView.swift
//  cw6 BMI
//
//  Created by Fatemah Almutairi on 13/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var weight = ""
    @State var height = ""
    @State var result = 0.0
    @State var health = ""
    var body: some View {
        ZStack {
            Color("back")
            .ignoresSafeArea()
            VStack {
                Spacer()
                Image("scale")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .padding()
                TextField("Enter weight", text: $weight)
                    .padding()
                    .frame(width: 200, height: 35)
                    .background(Color.white)
                    .cornerRadius(10)
                TextField("Enter height", text: $height)
                .padding()
                .frame(width: 200, height: 35)
                .background(Color.white)
                .cornerRadius(10)
                Button {
                    result = bmical(w: Double(weight) ?? 0.0, h: Double(height) ?? 0.0)
                    if result <= 20
                    {
                        health = "Underweight"
                    }
                    else if result >= 20 && result <= 25
                    {
                        health = "Good"
                    }
                    else if result > 25
                    {
                        health = "Overweight"
                    }
                    
                } label: {
                    Text("calculate BMI")
                        .padding()
                        .foregroundColor(.white)
                        .frame(width: 150, height: 35)
                        .background(Color.gray.opacity(0.5))
                        .cornerRadius(10)
                }
                
                Text("BMI =\n \(result)")
                    .padding()
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                
                Text("Your body is \(health)")
                    .foregroundColor(.white)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding()
                    .frame(width: 350, height: 50)
                    .background(Color.purple.opacity(0.25))
                    .cornerRadius(20)
                Spacer()
            }
        }
    }
    func bmical(w: Double, h: Double) -> Double{
        return w / (h * h)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13")
    }
}
