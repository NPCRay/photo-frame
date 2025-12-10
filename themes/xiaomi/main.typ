#import "@preview/polario-frame:1.0.0": render

#let theme1(model: str, date: str, exif: str, address: str, img: image, size: (105mm, 148mm), size-ratio: 1) = {
  let model = text(size: 12pt * size-ratio, model)
  let date = text(size: 6pt * size-ratio, fill: rgb("#8f7f7f"), date)
  let exif = text(size: 8pt * size-ratio, weight: 500, exif)
  let address = text(size: 6pt * size-ratio, fill: rgb("#8f7f7f"), address)
  let logo = image("Leica.svg", height: 15pt * size-ratio)
  let brand = image("Xiaomi.svg", height: 10pt * size-ratio)
  let line-v = line(stroke: 1pt * size-ratio + gray, length: 60%, angle: 90deg)
  let info = stack(spacing: 10%, exif, address)
  let brand-model = box(width: 90%, stack(
    dir: ltr,
    brand,
    model,
  ))
  let first = grid(
    align: left,
    stack(spacing: 10%, brand-model, date),
  )
  let second = grid(
    columns: (10fr, auto, 70fr),
    gutter: 5%,
    align: left,
    logo, line-v, info,
  )

  let ext-info = (
    "first": first,
    "second": second,
    "extend-half-ratio": 50%,
  )
  render((size.at(0) * size-ratio, size.at(1) * size-ratio), flipped: false, theme: "classic-bottom-two", img: img, ext-info: ext-info)
}