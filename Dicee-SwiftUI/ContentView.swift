
import SwiftUI

struct ContentView: View {
    
   @State var leftDiceNumber = 1
   @State var rightDiceNumber = 1
    
    var body: some View {
       
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Image("diceeLogo")
                Spacer()
                HStack {
                 DiceView(n: leftDiceNumber)
                 DiceView(n: rightDiceNumber)
                }
                .padding(.horizontal)
                .padding(.all)
                Spacer()
                Spacer()
                Button("Roll")
                     {
                  self.leftDiceNumber = Int.random(in: 1...6)
                  self.rightDiceNumber = Int.random(in: 1...6)
                     }
                     .font(.system(size: 40).bold())
                     .foregroundColor(.white)
                     .padding(.horizontal, 30.0)
                     .padding(.vertical)
                     .background(Color.red)
                     .cornerRadius(20)
                     .padding(.bottom)
            }
        }
    }
}
struct DiceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

