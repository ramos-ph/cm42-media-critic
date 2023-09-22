
import { render, screen } from '@testing-library/react'
import Header from './header'

describe("Header", () => {
  it('renders component', () => {
    render(<Header />)

    expect(screen.getByAltText('CM42 Media Critic, white logo')).to.exist
    expect(screen.getByPlaceholderText('Search media...')).to.exist
  })
})