import type { Metadata } from 'next'

import Header from '@/shared/components/header/header'
import { Children } from '@/shared/components/types'
import { textFont } from '@/shared/fonts'
import './globals.css'
import QueryProvider from './components/QueryProvider'

export const metadata: Metadata = {
  title: 'CM42 Media Critic',
  description: 'An platform for media (movies, books, games) critics',
}

export default function RootLayout({ children }: Children) {
  return (
    <html lang="en">
      <body className={textFont.className}>
        <Header />
        <main className="min-h-screen lg:w-[942px] m-auto mt-20">
          <QueryProvider>{children}</QueryProvider>
        </main>
      </body>
    </html>
  )
}
