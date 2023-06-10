#let cv(author: "", contacts: (), body) = {
  set document(author: author, title: author)
  set text(font: "Linux Libertine", lang: "en")
  
  show heading: it => [
    #pad(bottom: -10pt, [#smallcaps(it.body)])
    #line(length: 100%, stroke: 1pt)
  ]

  // Author
  align(center)[
    #block(text(weight: 700, 1.75em, author))
  ]

  // Contact information.
  pad(
    top: 0.5em,
    bottom: 0.5em,
    x: 2em,
    align(center)[
      #grid(
        columns: 4,
        gutter: 1em,
        ..contacts
      )
    ],
  )

  // Main body.
  set par(justify: true)

  body
}

#let exp(place, title, location, time, details) = {
  pad(
    bottom: 10%,
    grid(
      columns: (auto, 1fr),
      align(left)[
        *#place* \
        #emph[#title]
      ],
      align(right)[
        #location \
        #time
      ]
    )
  )
  details
}

#show link: it => {
    text(red, it.body)
}

#show: cv.with(
    author: "VARUN NARRAVULA",
    contacts: ([
        #sym.diamond.filled +1 (510) 857-2505
        #sym.diamond.filled varun\@snare.dev
        #sym.diamond.filled #link("https://github.com/water-sucks", "GitHub")
        #sym.diamond.filled #link("https://www.linkedin.com/in/varun-narravula-a68725249", "LinkedIn")
        #sym.diamond.filled
    ],)
)

= Synopsis
Full-stack developer that loves to code. Seeking an internship or part-time position as a
full-stack developer or DevOps engineer. Equipped with a diverse skill set in various
platforms and technologies, and can learn new technology quickly and use it in the
appropriate contexts when required. 

= Experience
#exp(
    "NixOS",
    "Contributor/Package Maintainer",
    "Remote",
    "Aug 2022-present",
    [
        - Create and maintain Nix packages and modules in #link("https://github.com/nixos/nixpkgs", "nixpkgs") repository
        - Review existing pull requests by other contributors 
    ]
)

#exp(
    "Zyggit Inc.",
    "Full-Stack Developer",
    "Fremont, California",
    "Aug 2020-Aug 2022",
    [
        - Use Flutter to build cross-platform mobile apps for iOS and Android
        - Plann, design, create, and maintain back ends using Go (Golang)
        - Implement common architectural patterns (MVVM, MVC, MVCVM)
        - Find and patch security vulnerabilities before release
        - Create and manage effective code review strategies
        - Manage release processes and automate them using CI 
    ]
)

#exp(
    "Clonetab Inc.",
    "Software Development Intern",
    "Tracy, California",
    "Jul 2020-Jun 2021",
    [
        - Use Java to maintain a REST API built with Spring Boot
        - Make existing scripts portable to different platforms
        - Learn about effective version control practices
        - Gain experience with practical database management
    ]
)

= Skills
*Languages* #h(2fr) Dart/Flutter, Go (Golang), shell, Python, Java, C/C++  \
*Developer Tools*  #h(2fr) Linux, Git/GitHub, Vim/Neovim, Nix \

= Certifications
*PCAP - Certified Associate in Python Programming* #h(2fr) _Issued on:_ 11 Jan 2020 \
*Oracle Certified Associate, Java SE 8 Programmer* #h(2fr) _Issued on:_ 10 Apr 2021

= Education
#exp(
    "Ohlone College",
    "A.S. Computer Science (pending)",
    "Fremont, California",
    "Jun 2021-May 2023",
    [],
)
#exp(
    "San Francisco",
    "B.S. Computer Science (pending)",
    "Fremont, California",
    "Aug 2023-May 2025",
    [],
)