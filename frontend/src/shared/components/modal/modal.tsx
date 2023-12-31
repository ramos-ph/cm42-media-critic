'use client'

import { Dialog, Transition } from '@headlessui/react'
import classNames from 'classnames'
import { Fragment, useRef } from 'react'

export type Props = {
  title: string
  open: boolean
  children: React.ReactNode
  onSubmit: () => void
  onClose: () => void
}

export default function Modal({
  title,
  children,
  open,
  onSubmit,
  onClose,
}: Props) {
  const cancelButtonRef = useRef(null)
  const buttonClassName =
    'text-center font-semibold px-3 py-2 rounded-lg transition duration-200 w-full sm:w-auto inline-flex justify-center'

  return (
    <Transition.Root show={open} as={Fragment}>
      <Dialog
        as="div"
        className="relative z-10"
        initialFocus={cancelButtonRef}
        onClose={onClose}
      >
        <Transition.Child
          as={Fragment}
          enter="ease-out duration-300"
          enterFrom="opacity-0"
          enterTo="opacity-100"
          leave="ease-in duration-200"
          leaveFrom="opacity-100"
          leaveTo="opacity-0"
        >
          <div className="fixed inset-0 bg-gray-500 bg-opacity-75 transition-opacity" />
        </Transition.Child>

        <div className="fixed inset-0 z-10 w-screen overflow-y-auto">
          <div className="flex min-h-full items-end justify-center p-4 text-center sm:items-center sm:p-0">
            <Transition.Child
              as={Fragment}
              enter="ease-out duration-300"
              enterFrom="opacity-0 translate-y-4 sm:translate-y-0 sm:scale-95"
              enterTo="opacity-100 translate-y-0 sm:scale-100"
              leave="ease-in duration-200"
              leaveFrom="opacity-100 translate-y-0 sm:scale-100"
              leaveTo="opacity-0 translate-y-4 sm:translate-y-0 sm:scale-95"
            >
              <Dialog.Panel className="relative transform overflow-hidden rounded-lg bg-tertiary text-left shadow-xl transition-all sm:my-8 sm:w-full sm:max-w-lg">
                <div className="bg-tertiary px-4 pb-4 pt-5 sm:p-6 sm:pb-4">
                  <div className="sm:flex sm:items-start">
                    <div className="mt-3 text-center sm:ml-4 sm:mt-0 sm:text-left">
                      <Dialog.Title as="h1" className="font-semibold text-xl">
                        {title}
                      </Dialog.Title>
                      <div className="mt-2">{children}</div>
                    </div>
                  </div>
                </div>
                <div className="bg-tertiary px-4 py-3 sm:flex sm:flex-row-reverse sm:px-6 items-center gap-2">
                  <button
                    className={classNames(
                      buttonClassName,
                      'bg-primary hover:bg-secondary',
                    )}
                    onClick={onSubmit}
                  >
                    Confirm
                  </button>
                  <button
                    className={classNames(buttonClassName, 'hover:bg-zinc-800')}
                    onClick={onClose}
                    ref={cancelButtonRef}
                  >
                    Cancel
                  </button>
                </div>
              </Dialog.Panel>
            </Transition.Child>
          </div>
        </div>
      </Dialog>
    </Transition.Root>
  )
}
