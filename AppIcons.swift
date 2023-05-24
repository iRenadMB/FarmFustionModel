
import SwiftUI

struct AppIcons: View {
    
    var body: some View {
        
        HStack(alignment: .center, spacing: 10.0){
            Image("google")
                .resizable()
                .clipShape(Circle())
                .frame(width: 40, height: 40)
            
            Image("twitter")
                .resizable()
                .clipShape(Circle())
                .frame(width: 45, height: 45)
                .padding(.horizontal, 10)
            
            Image("facebook")
                .resizable()
                .clipShape(Circle())
                .frame(width: 50, height: 50)
            
        }
    }
}

struct AppIcons_Previews: PreviewProvider {
    static var previews: some View {
        AppIcons()
    }
}
