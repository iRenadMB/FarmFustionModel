
import SwiftUI

struct CommunityPage: View {
    
    @State var showFullScreen: Bool = false
    
    var body: some View {
        
        NavigationStack{
            
            VStack(alignment: .leading){
                
                Text("Community")
                    .font(.system(size: 25, weight: .heavy, design: .default))
                    .fontWeight(.light)
//                  .lineLimit(3)
                    .padding()
                
                Image("community")
                    .resizable()
                    .frame( width: 400, height: 310)
                
                Text("Connect with fellow farmers from around the region.Share tips, insights, trends in sustainable farming.")
                    .multilineTextAlignment(.center)
                    .padding()
                
                CommunityButton()
                //SignUp()
                
            }.padding(.bottom,90)
            
//            TabBar()
            
        }
    }
}

struct CommunityPage_Previews: PreviewProvider {
    static var previews: some View {
        CommunityPage()
    }
}
