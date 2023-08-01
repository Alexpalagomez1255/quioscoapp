import Layout from "../layout/layout";
import useQuiosco from "../hooks/useQuiosco";
import Producto from "../components/producto";
import ResumenProducto from "../components/Resumenproducto";

export default function Resumen() {
  const { pedido } = useQuiosco();

  return (
    <Layout pagina="Resumen">
      <h1 className="text-4xl font-black">Resumen</h1>
      <p className="text-2xl my-10">Revisa tu pedido</p>
      {pedido.length === 0 ? (
        <p className="text-center text-2xl">No hay elementos en tu pedido</p>
      ) : (
        pedido.map((producto) => (
          <ResumenProducto key={producto.id} producto={producto} />
        ))
      )}
    </Layout>
  );
}
