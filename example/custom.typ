#import "@preview/polario-frame:1.0.0": crop, render

#set par(spacing: 0mm)
#set text(font: ("MiSans Latin", "LXGW WenKai Mono"))

#let width = 102mm
#let height = 152mm
#set page(width: width, height: height, flipped: false, margin: (x: 0cm, y: 0cm))



#let image-bytes = bytes(read("simple.jpg", encoding: none))
#let title = text(size: 25pt)[这是标题]
#let address = text(size: 8pt)[丽江 \ 玉龙雪山]
#let date = text(size: 8pt)[2025.10.01]
#let logo = image("CGA.png")

#{
  let img = crop(image-bytes, start: (28%, 30%))
  let line-v = line(stroke: 2pt + gray, length: height * 0.08, angle: 90deg)
  let second = grid(
    columns: (auto, 100%, auto),
    line-v, title, line-v,
  )
  let ext-info = (
    "first": logo,
    "second": second,
    "third": [#address #date],
    "extend-middle-ratio": 65%,
    "background": rgb("#ffffffee"),
  )
  render((width, height), flipped: false, theme: "classic-bottom-three", img: img, ext-info: ext-info)
}

#set page(width: width, height: height, flipped: true, margin: (x: 0cm, y: 0cm))
#{
  let img = crop(image-bytes, start: (25%, 25%), resize: 75%)
  let line-v = line(stroke: 2pt + gray, length: height * 0.08)
  let second = grid(
    rows: (auto, 100%, auto),
    line-v, title, line-v,
  )
  let ext-info = (
    "first": logo,
    "second": second,
    "third": [#address #date],
    "extend-middle-ratio": 65%,
    "background": rgb("#ffffffee"),
  )
  render((width, height), flipped: true, theme: "classic-right-three", img: img, ext-info: ext-info)
}
