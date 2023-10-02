import Games from './components/games/games'
import MediaByLetterFilter from './components/media-by-letter-filter/media-by-letter-filter'

export default function HomePage() {
  return (
    <div>
      {/* TODO: Top medias */}
      <div className='flex flex-col gap-9'>
        {/* TODO: Filters (selects) */}
        <MediaByLetterFilter />
        <Games />
      </div>
    </div>
  )
}
