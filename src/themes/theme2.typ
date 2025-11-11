#import "base.typ": extend-right

#let rendering(size: (), img: image, ext-info: (:)) = {
  let logo = ext-info.at("logo", default: [])
  let title = ext-info.at("title", default: [])
  let date = ext-info.at("date", default: [])
  let address = ext-info.at("address", default: [])
  let background = ext-info.at("background", default: none)

  let extend = grid(
    rows: (10fr, 2fr, 60fr, 2fr, 20fr),
    inset: 2pt,
    gutter: 0pt,
    align: center + horizon,
    logo,
    line(stroke: 2pt + gray, length: size.at(0) * 0.08, angle: 0deg),
    title,
    line(stroke: 2pt + gray, length: size.at(0) * 0.08, angle: 0deg),
    [#address\ #date],
  )
  extend-right(size: size, img: img, right: extend, ratio: 10fr, background: background)
}
