#import "base.typ": extend-bottom

#let rendering(size: (), img: image, ext-info: (:)) = {
  let logo = ext-info.at("logo", default: [])
  let title = ext-info.at("title", default: [])
  let date = ext-info.at("date", default: [])
  let address = ext-info.at("address", default: [])
  let background = ext-info.at("background", default: none)

  let extend = grid(
    columns: (20fr, 2fr, 60fr, 2fr, 20fr),
    inset: 2pt,
    gutter: 0pt,
    logo,
    align: center + horizon,
    line(stroke: 2pt + gray, length: size.at(1) * 0.08, angle: 90deg),
    title,
    line(stroke: 2pt + gray, length: size.at(1) * 0.08, angle: 90deg),
    [#address #date],
  )
  extend-bottom(size: size, img: img, bottom: extend, ratio: 10fr, background: background)
}
