#import "../src/export.typ": render, crop

#set page(paper: "a3", flipped: false, margin: (x: 0cm, y: 0cm))

#set par(spacing: 0mm)

#set text(font: ("MiSans Latin", "LXGW WenKai Mono"))

#{
  // theme1
  let img = crop(bytes(read("simple.jpg", encoding: none)), start: (28%, 30%))
  let ext-info = (
    "title": text(size: 20pt)[瞭望远方],
    "address": text(size: 8pt)[丽江 \ 玉龙雪山],
    "date": text(size: 8pt)[2025-10-01],
    "logo": image("CGA.png"),
    "background": rgb("#ff0404"),
  )
  render("A6", flipped: false, theme: "theme1", img: img, ext-info: ext-info)

   //theme2
  let width = 102mm
  let height = 152mm
  let img = crop(bytes(read("simple.jpg", encoding: none)), start: (25%, 25%), resize: 75%)
  let ext-info = (
    "title": text(size: 20pt, font: "LXGW WenKai Mono")[瞭望远方],
    "address": text(size: 8pt)[丽江 \ 玉龙雪山],
    "date": text(size: 8pt)[2025 \ 10/01],
    "logo": image("CGA.png"),
    "background": rgb("#ddd4d5"),
  )
  render((width, height), flipped: true, theme: "theme2", img: img, ext-info: ext-info)

  //theme3
  let img = crop(bytes(read("simple.jpg", encoding: none)), start: (28%, 30%))
  let ext-info = (
    "logo": image("logo.svg"),
    "model": text(size: 12pt)[iPhone 17 Pro],
    "exif": text(size: 6pt, weight: 500)[46mm f/1.63 1/500s ISO3200 \ 2025.01.01],
    "background": rgb("#fefefeee"),
  )
  render("A6", flipped: true, theme: "theme3", img: img, ext-info: ext-info)
}
