#import "@preview/polario-frame:1.0.0": crop, render

#set page(paper: "a6", flipped: false, margin: (x: 0cm, y: 0cm))
#set par(spacing: 0mm)
#set text(font: ("MiSans Latin", "LXGW WenKai Mono"))


// Xiaomi Leica
#let logo = image("logo/Leica.svg", height: 15pt)
#let brand = image("logo/Xiaomi.svg", height: 10pt)
#let model = text(size: 12pt)[17 Pro]
#let date = text(size: 6pt, fill: rgb("#8f7f7f"))[2025.10.01 10:00]
#let exif = text(size: 8pt, weight: 500)[46mm f/1.63 1/500s ISO3200]
#let address = text(size: 6pt, fill: rgb("#8f7f7f"))[31°19'7'' N ~~ 120°05'0'' E]

#{
  let img = crop(bytes(read("simple.jpg", encoding: none)), start: (28%, 30%))
  let line-v = line(stroke: 1pt + gray, length: 60%, angle: 90deg)
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
  render("A6", flipped: false, theme: "classic-bottom-two", img: img, ext-info: ext-info)
}

// Oppo Hasselblad
#let logo = image("logo/Hasselblad-H.svg", width: 20pt)
#let brand-model = text(size: 8pt)[OPPO Find X9]
#let exif = text(size: 6pt, fill: gray)[46mm f/1.63 1/500s ISO3200]
#set page(paper: "a6", flipped: false, margin: (x: 0cm, y: 0cm))
#{
  let img = crop(bytes(read("simple.jpg", encoding: none)), start: (28%, 30%))
  let second = stack(
    spacing: 10%,
    logo,
    brand-model,
    exif,
  )

  let ext-info = (
    "second": second,
    "extend-ratio": 15%,
    "extend-middle-ratio": 100%,
  )
  render("A6", flipped: false, theme: "polaroid-bottom-three", img: img, ext-info: ext-info)
}

// Vivo Zeiss
#let logo = image("logo/Zeiss.svg", width: 20pt)
#let model = text(size: 8pt)[vivo X300 Pro]
#let date = text(size: 6pt, fill: rgb("#8f7f7f"))[2025.10.01 10:00]
#let exif = text(size: 8pt, weight: 500)[46mm f/1.63 1/500s ISO3200]

#set page(paper: "a6", flipped: true, margin: (x: 0cm, y: 0cm))
#{
  let img = crop(bytes(read("simple.jpg", encoding: none)), start: (28%, 30%))
  let line-v = line(stroke: 0.5pt + black, length: 25%, angle: 90deg)
  let info = stack(spacing: 20%, exif, address)

  let first = grid(
    align: left,
    box(width: 90%, stack(dir: ltr, spacing: 2%, model, line-v, logo)),
  )
  let second = grid(
    align: right,
    box(width: 90%, stack(spacing: 10%, exif, date)),
  )

  let ext-info = (
    "first": first,
    "second": second,
    "extend-half-ratio": 50%,
  )
  render("A6", flipped: true, theme: "classic-bottom-two", img: img, ext-info: ext-info)
}
