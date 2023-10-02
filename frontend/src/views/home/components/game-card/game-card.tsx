import Image from 'next/image'
import MediaRating from '../media-rating/media-rating'

type Props = {
  rating: number
  year: number
  title: string
  thumbnail?: string
}

export default function GameCard(props: Props) {
  const { rating, year, title, thumbnail } = props

  return (
    <div className="flex flex-col gap-2">
      <div className="relative cursor-pointer">
        <div className='absolute media-card-gradient w-full h-full rounded-lg'></div>
        <span className="absolute top-0 right-0 m-2 py-1 px-2 bg-slate-800 rounded-lg font-semibold">
          {year}
        </span>
        <Image
          className="rounded-lg"
          src={thumbnail ?? '/placeholder.jpg'}
          alt="Placeholder"
          width={218}
          height={218}
          style={{
            height: '252px',
            width: '223px',
          }}
        />
        <MediaRating rating={rating} />
      </div>
      <h5 className="font-semibold text-lg">{title}</h5>
    </div>
  )
}
