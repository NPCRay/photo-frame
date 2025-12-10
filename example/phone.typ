#import "@preview/polario-frame:1.0.0": crop


#set page(paper: "a6", flipped: false, margin: (x: 0cm, y: 0cm))
#set par(spacing: 0mm)
#set text(font: ("MiSans Latin", "LXGW WenKai Mono"))

#{
  // Xiaomi Leica
  import "../themes/xiaomi/main.typ": theme1
  theme1(
    model: "17 Pro Max",
    date: "2025.10.01 10:00",
    exif: "46mm f/1.63 1/500s ISO3200",
    address: "31°19'7'' N    120°05'0'' E",
    img: crop(bytes(read("simple.jpg", encoding: none)), start: (28%, 30%)),
  )
}



#{
  set page(paper: "a7", flipped: false, margin: (x: 0cm, y: 0cm))
  // Oppo Hasselblad
  import "../themes/oppo/main.typ": theme1
  theme1(
    model: "OPPO Find X9",
    exif: "46mm f/1.63 1/500s ISO3200",
    img: crop(bytes(read("simple.jpg", encoding: none)), start: (28%, 30%)),
    size-ratio: 0.71,
  )
}



#{
  set page(paper: "a5", flipped: true, margin: (x: 0cm, y: 0cm))
  // Vivo Zeiss
  import "../themes/vivo/main.typ": theme1
  theme1(
    model: "vivo X300 Pro",
    exif: "46mm f/1.63 1/500s ISO3200",
    date: "2025.10.01 10:00",
    img: crop(bytes(read("simple.jpg", encoding: none)), start: (28%, 30%)),
    size-ratio: 1.42,
  )
}


#{
  set page(paper: "a4", flipped: false, margin: (x: 0cm, y: 0cm))
  //  Apple
  import "../themes/apple/main.typ": theme1
  theme1(
    model: "iPhone 17 Pro",
    exif: "46mm f/1.63 1/500s ISO3200",
    date: "2025.10.01 10:00",
    img: crop(bytes(read("simple.jpg", encoding: none)), start: (28%, 30%)),
    size-ratio: 2.01,
  )
}