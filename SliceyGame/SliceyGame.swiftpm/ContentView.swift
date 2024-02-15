
import SwiftUI

struct ContentView: View {
    @State private var isGameViewPresented = false
    
    var body: some View {
        VStack {
            Text("Welcome to Slicey Game!").font(.system(size:50))
                .font(.title)
                .padding()
            
            Text("Avoid junk foods and promote healthy eating habits❗️").font(.system(size:25))
                .multilineTextAlignment(.center)
                .padding()
            
            VStack {
//                Text("Healthy foods are like superheroes for your body! They give you energy, help you grow strong, and keep you feeling great. Fruits and veggies, whole grains, lean proteins, and dairy foods are all part of the healthy team, providing essential nutrients to keep you going strong!").font(.system(size:25))
//                    .multilineTextAlignment(.center)
//                    .padding()
                Text("Healthy foods are like superheroes for your body! They give you energy, help you grow strong, and keep you feeling great. ").font(.system(size:35))
                    .multilineTextAlignment(.center)
                    .padding()
            }
//            .background(LinearGradient(gradient: Gradient(colors: [.orange, .yellow]), startPoint: .top, endPoint: .bottom))
//            .cornerRadius(30)
            .foregroundStyle(.white)
                                .background(.orange.gradient)
                                .cornerRadius(30)
            .padding()
            
            VStack {
//                Text("Junk foods are like sneaky villains that try to trick your body. They might taste yummy, but they don't give your body the good stuff it needs to stay healthy. Sugary snacks, fried foods, and sugary drinks can make you feel sluggish and tired. It's okay to enjoy them once in a while, but it's best to mostly eat foods that make your body feel strong and happy!").font(.system(size:25))
//                    .multilineTextAlignment(.center)
//                    .padding()
                Text("Junk foods are like sneaky villains that try to trick your body. They might taste yummy, but they don't give your body the good stuff it needs to stay healthy. ").font(.system(size:35))
                    .multilineTextAlignment(.center)
                    .padding()
            }
            .foregroundStyle(.white)
            .background(.red.gradient)
            .cornerRadius(30)
//            .background(LinearGradient(gradient: Gradient(colors: [.red, .orange]), startPoint: .top, endPoint: .bottom))
//            .cornerRadius(30)
            .padding()
            
            Text("Instructions:")
                .font(.headline)
                .padding(.top)
            
            Text("Slice the fruits images🍟🍔🌭 and avoid slicing the junk food images🍎🍌🥝.").font(.system(size:25))
                .multilineTextAlignment(.center)
                .padding()
                .foregroundStyle(.white)
                .background(.green.gradient)
                .cornerRadius(30)
                .padding()
            
            Button(action: {
                self.isGameViewPresented = true
            }) {
                Text("Start Game")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding()
            .fullScreenCover(isPresented: $isGameViewPresented) {
                GameView()
            }
        }
        .padding()
        
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

