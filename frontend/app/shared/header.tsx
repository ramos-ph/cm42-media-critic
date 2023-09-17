import { Josefin_Sans } from 'next/font/google'
import Search from './search'

const josefinSans = Josefin_Sans({ subsets: ['latin'], weight: '700' })

export default function Header() {
  return (
    <header className='p-14 bg-primary flex justify-between'>
      <h1 className={`${josefinSans.className} text-5xl text-white`}>CM42 Media Critic</h1>
      <Search />
    </header>
  )
}