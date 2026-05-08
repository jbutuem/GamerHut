/** @type {import('tailwindcss').Config} */
// GAMER HUT · Tailwind preset · v1.0
// Drop-in pra qualquer projeto Tailwind. Importe via:
//   const ghPreset = require('./tailwind.config');
//   module.exports = { presets: [ghPreset], ... }

module.exports = {
  theme: {
    extend: {
      colors: {
        // Brand primárias
        'orange-sunset': '#F26641',
        'mario-red':     '#E1251B',
        'fast-skin':     '#FFC27A',
        'sonic-blue':    '#194F90',
        'black-mustache':'#000000',
        'cool-gray':     '#B1B1B1',

        // Suporte
        'jet':          '#0a0a0a',
        'charcoal':     '#1a1a1a',
        'cream':        '#F5F0E8',
        'orange-deep':  '#C94F2F',
        'orange-light': '#FF8866',

        // Semânticas (aliases)
        primary:    '#F26641',
        background: '#000000',
        surface:    '#0a0a0a',
        danger:     '#E1251B',
        success:    '#FFC27A',
        info:       '#194F90',
      },
      fontFamily: {
        'display': ['"Russo One"', 'Impact', 'sans-serif'],
        'body':    ['"Red Hat Display"', 'system-ui', 'sans-serif'],
        'arcade':  ['"Press Start 2P"', 'monospace'],
        'mono':    ['"JetBrains Mono"', 'monospace'],
      },
      fontSize: {
        // Display
        'display':  ['96px', { lineHeight: '96px', letterSpacing: '-0.01em' }],
        // Headings
        'h1':       ['72px', { lineHeight: '80px', letterSpacing: '-0.01em' }],
        'h2':       ['56px', { lineHeight: '64px', letterSpacing: '-0.01em' }],
        'h3':       ['40px', { lineHeight: '48px' }],
        'h4':       ['32px', { lineHeight: '40px' }],
        'h5':       ['24px', { lineHeight: '32px' }],
        // Body
        'body-lg':  ['18px', { lineHeight: '28px' }],
        'body':     ['16px', { lineHeight: '24px' }],
        'body-sm':  ['14px', { lineHeight: '20px' }],
        'caption':  ['12px', { lineHeight: '16px' }],
        // Arcade (Press Start 2P)
        'arcade':    ['10px', { lineHeight: '16px', letterSpacing: '0.22em' }],
        'arcade-sm': ['9px',  { lineHeight: '14px', letterSpacing: '0.22em' }],
        'arcade-xs': ['8px',  { lineHeight: '12px', letterSpacing: '0.18em' }],
      },
      spacing: {
        '0':   '0',
        '1':   '4px',
        '2':   '8px',
        '3':   '12px',
        '4':   '16px',
        '6':   '24px',
        '8':   '32px',
        '12':  '48px',
        '16':  '64px',
        '24':  '96px',
        '32':  '128px',
      },
      borderRadius: {
        'none':   '0',
        'sharp':  '0',
        'circle': '50%',
      },
      screens: {
        'mobile':  '521px',
        'tablet':  '1025px',
        'desktop': '1281px',
      },
      maxWidth: {
        'container': '1280px',
      },
      boxShadow: {
        'card':        '0 12px 32px rgba(0,0,0,.5)',
        'glow':        '0 0 24px rgba(242,102,65,.4)',
        'neon':        '0 0 32px rgba(242,102,65,.55), 0 0 64px rgba(242,102,65,.25)',
        'danger-glow': '0 0 24px rgba(225,37,27,.4)',
      },
      transitionTimingFunction: {
        'out':    'cubic-bezier(.16, 1, .3, 1)',
        'in-out': 'cubic-bezier(.45, .05, .25, 1)',
      },
      transitionDuration: {
        'fast':   '200ms',
        'normal': '400ms',
        'slow':   '600ms',
        'epic':   '1200ms',
      },
      backgroundImage: {
        'scanlines': 'repeating-linear-gradient(0deg, rgba(242,102,65,.18) 0px, rgba(242,102,65,.18) 1px, transparent 1px, transparent 4px)',
        'pixel-grid': 'linear-gradient(rgba(242,102,65,.2) 1px, transparent 1px), linear-gradient(90deg, rgba(242,102,65,.2) 1px, transparent 1px)',
      },
      backgroundSize: {
        'pixel': '16px 16px',
      },
    },
  },
  plugins: [],
};
