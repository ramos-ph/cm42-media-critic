'use client'

import Modal from '@/shared/components/modal/modal'
import { useState } from 'react'

export default function AddMyReview() {
  const [open, setOpen] = useState(false)

  return (
    <>
      <button
        className="bg-primary text-center font-semibold py-2 rounded-lg transition duration-200 hover:bg-secondary"
        onClick={() => setOpen(true)}
      >
        Add my review
      </button>
      <Modal
        open={open}
        title="Add my review"
        onClose={() => setOpen(false)}
        onSubmit={() => setOpen(false)}
      >
        <p className="text-sm">
          Will be available soon.
        </p>
      </Modal>
    </>
  )
}
