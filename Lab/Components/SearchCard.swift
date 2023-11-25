import SwiftUI

struct SearchCard: View {
    @State private var searchQuery: String = ""
    
    var body: some View {
        HStack(spacing: AppDimensions.s) {
            Image("SearchIcon")
            TextField("SearchHint", text: $searchQuery)
        }
        .padding(AppDimensions.l)
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            alignment: .topLeading
        )
        .background(AppColors.lightGray)
        .cornerRadius(AppDimensions.s)
    }
}

#Preview {
    SearchCard()
}
