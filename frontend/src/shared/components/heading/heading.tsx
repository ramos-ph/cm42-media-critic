import { appFont } from "../../fonts";
import { Children } from "../types";

export default function Heading({ children }: Children) {
  return <h1 className={`${appFont.className} text-3xl mb-7`}>{children}</h1>
}