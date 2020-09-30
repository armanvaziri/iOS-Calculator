//
//  ContentView.swift
//  CalculatorLightMode
//
//  Created by Arman Vaziri on 9/13/20.
//  Copyright © 2020 iOS DeCal. All rights reserved.
//

import SwiftUI

enum CalculatorButton: String {
    
    case zero, one, two, three, four, five, six, seven, eight, nine, dot
    case equals, plus, minus, multiply, divide
    case ac, plusMinus, percent
    
    var backgroundColor: Color {
        switch self {
        case .equals, .plus, .minus, .multiply, .divide:
            return Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        case .ac, .plusMinus, .percent:
            return Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1))
        default:
            return Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
        }
    }
    
    var title: String {
        switch self {
        case .zero: return "0"
        case .one: return "1"
        case .two: return "2"
        case .three: return "3"
        case .four: return "4"
        case .five: return "5"
        case .six: return "6"
        case .seven: return "7"
        case .eight: return "8"
        case .nine: return "9"
        case .plusMinus: return "+/-"
        case .percent: return "%"
        case .divide: return "÷"
        case .multiply: return "x"
        case .minus: return "-"
        case .plus: return "+"
        case .equals: return "="
        case .dot: return "."
        default: return "AC"
        }
    }
    
}

class GlobalEnvironment: ObservableObject {
    
    @Published var displayText = "0"
    
    func buttonInput(button: CalculatorButton) {
        if button == .ac {
            self.displayText = "0"
        } else {
            self.displayText = button.title
        }
    }
    
}


struct ContentView: View {
    
    @EnvironmentObject var environment: GlobalEnvironment
    
    let buttonValues: [[CalculatorButton]] = [
        [.ac, .plusMinus, .percent, .divide],
        [.seven, .eight, .nine, .multiply],
        [.four, .five, .six, .minus],
        [.one, .two, .three, .plus],
        [.zero, .dot, .equals]
    ]
    
    var body: some View {
        
        VStack(spacing: 10) {
            
            HStack {
                Spacer()
                Text(self.environment.displayText).font(.system(size: UIScreen.main.bounds.height * 0.1))
            }.padding()
            
            ForEach(buttonValues, id: \.self) { row in
                HStack {
                    ForEach(row, id: \.self) { button in
                        
                        CalculatorButtonView(button: button)
                        
                    }
                }
            
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .bottom)
        .padding(.bottom, 15)
        
    }
    
}

struct CalculatorButtonView: View {
    
    var button: CalculatorButton
    
    @EnvironmentObject var environment: GlobalEnvironment
    
    var body: some View {
        
        Button(action: {
            self.environment.buttonInput(button: button)
        }, label: {
            Text(button.title)
                .font(.title)
                .foregroundColor(.white)
                .frame(width: self.buttonWidth(button: button), height: self.buttonHeight())
                .background(button.backgroundColor)
                .cornerRadius(self.buttonHeight())
        })
        
    }
    
    func buttonWidth(button: CalculatorButton) -> CGFloat {
        if button == .zero {
            return (UIScreen.main.bounds.width - 4 * 10) / 4 * 2
        }
        return (UIScreen.main.bounds.width - 5 * 10) / 4
    }
    
    func buttonHeight() -> CGFloat {
        return (UIScreen.main.bounds.width - 5 * 10) / 4
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
