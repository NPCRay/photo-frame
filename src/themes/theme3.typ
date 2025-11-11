#import "base.typ": extend-bottom

#let rendering(size: (), img: image, ext-info: (:)) = {
  let device-model = ext-info.at("model", default: none)
  let logo = ext-info.at("logo", default: none)
  let exif = ext-info.at("exif", default: none)
  let background = ext-info.at("background", default: none)

  let bottom = grid(
    columns: (35fr, 30fr, 35fr),
    inset: 2pt,
    gutter: 0pt,
    align: center + horizon,
    device-model, logo, exif,
  )
  extend-bottom(size: size, img: img, bottom: bottom, ratio: 10fr, background: background)
}
