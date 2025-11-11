#import "@preview/polario-frame:1.0.0": crop, render

#set page(paper: "a6", flipped: false, margin: (x: 0cm, y: 0cm))

#set par(spacing: 0mm)

#set text(font: ("MiSans Latin", "LXGW WenKai Mono"))

#let logo = image("logo/apple.svg")
#let model = text(size: 10pt)[iPhone 17 Pro]
#let title = text(size: 22pt)[这是标题]
#let address = text(size: 8pt)[昆明\ 丽江]
#let exif = text(size: 5pt, weight: 500)[46mm f/1.63 1/500s ISO3200 \ 2025.01.01]


#{
  let img = crop(bytes(read("simple.jpg", encoding: none)), start: (28%, 30%))

  let ext-info = (
    "first": model,
    "second": exif,
    "background": rgb("#ffffffee"),
  )
  render("A6", flipped: false, theme: "classic-bottom-two", img: img, ext-info: ext-info)
}

#{
  let img = crop(bytes(read("simple.jpg", encoding: none)), start: (28%, 30%))
  let ext-info = (
    "first": model,
    "second": logo,
    "third": exif,
    "background": rgb("#d6daf3ee"),
  )
  render("A6", flipped: false, theme: "classic-bottom-three", img: img, ext-info: ext-info)
}

#set page(paper: "a6", flipped: true, margin: (x: 0cm, y: 0cm))
#{
  let img = crop(bytes(read("simple.jpg", encoding: none)), start: (28%, 30%))

  let ext-info = (
    "first": logo,
    "second": title,
    "extend-half-ratio": 20%,
    "background": rgb("#ffffffee"),
  )
  render("A6", flipped: true, theme: "classic-right-two", img: img, ext-info: ext-info)
}

#{
  let img = crop(bytes(read("simple.jpg", encoding: none)), start: (28%, 30%))
  let ext-info = (
    "first": logo,
    "second": title,
    "third": address,
    "extend-middle-ratio": 50%,
    "background": rgb("#d6daf3ee"),
  )
  render("A6", flipped: true, theme: "classic-right-three", img: img, ext-info: ext-info)
}