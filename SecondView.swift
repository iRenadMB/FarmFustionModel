
import SwiftUI

struct SecondView: View {
    
    @State var showFullScreen1: Bool = false
    @State var showFullScreen2: Bool = false

    var body: some View {
        
        NavigationStack{
            
            VStack(alignment: .leading, spacing: 200){
                
                ZStack{
                    
                    Color("background")
                        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                        .edgesIgnoringSafeArea(.all)
                    
                    Image("vegetables")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .scaledToFit()
                        .frame(width: 360, height: 360)
                        .padding(.bottom, 400)
                    
                    RoundedRectangle(cornerRadius: 35)
                        .padding(.top, 400)
                        .foregroundColor(.white)
                        .frame(width: 400, height: 900 )
                        .presentationDetents([.medium, .fraction((0.40))])
                    Spacer()
                    
                    VStack{
                        Spacer()
                        
                        Text("A Healthy Choice for a wealthy life.")
                            .font(.system(size: 30, weight: .heavy, design: .default))
                            .padding(.horizontal,23)
                            .padding(.bottom,10)
                        
                        Text("Delivering organic produce straight from the farm to your doorstep. With easy ordering and delivery options, enjoy the freshest produce available.")
                            .fontWeight(.light)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal,27)
                            .padding(.bottom,40)
                        
                        Button("I am a Farmer") {
                            showFullScreen1.toggle()
                        }
                            .foregroundColor(Color.white)
                            .frame(width: 340, height: 50)
                            .background(Color("background"))
                            .cornerRadius(10)
                            .padding(.leading)
                            .padding(.bottom,3)
                        
                        Button("I am a User") {
                            showFullScreen2.toggle()
                        }
                            .foregroundColor(Color.white)
                            .frame(width: 340, height: 50)
                            .background(Color("background"))
                            .cornerRadius(10)
                            .padding(.leading)
                            .padding(.bottom,90)
                        
                    }
                }
            }
        }.fullScreenCover(isPresented: $showFullScreen1) {
            SignUp()
        }
        .fullScreenCover(isPresented: $showFullScreen2) {
            WelcomePage()
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
