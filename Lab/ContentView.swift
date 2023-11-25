import SwiftUI

struct ContentView: View {
    
    @State var selectedTab: AppTab

    var body: some View {
        ZStack(alignment: .bottom) {
            switch selectedTab {
            case .home:
                MainScreen()
                    .padding(.bottom, AppDimensions.xxxl)
            case .profile:
                Text("Profile")
                    .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            case .calendar:
                Text("Calendar")
                    .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            case .message:
                Text("Chat")
                    .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            }
            
            HStack(alignment: .center, spacing: AppDimensions.s) {
                TabItem(appTab: .home, isSelected: selectedTab == .home)
                    .onTapGesture {
                        withAnimation {
                            selectedTab = .home
                        }
                    }
                TabItem(appTab: .calendar, isSelected: selectedTab == .calendar)
                    .onTapGesture {
                        withAnimation {
                            selectedTab = .calendar
                        }
                    }
                TabItem(appTab: .message, isSelected: selectedTab == .message)
                    .onTapGesture {
                        withAnimation {
                            selectedTab = .message
                        }
                    }
                TabItem(appTab: .profile, isSelected: selectedTab == .profile)
                    .onTapGesture {
                        withAnimation {
                            selectedTab = .profile
                        }
                    }
            }
            .padding(.horizontal, AppDimensions.xl)
            .padding(.vertical, AppDimensions.m)
            .frame(
                minWidth: 0,
                maxWidth: .infinity,
                alignment: .center
            )
            .background(.white)
            .shadow(radius: 1)
        }
        .frame(maxHeight: .infinity, alignment: .bottomLeading)
    }
}

struct TabItem: View {
    
    let appTab: AppTab
    let isSelected: Bool
    
    var body: some View {
        if isSelected {
            HStack {
                Image(appTab.imageName)
                    .renderingMode(.template)
                    .frame(width: AppDimensions.xl, height: AppDimensions.xl, alignment: .center)
                    .foregroundColor(AppColors.butterflyBlue)
                Text(appTab.label)
                    .font(.custom("Poppins-Regular", size: AppDimensions.m))
                    .foregroundStyle(AppColors.butterflyBlue)
            }
            .padding(AppDimensions.s)
            .background(AppColors.darkBlue.opacity(0.1))
            .cornerRadius(AppDimensions.s)
        } else {
            Image(appTab.imageName)
                .renderingMode(.template)
                .frame(width: AppDimensions.xl, height: AppDimensions.xl, alignment: .center)
                .foregroundStyle(AppColors.gray)
                .padding(AppDimensions.s)
        }
    }
}

#Preview {
    ContentView(selectedTab: .home)
}
