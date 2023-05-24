
import SwiftUI

struct IconPage: View {
    
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        
        if isActive {
            SecondView()
            
        } else {
            
            VStack{
                ZStack{
                    Color("background").edgesIgnoringSafeArea(.all)
                    
                    VStack(spacing: 5){
                        Image("icon")
                            .resizable()
                            .frame(width: 230, height: 220)
                        Text("Farm Fusion")
                            .font(.system(size: 40, weight: .semibold, design: .rounded))
                            .foregroundColor(Color.white)
                    } .scaleEffect(size)
                        .opacity(opacity)
                        .onAppear{
                            withAnimation(.easeIn(duration: 1.2)) {
                                self.size = 0.9
                                self.opacity = 1.0
                            }
                        }
                } .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        self.isActive = true
                    }
                }
            }
        }
        
    }
}


struct IconPage_Previews: PreviewProvider {
    static var previews: some View {
        IconPage()
    }
}

