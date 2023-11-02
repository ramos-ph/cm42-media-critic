import Rating from '@/shared/components/rating/rating'

type Props = { rating: number }

export default function MediaRating({ rating }: Props) {
  return (
    <div className="absolute bottom-0 left-0 m-2 flex">
      <Rating stars={rating} />
    </div>
  )
}
