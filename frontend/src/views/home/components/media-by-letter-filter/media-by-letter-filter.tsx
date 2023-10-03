'use client'

import { appFont } from '@/shared/fonts'
import { ALPHABET } from './constants'
import classNames from 'classnames'
import { useState } from 'react'

type Alphabet = (typeof ALPHABET)[number]

export default function MediaByLetterFilter() {
  const [selectedLetter, setSelectedLetter] = useState<Alphabet>()

  return (
    <div
      className={classNames(appFont.className, 'text-3xl flex justify-between')}
    >
      {ALPHABET.map((letter) => (
        <span
          key={letter}
          role="button"
          className={classNames(
            selectedLetter === letter ? 'text-primary' : '',
          )}
          onClick={() => setSelectedLetter(letter)}
        >
          {letter}
        </span>
      ))}
    </div>
  )
}
