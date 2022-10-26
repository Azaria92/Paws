import SwiftUI

struct LogoView: View {
  let size: CGFloat
  var body: some View {
    Image("logo")
      .resizable()
      .frame(width: size, height: size)
  }
}

struct LogoView_Previews: PreviewProvider {
  static var previews: some View {
    LogoView(size: 90)
  }
}
