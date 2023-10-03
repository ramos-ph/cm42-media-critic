import { render, screen } from '@testing-library/react'

import GameCard from './game-card'

describe('GameCard', () => {
  it('renders component', () => {
    render(
      <GameCard
        rating={5}
        year={2021}
        title="The Witcher 3: Wild Hunt"
        thumbnail={'/placeholder.jpg'}
      />,
    )

    expect(screen.getByText('The Witcher 3: Wild Hunt')).to.exist
    expect(screen.getByAltText('The Witcher 3: Wild Hunt')).to.exist
    expect(screen.getAllByAltText('Media rating star').length).to.be.equal(5)
    expect(screen.getByText('2021')).to.exist
  })

  describe('when there is no thumbnail', () => {
    it('renders placeholder image', () => {
      render(
        <GameCard rating={5} year={2021} title="The Witcher 3: Wild Hunt" />,
      )
      expect(screen.getByAltText('Placeholder')).to.exist
    })
  })
})
