
import SwiftUI

struct TabBar: View {
    
    var body: some View {
        
        NavigationStack{
            
            TabView{
                
                HomePage()
                    .tabItem {
                        Image(systemName: "house.fill")
                    }
                
                Notification()
                    .tabItem {
                        Image(systemName: "bell.fill")
                    }
                
                Text("")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image(systemName: "globe")
                    }
                
                Profile()
                    .tabItem {
                        Image(systemName: "person.2")
                    }
            }
            
            .accentColor(.white)
            .onAppear {
                let appearance = UITabBarAppearance()
                appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
                appearance.backgroundColor = UIColor(Color("background"))
                UITabBar.appearance().standardAppearance = appearance
                UITabBar.appearance().scrollEdgeAppearance = appearance
                
            }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
