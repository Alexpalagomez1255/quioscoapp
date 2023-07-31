import "../styles/globals.css";
import { QuisocoProvider } from "../context/QuioscoProvider";

function MyApp({ Component, pageProps }) {
  return (
    <QuisocoProvider>
      <Component {...pageProps} />
    </QuisocoProvider>
  );
}

export default MyApp;
