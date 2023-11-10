import Image from "next/image"

type Props = { title: string, url: string }

export default function MediaCover({ title, url }: Props) {
  return (
    <Image
      className="rounded-lg"
      src={url ?? '/placeholder.jpg'}
      alt={url ? title : 'Placeholder'}
      width={218}
      height={218}
      style={{ height: '442px', width: '380px' }}
    />
  )
}
