import './globals.css'
import type { Metadata } from 'next'
import { Inter } from 'next/font/google'
import { Children } from '../shared/components/types'
import Header from '../shared/components/header'

const inter = Inter({ subsets: ['latin'] })

export const metadata: Metadata = {
  title: 'CM42 Media Critic',
  description: 'An platform for media (movies, books, games) critics',
}

export default function RootLayout({ children }: Children) {
  return (
    <html lang="en">
      <body className={inter.className}>
        <Header />
        <main>{children}</main>
      </body>
    </html>
  )
}
