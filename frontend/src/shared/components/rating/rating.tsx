import { StarIcon } from '@heroicons/react/24/solid'

type Props = {
  stars: number
  size?: number
}

export default function Rating({ stars, size }: Props) {
  const starSize = size ?? 24

  return (
    <div className='flex'>
      {Array.from({ length: stars }).map((_, index) => (
        <StarIcon
          key={index}
          className="mx-1"
          width={starSize}
          height={starSize}
        />
      ))}
    </div>
  )
}
