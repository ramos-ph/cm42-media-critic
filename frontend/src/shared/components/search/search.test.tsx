
import { render, screen } from '@testing-library/react'
import Search from './search'

describe("Search", () => {
  it('renders component', () => {
    render(<Search />)

    expect(screen.getByPlaceholderText('Search media...')).to.exist
  })
})