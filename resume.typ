#let cv(author: "", contacts: (), body) = {
  set document(author: author, title: author)
  set text(font: "Libertinus Serif", lang: "en")

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
      ],
    ),
  )
  details
}

#show link: it => {
  text(red, it.body)
}

#show: cv.with(
  author: "VARUN NARRAVULA",
  contacts: (
    [
      #sym.diamond.filled +1 (510) 857-2505
      #sym.diamond.filled varun\@snare.dev
      #sym.diamond.filled #link("https://github.com/water-sucks", "GitHub")
      #sym.diamond.filled #link("https://www.linkedin.com/in/watersucks", "LinkedIn")
      #sym.diamond.filled
    ],
  ),
)

= Synopsis
A creator at heart that loves to code. Seeking a part-time or contract position as a
full-stack developer/engineer or DevOps engineer. Equipped with a diverse skill set
in various platforms and technologies, and can learn new technology quickly and use
it in the appropriate contexts when required.

= Experience
#exp(
  "Byggr.ai",
  "Software Engineer",
  "Remote (San Francisco, California)",
  "Nov 2024-Jan 2025",
  [
    - Create and maintain a deterministic, AI-powered model that autonomously
      converts abstract business requirements into high-quality code
  ],
)

#exp(
  "Salt+Light",
  "Software Engineer",
  "Remote (San Francisco, California)",
  "Aug 2023-Aug 2024",
  [
    - Use React Native (Expo) and Supabase to develop a full-stack mobile app
    - Create database schemas and port non-relational data to a relational model
    - Review pull requests by other contributors
  ],
)

#exp(
  "NixOS",
  "Contributor/Package Maintainer",
  "Remote",
  "Aug 2022-present",
  [
    - Create and maintain Nix packages and modules in #link("https://github.com/nixos/nixpkgs", "nixpkgs") repository
    - Review existing pull requests by other contributors
  ],
)

#exp(
  "Zyggit Inc.",
  "Full-Stack Developer",
  "Remote (Fremont, California)",
  "Aug 2020-Aug 2022",
  [
    - Use Flutter and Go to build cross-platform mobile apps for iOS and Android
    - Find and patch security vulnerabilities before release
    - Manage release processes and automate them using CI
  ],
)

= Skills
*Languages* #h(2fr) Zig, Go, TypeScript, Dart, shell, SQL, Python, Java, C/C++ \
*Frameworks* #h(2fr) Flutter, React Native, Expo \
*Developer Tools* #h(2fr) Linux, Nix, Vim/Neovim, Supabase, Google Cloud Platform \

= Certifications
*PCAP - Certified Associate in Python Programming* #h(2fr) _Issued on:_ 11 Jan 2020 \
*Oracle Certified Associate, Java SE 8 Programmer* #h(2fr) _Issued on:_ 10 Apr 2021

= Education
#exp(
  "Ohlone College",
  "A.S. Computer Science",
  "Fremont, California",
  "Jun 2021-May 2023",
  [],
)
#exp(
  "San Francisco State University",
  "B.S. Computer Science (pending)",
  "San Francisco, California",
  "Aug 2023-May 2025",
  [],
)
