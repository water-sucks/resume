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

#show link: set text(fill: red)

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
Aspiring, and (sometimes) achieving; a creator at heart that loves to code.
Seeking a full-time or contract position as a software engineer/developer.

= Projects/Contributions
#exp(
  link("https://github.com/water-sucks/nixos", "nixos-cli"),
  "Core Maintainer",
  "Go, Nix, Zig",
  "Aug 2023-present",
  [
    - Develop and maintain a command-line interface for deploying and managing NixOS
      systems with a focus on simplicity and ease of use.
    - Patch long-standing issues and add new features to older tools from the NixOS
      ecosystem, improving behavior and user experience for end users (NixOS administrators).
    - Complete a rewrite of the nixos-cli tool from a prototype in Zig to a more
      professional and production-ready Go implementation in a matter of weeks.
    - Write release notes and documentation for end users.
  ],
)

#exp(
  "NixOS",
  "Contributor/Package Maintainer",
  "Nix, shell",
  "Aug 2022-present",
  [
    - Maintain Nix packages and modules in #link("https://github.com/nixos/nixpkgs", "nixpkgs") and #link("https://github.com/nix-community/home-manager", "home-manager")
    - Review pull requests and collaborate with the open-source community
  ],
)

= Experience
#exp(
  link("https://andyl.com", "ANDYL"),
  "Software Engineer",
  "San Francisco, California",
  "Jun 2025-Aug 2025",
  [
    - Rethinking the core systems of the Internet to build a stable foundation for the
      Internet applications of the 2030s and beyond
  ],
)

#exp(
  link("https://byggr.ai", "Byggr.ai"),
  "Software Engineer",
  "Remote (San Francisco, California)",
  "Nov 2024-Jan 2025",
  [
    - Create and maintain a deterministic, AI-powered model that autonomously
      converts abstract business requirements into high-quality code
  ],
)

#exp(
  link("https://seedling.so", "Salt+Light"),
  "Software Engineer",
  "Remote (San Francisco, California)",
  "Aug 2023-Aug 2024",
  [
    - Build and maintain a full-stack mobile app using React Native (Expo) and Supabase
    - Design relational database schemas and migrate data from non-relational sources
    - Review and improve code contributions from other developers
  ],
)

#pagebreak()

#exp(
  "Zyggit Inc.",
  "Full-Stack Developer",
  "Remote (Fremont, California)",
  "Aug 2020-Aug 2022",
  [
    - Developed and maintained scalable backend services in Go,
      integrating with Flutter frontends for cross-platform mobile applications.
    - Implemented security best practices in Go-based backend systems, identifying and
      patching vulnerabilities before release.
    - Used Terraform to provision and manage infrastructure on Google Cloud Platform,
      ensuring reliability and scalability for production environments.
  ],
)

= Skills
*Languages* #h(2fr) Go, Zig, TypeScript, Dart, shell, SQL, Python, Java, C/C++ \
*Frameworks* #h(2fr) Flutter, React Native, Expo \
*Developer Tools* #h(2fr) Linux, Docker, Kubernetes, Nix, Vim/Neovim, GCP, AWS, Terraform

= Certifications
*PCAP - Certified Associate in Python Programming* #h(2fr) _Issued on:_ 11 Jan 2020 \
*Oracle Certified Associate, Java SE 8 Programmer* #h(2fr) _Issued on:_ 10 Apr 2021

= Education
#exp(
  "San Francisco State University",
  "B.S. Computer Science",
  "San Francisco, California",
  "Aug 2023-May 2025",
  [],
)

#exp(
  "Ohlone College",
  "A.S. Computer Science",
  "Fremont, California",
  "Jun 2021-May 2023",
  [],
)
