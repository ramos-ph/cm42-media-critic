import AddMyReview from './components/add-my-review/add-my-review'
import MediaCover from './components/media-cover/media-cover'
import MediaInfo from './components/media-info/media-info'
import MediaRating from './components/media-rating/media-rating'
import Reviews from './components/reviews/reviews'

type Props = { id: string }

export default function GameDetails({ id }: Props) {
  // TODO: Fetch game details
  return (
    <div className='flex flex-col gap-16 mb-6'>
      <div className="flex gap-9">
        <MediaCover title="The Witcher 3: Wild Hunt" url="/placeholder.jpg" />
        <div className="flex flex-col">
          <MediaInfo
            title="The Witcher 3: Wild Hunt"
            synopsis="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
                      tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                      veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
                      commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
                      velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
                      occaecat cupidatat non proident, sunt in culpa qui officia deserunt
                      mollit anim id est laborum."
          />
          <div className="flex flex-col mt-10 mb-auto gap-4">
            <MediaRating title="Mediascore" rating={5} />
            <MediaRating title="User score" rating={5} />
            <MediaRating title="My score" rating={5} />
          </div>
          <AddMyReview />
        </div>
      </div>
      <div className='flex flex-col gap-12'>
        <Reviews title='Latest critic reviews' />
        <Reviews title='Latest user reviews' />
      </div>
    </div>
  )
}
