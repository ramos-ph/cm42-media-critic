'use client'

import AlertMessage from '@/shared/components/alert-message/alert-message'
import LoadingSpinner from '@/shared/components/loading-spinner/loading-spinner'
import GameCard from '../game-card/game-card'
import useFetchGames from './useFetchGames'

export default function Games() {
  const { games, isLoading, hasGames, error } = useFetchGames()

  if (isLoading) return <LoadingSpinner />
  if (error) return <AlertMessage message="Error fetching games" type="error" />
  if (!hasGames) return <AlertMessage message="No games found" />

  return (
    <div className="grid grid-cols-1 md:grid-cols-3 lg:grid-cols-4 content-center w-fit gap-4 mx-auto">
      {games.map((game) => (
        <GameCard
          key={game.id}
          rating={5} // TODO: Get rating from API
          year={game.year}
          title={game.title}
        />
      ))}
    </div>
  )
}
