# Calculadora de Interés Simple

Módulo de software diseñado para calcular el rendimiento financiero lineal de un capital inicial mediante una tasa de interés fija durante un periodo determinado.

---

## Fórmula Matemática

El interés simple no capitaliza los periodos anteriores y se calcula mediante la siguiente expresión:

$$I = P \cdot r \cdot t$$

Donde:
* $I$: Interés generado.
* $P$: Capital inicial (Principal).
* $r$: Tasa de interés anual (en formato decimal).
* $t$: Tiempo de la operación (en años).

### Monto Total Acumulado
$$A = P + I = P(1 + r \cdot t)$$

---

## Componentes del Sistema

1. **Módulo de Validación:** Asegura que las entradas numéricas sean positivas y convierte las unidades de tiempo si la tasa y el periodo no coinciden.
2. **Núcleo de Cálculo:** Aplica las fórmulas financieras utilizando tipos de datos de alta precisión numérica.
3. **Capa de Salida:** Retorna de forma estructurada el interés devengado y el balance final total.

---

## Proyección de Ejemplo

Evolución de un capital de $10,000 USD con una tasa del $5\%$ anual durante 3 años:

| Año | Capital Base | Interés Anual | Interés Acumulado | Monto Total |
| :---: | :---: | :---: | :---: | :---: |
| 1 | $10,000.00 | $500.00 | $500.00 | $10,500.00 |
| 2 | $10,000.00 | $500.00 | $1,000.00 | $11,000.00 |
| 3 | $10,000.00 | $500.00 | $1,500.00 | $11,500.00 |