'use client'

import { appFont } from '@/shared/fonts'
import { ALPHABET } from './constants'
import classNames from 'classnames'
import { useState } from 'react'

type Alphabet = (typeof ALPHABET)[number]

export default function MediaByLetterFilter() {
  const [selectedLetter, setSelectedLetter] = useState<Alphabet>()

  return (
    <div className={classNames(appFont.className, 'text-3xl flex gap-4')}>
      {ALPHABET.map((letter) => (
        <span
          key={letter}
          className={classNames(
            selectedLetter === letter ? 'text-primary' : '',
          )}
          role="button"
          onClick={() => setSelectedLetter(letter)}
        >
          {letter}
        </span>
      ))}
    </div>
  )
}
