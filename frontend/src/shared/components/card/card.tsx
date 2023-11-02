import classNames from "classnames";
import { Children } from "../types";

type Props = Children & { className?: string }

export default function Card({ children, className }: Props) {

  return (
    <div className={classNames("rounded-lg bg-tertiary p-8", className)}>
      {children}
    </div>
  )
}