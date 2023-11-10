import Card from '@/shared/components/card/card'
import Rating from '@/shared/components/rating/rating'

export default function ReviewCard() {
  return (
    <Card className="px-6 py-5 flex flex-col gap-4">
      <div className="flex gap-2 justify-between">
        <h3 className="font-medium">Zezin movies</h3>
        <Rating stars={3} />
      </div>
      <p className="text-ellipsis overflow-hidden line-clamp-5 text-sm">
        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
        veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
        commodo consequat. Duis aute irure dolor...
      </p>
      <div className='flex justify-between text-xs'>
        <span>OCT 23, 2022</span>
        <a className="text-primary font-semibold" href='#'>Read more</a>
      </div>
    </Card>
  )
}
