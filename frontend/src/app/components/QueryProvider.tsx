'use client'

import { Children } from '@/shared/components/types'
import { QueryClient, QueryClientProvider } from '@tanstack/react-query'

const queryClient = new QueryClient()

export default function QueryProvider({ children }: Children) {
  return (
    <QueryClientProvider client={queryClient}>{children}</QueryClientProvider>
  )
}
