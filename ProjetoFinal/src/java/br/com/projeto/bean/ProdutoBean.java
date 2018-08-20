package br.com.projeto.bean;

/**
 *
 * @author Patrick
 */
public class ProdutoBean {
    
    private int Id;
    private int idCategoria;
    private String nome;
    private float preco;

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public float getPreco() {
        return preco;
    }

    public void setPreco(float preco) {
        this.preco = preco;
    }
    
}
