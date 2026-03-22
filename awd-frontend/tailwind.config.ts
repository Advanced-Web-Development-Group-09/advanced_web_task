import type { Config } from 'tailwindcss'

export default {
  content: [
    './src/**/*.{html,ts}',
  ],
  theme: {
    extend: {
      keyframes: {
        fadeIn: {
          '0%': { opacity: '0' },
          '100%': { opacity: '1' },
        },
        slideUp: {
          '0%': { transform: 'translateY(20px)', opacity: '0' },
          '100%': { transform: 'translateY(0)', opacity: '1' },
        }
      },
      animation: {
        fadeIn: 'fadeIn 0.3s ease-in-out',
        slideUp: 'slideUp 0.4s ease-out',
      }
    },
  },
  plugins: [],
} satisfies Config