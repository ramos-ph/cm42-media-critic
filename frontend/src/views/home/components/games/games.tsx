'use client'

import GameCard from '../game-card/game-card'
import useFetchGames from './useFetchGames'

export default function Games() {
  const { data: games, isLoading, error } = useFetchGames()

  if (isLoading) return <div>Loading...</div>
  if (error) return <div>Error</div>

  return (
    <div className="grid grid-cols-4 gap-4">
      {games?.map((game) => (
        <GameCard
          key={game.id}
          rating={5}
          year={game.year}
          title={game.title}
        />
      ))}
    </div>
  )
}
