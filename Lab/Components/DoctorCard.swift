import Foundation
import SwiftUI

struct DoctorCard: View {
    var body: some View {
        VStack(spacing: AppDimensions.m) {
            HStack(spacing: AppDimensions.s) {
                Image("DoctorImage")
                    .background(.white)
                    .clipShape(.circle)
                VStack(alignment: .leading, spacing: AppDimensions.xs) {
                    Text(LocalizedStringResource(stringLiteral: "Dr. Imran Syahir"))
                        .font(.custom("Poppins-Bold", size: AppDimensions.m))
                        .bold()
                        .foregroundStyle(.white)
                    Text(LocalizedStringResource(stringLiteral: "General Doctor"))
                        .font(.custom("Poppins-Regular", size: AppDimensions.s))
                        .foregroundStyle(AppColors.lightBlue)
                }
                Spacer()
                Image("ForwardArrowIcon")
            }
            Divider()
                .background(.white)
            HStack {
                Image("CalendarIcon")
                Text(LocalizedStringResource(stringLiteral: "DoctorDate"))
                    .font(.custom("Poppins-Regular", size: AppDimensions.s))
                    .foregroundStyle(.white)
                Spacer()
                Image("ClockIcon")
                Text(LocalizedStringResource(stringLiteral: "DoctorTime"))
                    .font(.custom("Poppins-Regular", size: AppDimensions.s))
                    .foregroundStyle(.white)
            }
        }
        .padding(AppDimensions.l)
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            alignment: .topLeading
        )
        .background(AppColors.blue)
        .cornerRadius(AppDimensions.s)
    }
}

#Preview {
    DoctorCard()
}
