import { Inter, Josefin_Sans } from "next/font/google";

const appFont = Josefin_Sans({
  subsets: ["latin"],
  weight: "700",
  style: "normal",
});

const textFont = Inter({ subsets: ["latin"] });

export { appFont, textFont };
