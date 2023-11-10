import GameDetails from '@/views/game-details/game-details'

type Params = { params: { id: string } }

export default function Game({ params }: Params) {
  return <GameDetails id={params.id} />
}
