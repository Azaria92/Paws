import SwiftUI

struct DogView: View {
  let width: CGFloat
  let height: CGFloat
  let image: String
  var body: some View {
    Image(image)
      .resizable()
      .frame(width: width,height: height)
  }
}

struct DogView_Previews: PreviewProvider {
  static var previews: some View {
    DogView(width: 152, height: 200, image: "dog-1")
  }
}
