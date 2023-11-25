import SwiftUI

struct ShortcutList: View {
    var body: some View {
        VStack(spacing: AppDimensions.xs) {
            HStack(spacing: AppDimensions.s) {
                ShortcutItem(
                    imageName: "CovidIcon",
                    stringLiteral: "Covid 19"
                )
                ShortcutItem(
                    imageName: "DoctorIcon",
                    stringLiteral: "Doctor"
                )
                ShortcutItem(
                    imageName: "MedicineIcon",
                    stringLiteral: "Medicine"
                )
                ShortcutItem(
                    imageName: "HospitalIcon",
                    stringLiteral: "Hospital"
                )
            }
            .frame(
                minWidth: 0,
                maxWidth: .infinity,
                alignment: .center
            )
        }
    }
}

private struct ShortcutItem: View {
    
    let imageName: String
    let stringLiteral: String
    
    var body: some View {
        VStack(spacing: AppDimensions.xs) {
            Image(imageName)
                .padding(AppDimensions.xl)
                .background(AppColors.lightGray)
                .clipShape(.circle)
            Text(LocalizedStringResource(stringLiteral: stringLiteral))
                .font(.custom("Poppins-Regular", size: AppDimensions.m))
                .foregroundStyle(.gray)
        }
    }
}

#Preview {
    ShortcutList()
}
