import HttpClient from "./HttpClient";

function makeHttpClient(): HttpClient {
  return {
    async get<T>(url: string): Promise<T> {
      const response = await fetch(url);
      return await response.json();
    }
  }
}

const httpClient = makeHttpClient();

export default httpClient;

