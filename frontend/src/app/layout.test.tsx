import { render, screen } from '@testing-library/react'
import RootLayout from './layout'

vi.mock('@/shared/fonts', () => ({ textFont: { className: '' } }))

describe('RootLayout', () => {
  it('renders component', () => {
    render(
      <RootLayout>
        <div>Hello</div>
      </RootLayout>,
    )

    expect(screen.getByText('Hello')).to.exist
  })
})
