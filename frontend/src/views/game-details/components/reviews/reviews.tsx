import ReviewCard from './review-card'

export default function Reviews({ title }: { title: string }) {
  return (
    <div>
      <div className='mb-7 flex justify-between items-end font-medium'>
        <h1 className='font-semibold text-2xl'>{title}</h1>
        <a href="#">View all</a>
      </div>
      <div className="flex gap-8">
        {Array.from({ length: 3 }).map((_, index) => (
          <ReviewCard key={index} />
        ))}
      </div>
    </div>
  )
}
