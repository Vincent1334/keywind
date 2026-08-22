import type { Config } from 'tailwindcss';
import defaultTheme from 'tailwindcss/defaultTheme';

// Palettes are exported 1:1 from ColorTokensKit (Color.proGrass / proGray / proRed)
// so the login pages use exactly the same tokens as the ShelterMap app.
export default {
  content: ['./theme/**/*.ftl'],
  experimental: {
    optimizeUniversalDefaults: true,
  },
  plugins: [require('@tailwindcss/forms')],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter', '"Helvetica Neue"', ...defaultTheme.fontFamily.sans],
        display: ['Nunito', 'Inter', ...defaultTheme.fontFamily.sans],
      },
      colors: {
        page: '#f6f6f3',
        // proGrass
        primary: {
          50: '#f4fbeb', 100: '#dff3ce', 150: '#d0ecc0', 200: '#c5e3aa', 250: '#bdd797',
          300: '#b3cb86', 350: '#a6c075', 400: '#98b468', 450: '#88a761', 500: '#7f9a54',
          550: '#738c4b', 600: '#668044', 650: '#5a733c', 700: '#506635', 750: '#46592e',
          800: '#3b4c27', 850: '#324021', 900: '#29351b', 950: '#202a15', 1000: '#171f0d',
        },
        // proGray
        secondary: {
          50: '#ffffff', 100: '#f4f5f5', 150: '#e9e9e9', 200: '#dddddd', 250: '#cfcfcf',
          300: '#c0c0c0', 350: '#b1b1b1', 400: '#a1a1a1', 450: '#909191', 500: '#818182',
          550: '#717272', 600: '#626262', 650: '#535353', 700: '#454545', 750: '#383838',
          800: '#2c2c2c', 850: '#212121', 900: '#171718', 950: '#0d0d0d', 1000: '#000001',
        },
        // proRed
        red: {
          50: '#fdf4f5', 100: '#ffe2e6', 150: '#ffd0d7', 200: '#ffbeca', 250: '#ffadbc',
          300: '#fb9daf', 350: '#f38ea2', 400: '#e98096', 450: '#dd7289', 500: '#d0667e',
          550: '#c15a72', 600: '#b24f66', 650: '#a1455b', 700: '#903d51', 750: '#7f3546',
          800: '#6c2d3c', 850: '#5a2632', 900: '#482028', 950: '#361a20', 1000: '#241317',
        },
        provider: {
          apple: '#000000', bitbucket: '#0052CC', discord: '#5865F2', facebook: '#1877F2',
          github: '#181717', gitlab: '#FC6D26', google: '#4285F4', instagram: '#E4405F',
          linkedin: '#0A66C2', microsoft: '#5E5E5E', oidc: '#F78C40', openshift: '#EE0000',
          paypal: '#00457C', slack: '#4A154B', stackoverflow: '#F58025', twitter: '#1DA1F2',
        },
      },
    },
  },
} satisfies Config;
