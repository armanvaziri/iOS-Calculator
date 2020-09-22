//
//  ContentView.swift
//  CalculatorLightMode
//
//  Created by Arman Vaziri on 9/13/20.
//  Copyright © 2020 iOS DeCal. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        VStack(spacing: 10) {
                
                Text("0")
                    .multilineTextAlignment(.trailing)
                    .font(.system(size: 80))
                    .frame(minWidth: 0,
                           maxWidth: .infinity,
                           minHeight: 0,
                           maxHeight: .infinity,
                           alignment: .bottomTrailing)
                    .padding(.trailing, 33)
                
                // First row of buttons
                HStack {
                    Button(action: {
                        print("AC tapped")
                    }) {
                        Text("AC")
                            .frame(width: 80, height: 80)
                            .background(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                            .foregroundColor(.white)
                            .cornerRadius(80 / 2)
                            .font(.title)
                    }
                    Button(action: {
                        print("+/- tapped")
                    }) {
                        Text("+/-")
                            .frame(width: 80, height: 80)
                            .background(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                            .foregroundColor(.white)
                            .cornerRadius(80 / 2)
                            .font(.title)
                    }
                    Button(action: {
                        print("% tapped")
                    }) {
                        Text("%")
                            .frame(width: 80, height: 80)
                            .background(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                            .foregroundColor(.white)
                            .cornerRadius(80 / 2)
                            .font(.title)
                    }
                    Button(action: {
                        print("÷ tapped")
                    }) {
                        Text("÷")
                            .frame(width: 80, height: 80)
                            .background(Color(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)))
                            .foregroundColor(.white)
                            .cornerRadius(80 / 2)
                            .font(.largeTitle)
                    }
                }
                
                // Second row of buttons
                HStack {
                    Button(action: {
                        print("7 tapped")
                    }) {
                        Text("7")
                            .frame(width: 80, height: 80)
                            .background(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                            .foregroundColor(.white)
                            .cornerRadius(80 / 2)
                            .font(.title)
                    }
                    Button(action: {
                        print("8 tapped")
                    }) {
                        Text("8")
                            .frame(width: 80, height: 80)
                            .background(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                            .foregroundColor(.white)
                            .cornerRadius(80 / 2)
                            .font(.title)
                    }
                    Button(action: {
                        print("9 tapped")
                    }) {
                        Text("9")
                            .frame(width: 80, height: 80)
                            .background(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                            .foregroundColor(.white)
                            .cornerRadius(80 / 2)
                            .font(.title)
                    }
                    Button(action: {
                        print("× tapped")
                    }) {
                        Text("×")
                            .frame(width: 80, height: 80)
                            .background(Color(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)))
                            .foregroundColor(.white)
                            .cornerRadius(80 / 2)
                            .font(.largeTitle)
                    }
                }
                
                // Third row of buttons
                HStack {
                    Button(action: {
                        print("4 tapped")
                    }) {
                        Text("4")
                            .frame(width: 80, height: 80)
                            .background(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                            .foregroundColor(.white)
                            .cornerRadius(80 / 2)
                            .font(.title)
                    }
                    Button(action: {
                        print("5 tapped")
                    }) {
                        Text("5")
                            .frame(width: 80, height: 80)
                            .background(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                            .foregroundColor(.white)
                            .cornerRadius(80 / 2)
                            .font(.title)
                    }
                    Button(action: {
                        print("6 tapped")
                    }) {
                        Text("6")
                            .frame(width: 80, height: 80)
                            .background(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                            .foregroundColor(.white)
                            .cornerRadius(80 / 2)
                            .font(.title)
                    }
                    Button(action: {
                        print("− tapped")
                    }) {
                        Text("−")
                            .frame(width: 80, height: 80)
                            .background(Color(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)))
                            .foregroundColor(.white)
                            .cornerRadius(80 / 2)
                            .font(.largeTitle)
                    }
                }
                
                // Fourth row of buttons
                HStack {
                    Button(action: {
                        print("1 tapped")
                    }) {
                        Text("1")
                            .frame(width: 80, height: 80)
                            .background(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                            .foregroundColor(.white)
                            .cornerRadius(80 / 2)
                            .font(.title)
                    }
                    Button(action: {
                        print("2 tapped")
                    }) {
                        Text("2")
                            .frame(width: 80, height: 80)
                            .background(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                            .foregroundColor(.white)
                            .cornerRadius(80 / 2)
                            .font(.title)
                    }
                    Button(action: {
                        print("3 tapped")
                    }) {
                        Text("3")
                            .frame(width: 80, height: 80)
                            .background(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                            .foregroundColor(.white)
                            .cornerRadius(80 / 2)
                            .font(.title)
                    }
                    Button(action: {
                        print("+ tapped")
                    }) {
                        Text("+")
                            .frame(width: 80, height: 80)
                            .background(Color(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)))
                            .foregroundColor(.white)
                            .cornerRadius(80 / 2)
                            .font(.largeTitle)
                    }
                }
                
                // Last row of buttons
                HStack {
                    Button(action: {
                        print("0 tapped")
                    }) {
                        Text("0")
                            .frame(width: 160, height: 80)
                            .background(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                            .foregroundColor(.white)
                            .cornerRadius(160 / 2)
                            .font(.title)
                    }
                    Button(action: {
                        print(". tapped")
                    }) {
                        Text(".")
                            .frame(width: 80, height: 80)
                            .background(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                            .foregroundColor(.white)
                            .cornerRadius(80 / 2)
                            .font(.largeTitle)
                    }
                    Button(action: {
                        print("= tapped")
                    }) {
                        Text("=")
                            .frame(width: 80, height: 80)
                            .background(Color(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)))
                            .foregroundColor(.white)
                            .cornerRadius(80 / 2)
                            .font(.title)
                    }
                }

            }
        .frame(minWidth: 0,
               maxWidth: .infinity,
               minHeight: 0,
               maxHeight: .infinity,
               alignment: .bottom)
        .padding(.bottom, 15)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
