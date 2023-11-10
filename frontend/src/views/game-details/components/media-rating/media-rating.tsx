import Rating from '@/shared/components/rating/rating';

type Props = { title: string; rating: number }

export default function MediaRating({ title, rating }: Props) {
  return (
    <div className="flex items-end justify-between">
      <h2 className="text-3xl">{title}</h2>
      <div className="flex">
        <Rating stars={rating} size={42} />
      </div>
    </div>
  )
}
