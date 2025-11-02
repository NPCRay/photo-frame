#import "../src/export.typ": render, crop

#set page(paper: "a4", flipped: false, margin: (x: 0cm, y: 0cm))

#set par(spacing: 0mm)

#set text(font: ("LXGW WenKai", "LXGW WenKai Mono"))

#{
  let img = crop(bytes(read("simple.jpg", encoding: none)), start: (28%, 30%))

  let ext-info = (
    "title": text(size: 20pt)[瞭望远方],
    "address": text(size: 8pt)[丽江 \ 玉龙雪山],
    "date": text(size: 8pt)[2025-10-01],
    "logo": image("CGA.png"),
    "background": rgb("#bf021b"),
  )

  render("A6", flipped: false, theme: "theme1", img: img, ext-info: ext-info)


  let width = 102mm
  let height = 152mm
  let img = crop(bytes(read("simple.jpg", encoding: none)), start: (25%, 25%), resize: 75%)

  let ext-info = (
    "title": text(size: 20pt)[瞭望远方],
    "address": text(size: 8pt)[丽江 \ 玉龙雪山],
    "date": text(size: 8pt)[2025 \ 10/01],
    "logo": image("CGA.png"),
    "background": rgb("#bf021b"),
  )

  render((width, height), flipped: true, theme: "theme2", img: img, ext-info: ext-info)
}
