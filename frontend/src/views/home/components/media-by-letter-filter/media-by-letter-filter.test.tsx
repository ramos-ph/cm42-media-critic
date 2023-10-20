import { fireEvent, render, screen } from '@testing-library/react'
import MediaByLetterFilter from './media-by-letter-filter'
import { ALPHABET } from './constants'

vi.mock('@/shared/fonts', () => ({ appFont: { className: '' } }))

describe('MediaByLetterFilter', () => {
  it('renders component', () => {
    render(<MediaByLetterFilter />)

    ALPHABET.forEach((letter) => {
      expect(screen.getByText(letter)).to.exist
      expect(screen.getByText(letter).className).to.be.empty
    })
  })

  it('selects correct letter', () => {
    render(<MediaByLetterFilter />)

    fireEvent.click(screen.getByText(ALPHABET[0]))

    expect(screen.getByText(ALPHABET[0]).className).to.be.equal('text-primary')
  })
})
