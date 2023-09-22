import Image from 'next/image'
import Search from '../search/search'

export default function Header() {
  return (
    <header className='p-8 bg-primary flex justify-between items-center relative bg-cm42'>
      <Image className='ml-20' src='/codeminer-main-logo.svg' alt='CM42 Media Critic, white logo' width={376} height={80} />
      <Search />
    </header>
  )
}