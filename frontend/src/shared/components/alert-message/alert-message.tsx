import classNames from 'classnames'

type Props = {
  type?: 'success' | 'error' | 'warning' | 'info'
  message: string
}

export default function AlertMessage({ message, type = 'info' }: Props) {
  const border = {
    success: 'border-green-500',
    error: 'border-red-500',
    warning: 'border-yellow-500',
    info: 'border-white',
  }

  return (
    <div
      className={classNames(
        'text-center bg-gradient-to-r from-black to-zinc-900 rounded-md p-10 border-[1px]',
        border[type],
      )}
    >
      <span className="text-xl font-medium">{message}</span>
    </div>
  )
}
