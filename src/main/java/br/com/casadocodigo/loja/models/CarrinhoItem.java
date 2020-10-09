package br.com.casadocodigo.loja.models;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Objects;

public class CarrinhoItem implements Serializable {
    private static final long serialVersionUID = 1L;

    private TipoPreco tipoPreco;
    private Produto produto;

    public CarrinhoItem(Produto produto, TipoPreco tipoPreco) {
        this.produto = produto;
        this.tipoPreco = tipoPreco;
    }

    public BigDecimal getPreco() {
        return produto.precoPara(tipoPreco);
    }

    public TipoPreco getTipoPreco() {
        return tipoPreco;
    }

    public void setTipoPreco(TipoPreco tipoPreco) {
        this.tipoPreco = tipoPreco;
    }

    public Produto getProduto() {
        return produto;
    }

    public void setProduto(Produto produto) {
        this.produto = produto;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        CarrinhoItem that = (CarrinhoItem) o;
        return tipoPreco == that.tipoPreco &&
                Objects.equals(produto, that.produto);
    }

    @Override
    public int hashCode() {
        return Objects.hash(tipoPreco, produto);
    }

    public BigDecimal getTotal(Integer quantidade) {
        return this.getPreco().multiply(new BigDecimal(quantidade));
    }
}
