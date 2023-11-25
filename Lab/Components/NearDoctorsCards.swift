import SwiftUI

struct NearDoctorsCards: View {
    var body: some View {
        VStack(spacing: AppDimensions.s) {
            NearDoctorCard(
                doctorPhoto: "Doctor1",
                doctorName: "FirstName",
                doctorSpecialization: "FirstSpecialization",
                distance: "FirstDistance",
                review: "FirstRate",
                workingTime: "FirstTime"
            )
            NearDoctorCard(
                doctorPhoto: "DoctorImage",
                doctorName: "Dr. Imran Syahir",
                doctorSpecialization: "General Doctor",
                distance: "FirstDistance",
                review: "FirstRate",
                workingTime: "SecondTime"
            )
        }
    }
}

private struct NearDoctorCard: View {
    
    let doctorPhoto: String
    let doctorName: String
    let doctorSpecialization: String
    let distance: String
    let review: String
    let workingTime: String
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: AppDimensions.l) {
                HStack(spacing: AppDimensions.m) {
                    Image(doctorPhoto)
                        .background(.white)
                        .clipShape(.circle)
                    VStack(alignment: .leading, spacing: AppDimensions.xs) {
                        Text(LocalizedStringResource(stringLiteral: doctorName))
                            .font(.custom("Poppins-Bold", size: AppDimensions.m))
                            .bold()
                            .foregroundStyle(.black)
                        Text(LocalizedStringResource(stringLiteral: doctorSpecialization))
                            .font(.custom("Poppins-Regular", size: AppDimensions.s))
                            .foregroundStyle(AppColors.lightBlue)
                    }
                    Spacer()
                    HStack() {
                        Image("LocationIcon")
                        Text(LocalizedStringResource(stringLiteral: distance))
                            .font(.custom("Poppins-Regular", size: AppDimensions.s))
                            .foregroundStyle(.gray)
                    }
                }
                Divider()
                    .background(AppColors.lightGray)
                HStack {
                    Image("YellowClockIcon")
                    Spacer()
                        .frame(width: AppDimensions.xxs)
                    Text(LocalizedStringResource(stringLiteral: review))
                        .font(.custom("Poppins-Regular", size: AppDimensions.s))
                        .foregroundStyle(AppColors.yellow)
                    Spacer()
                        .frame(width: AppDimensions.xl)
                    Image("BlueClockIcon")
                    Spacer()
                        .frame(width: AppDimensions.xxs)
                    Text(LocalizedStringResource(stringLiteral: workingTime))
                        .font(.custom("Poppins-Regular", size: AppDimensions.s))
                        .foregroundStyle(.blue)
                }
                .padding(.horizontal, AppDimensions.xxs)
            }
            .padding(.horizontal, AppDimensions.xl)
            .padding(.vertical, AppDimensions.l)
        }
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            alignment: .topLeading
        )
        .background(.white)
        .cornerRadius(AppDimensions.xl)
        .shadow(color: .gray.opacity(0.1), radius: 5)
    }
}

#Preview {
    NearDoctorsCards()
}
