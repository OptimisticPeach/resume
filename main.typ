#import "template.typ": *

#show: resume.with(
  "Patrik Buhring",
  ("https://www.github.com/OptimisticPeach", "OptimisticPeach"),
  ("mailto:patrikbuhring@gmail.com", "patrikbuhring@gmail.com"),
  ("tel:+1647-460-7000", "+1 (647)-460-7000"),
  // ("tel:+1000-000-0000", "+1 (000)-000-0000"),
)

= Education
#project(
  name: [*University of Waterloo*],
  date: [Sept. 2022 - Aug. 2027],
  bulleted(
    [
      Double Majoring in *Computer Science* and *Pure Mathematics*. 
    ],
    [
      Candidate for a *Bachelors in Mathematics*. (GPA: 3.75)
    ],
    // [
    //   Advanced Computer Science 1 (*93%*): Functional programming and lambda calculus in Racket.
    // ],
    [
      Advanced Computer Science 2 (*98%*): Parsing, Interpreting, and Compiling languages.
    ],
    // [
    //   Advanced Linear Algebra (*95%*): Vector Spaces and linear transformations.
    // ],
    [
      Programming for Performance (*98%*): Concurrent and efficient computation on modern hardware.
    ]
  )
)

= Skills
#skillset("Languages", [
  Rust, C\#, Java, C, Bash, Dart, Python, Racket, HLSL, GLSL, LaTeX
])

#skillset("Frameworks & Libraries", [
  WebGPU, DirectX 11, Android, .NET, Linux, CUDA
])

// #skillset("Developer Tools", [
//   Visual Studio, Visual Studio Code, IntelliJ Platform, RenderDoc, Git
// ])

// #skillset("Spoken Languages", [
//   English, Spanish, French
// ])
 
= Projects
#project(
  name: [*Hypersphere: An Exploration of 3D and 4D Spherical Geometry*],
  url: "https://optimisticpeach.github.io",
  date: "Dec. 2022 - Present",
  technologies: (
    [Rust], [WGSL], [WebGPU], [WASM], [JavaScript], [HTML], [CSS]
  ),
  bulleted(
    [
      Develops math and libraries as needed to support development and serve as a tech demonstration.
    ],
    [
      Publishes updates to #link("https://optimisticpeach.github.io", [a live WASM demonstration]) in a custom-written HTML website.
    ],
    [
      Integrates a custom flat shading water shader for enhanced visual appeal.
    ],
    [
      Developed an open source #link("https://crates.io/crates/hypersphere", [*4D* math utilities]) library and #link("https://student.cs.uwaterloo.ca/~pbuhring", [separate tech demo]). 
    ]
  )
)

#project(
  name: [*Hydraulic Erosion Simulation on Spherical Terrain*], 
  url: "https://github.com/OptimisticPeach/sphere_terrain",
  date: "May 2023 - Present", 
  technologies: (
    [Rust],
  ),
  bulleted(
    [
      Adapts an existing #link("https://www.firespark.de/resources/downloads/implementation%20of%20a%20methode%20for%20hydraulic%20erosion.pdf", [*hydraulic erosion simulation*]) for spherical terrain: #link("https://youtu.be/UWOiRG7m_ws", [*demo video*]).
    ],
    [
      Presented a talk demonstrating the project at the Summer 2023 SASMS at UWaterloo.
    ],
    [
      Leverages a *SIMD* implementation of simplex noise and multithreading to efficiently use resources.
    ],
  )
)

#project(
  name: [*Hexasphere: Open Source Sphere Generation*],
  url: "https://github.com/OptimisticPeach/hexasphere",
  date: "Aug. 2020 - Present",
  technologies: (
    [Rust],
  ),
  bulleted(
    [
      Implements an efficient sphere subdivision algorithm with the aim of reducing distortion.
    ],
    [
      More than #link("https://crates.io/crates/hexasphere", [*1.2 Million* downloads]).
    ],
    [
      Maintains and updates the project, ensuring quality and well-documented code.
    ],
    // [
    //   Leverages a portable *SIMD* vector library to process vertices. 
    // ],
    [
      Optimized to produce cache-friendly meshes for efficiency when rendering very detailed spheres.
    ]
  )
)

#project(
  // name: [*JamHacks Hackathon 1#super("st") Place Overall*],
  name: [*JamHacks Hackathon 1ˢᵗ Place Overall*],
  url: "https://devpost.com/software/galactigolf",
  date: "Jun. 2022",
  technologies: (
    [Rust], [WebGL], [WASM]
  ),
  bulleted(
    [
      Designed, tested, implemented, and deployed a *WASM* compatible 
      *3D* Golfing Game.
    ],
    [
      Rapidly prototyped in *Rust* with a hand written implementation of physics over two days.
    ],
    [
      First attendance of team GalactiGolf to a *Hackathon* with excellent teamwork and communication.
    ]
  )
)

// #project(
//   name: [*Computer Science Club*],
//   date: "Sep. 2020 - Jan. 2022",
//   bulleted( 
//     [
//       Founded the club and delivered informative presentations on various topics in Computer Science.
//     ],
//     [
//       Conducted biweekly preparation sessions for the *Canadian Computing Competition*.
//     ]
//   )
// )

#project(
  name: [*Animated Low Poly Water Graphics Example*],
  url: "https://github.com/gfx-rs/wgpu/tree/master/wgpu/examples/water",
  date: "Jun. 2020",
  technologies: (
    [Rust], [GLSL], [WebGPU], [WebGL]
  ),
  bulleted(
    [
      Contributed to the *open source* library WGPU for multiple backends (*Vulkan*, *DirectX 12*, etc.).
    ],
    [
      Demonstrates nontrivial *computer graphics* techniques such as read-only depth-stencil.
    ],
    [
      Clean, performant, modular code with *well written documentation* meant as a tutorial.
    ],
  )
)
