import { Game } from '@/domain/Game'
import httpClient from '../http-client/makeHttpClient'
import config from '@/config'

export const fetchGames = async (): Promise<Array<Game>> => {
  const response = await httpClient.get<Array<Game>>(`${config.apiUrl}/games`)

  return response
}
