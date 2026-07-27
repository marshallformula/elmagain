import { defineConfig } from "vite";
import elmPlugin from "vite-plugin-elm-watch";
import tailwindcss from "@tailwindcss/vite";

export default defineConfig({
  plugins: [tailwindcss(), elmPlugin()],
});
