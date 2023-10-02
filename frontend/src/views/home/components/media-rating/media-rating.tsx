import starIcon from '@/app/assets/star.svg'
import Image from 'next/image'

type Props = { rating: number }

export default function MediaRating({ rating }: Props) {
  return (
    <div className="absolute bottom-0 left-0 m-2 flex">
      {Array.from({ length: rating }).map((_, index) => (
        <Image
          key={index}
          priority
          src={starIcon}
          height={24}
          width={24}
          alt="Media rating"
        />
      ))}
    </div>
  )
}
