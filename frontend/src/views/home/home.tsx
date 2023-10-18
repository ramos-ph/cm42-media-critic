import Games from './components/games/games'
import MediaByLetterFilter from './components/media-by-letter-filter/media-by-letter-filter'

export default function HomePage() {
  return (
    <div className="flex flex-col gap-9 px-4">
      {/* TODO: Top medias */}
      {/* TODO: Filters (selects) */}
      <MediaByLetterFilter />
      <Games />
    </div>
  )
}
