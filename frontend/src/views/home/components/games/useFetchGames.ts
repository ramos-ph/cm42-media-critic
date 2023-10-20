import { fetchGames } from '@/infrastructure/games/fetchGames'
import { useQuery } from '@tanstack/react-query'

export default function useFetchGames() {
  const { isLoading, error, data, isFetching } = useQuery({
    queryKey: ['games'],
    queryFn: () => fetchGames(),
  })

  return {
    isLoading,
    error,
    games: data ?? [],
    hasGames: (data ?? []).length > 0,
    isFetching,
  }
}
