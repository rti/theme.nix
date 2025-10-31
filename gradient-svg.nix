{ pkgs }:
pkgs.writeText "gradient.svg"
  /* svg */ ''
  <svg xmlns="http://www.w3.org/2000/svg" width="3840" height="2160" viewBox="0 0 3840 2160">
    <defs>
      <linearGradient 
          id="bg-grad" 
          gradientUnits="userSpaceOnUse"
          color-interpolation="linearRGB">
          x1="0" y1="0" x2="3840" y2="0"
          gradientTransform="rotate(36 1920 1080)">
        <stop offset="0%" stop-color="#000000"/>
        <stop offset="100%" stop-color="#404244"/>
      </linearGradient>
    </defs>
    <rect x="0" y="0" width="3840" height="2160" fill="url(#bg-grad)"/>
  </svg>
''
