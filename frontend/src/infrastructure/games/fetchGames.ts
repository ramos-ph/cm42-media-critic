import { Game } from '@/domain/Game'
import httpClient from '../http-client/makeHttpClient'

export const fetchGames = async (): Promise<Array<Game>> => {
  const response = await httpClient.get<Array<Game>>('http://www.api/games')

  return response
}
