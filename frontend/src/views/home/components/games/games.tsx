import GameCard from '../game-card/game-card'

const fakeGames = [
  {
    id: 1,
    rating: 5,
    year: 2021,
    title: 'The Witcher 3: Wild Hunt',
  },
  {
    id: 2,
    rating: 4,
    year: 2019,
    title: 'The Elder Scrolls V: Skyrim',
  },
  {
    id: 3,
    rating: 3,
    year: 2019,
    title: 'Fallout 4',
  },
  {
    id: 4,
    rating: 2,
    year: 2019,
    title: 'EA FC 24',
  },
  {
    id: 5,
    rating: 4,
    year: 2019,
    title: 'Grand Theft Auto V',
  },
  {
    id: 6,
    rating: 5,
    year: 2019,
    title: 'Mass Effect: Andromeda',
  }
]

export default function Games() {
  return (
    <div className="grid grid-cols-4 gap-4">
      {fakeGames.map((game) => (
        <GameCard
          key={game.id}
          rating={game.rating}
          year={game.year}
          title={game.title}
        />
      ))}
    </div>
  )
}
