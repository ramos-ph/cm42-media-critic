type Props = { title: string; synopsis: string }

export default function MediaInfo({ title, synopsis }: Props) {
  return (
    <>
      <h1 className="text-4xl font-semibold mb-2">{title}</h1>
      <p className="text-ellipsis overflow-hidden line-clamp-3">{synopsis}</p>
      <a href="#">
        <p className="font-semibold text-primary">See more</p>
      </a>
    </>
  )
}
