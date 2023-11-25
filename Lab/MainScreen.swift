import SwiftUI

struct MainScreen: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading) {
                HStack {
                    VStack(
                        alignment: .leading,
                        spacing: AppDimensions.xxs
                    ) {
                        Text(LocalizedStringResource(stringLiteral: "Hello"))
                            .font(.custom("Poppins-Regular", size: AppDimensions.m))
                            .foregroundStyle(.gray)
                        Text(LocalizedStringResource(stringLiteral: "Hi James"))
                            .font(.custom("Poppins-Bold", size: AppDimensions.l))
                    }
                    Spacer()
                    Image("LogoIcon")
                }
                DoctorCard()
                Spacer()
                    .frame(height: AppDimensions.l)
                SearchCard()
                Spacer()
                    .frame(height: AppDimensions.xl)
                ScrollView(.horizontal) {
                    ShortcutList()
                }
                Spacer()
                    .frame(height: AppDimensions.xxl)
                Text(LocalizedStringResource(stringLiteral: "Near Doctor"))
                    .font(.custom("Poppins-Bold", size: AppDimensions.m))
                    .bold()
                Spacer()
                    .frame(height: AppDimensions.m)
                NearDoctorsCards()
                
                
            }
            .padding()
        }
    }
}
#Preview {
    MainScreen()
}
