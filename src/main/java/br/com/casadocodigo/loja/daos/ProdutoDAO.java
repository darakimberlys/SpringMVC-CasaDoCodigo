package br.com.casadocodigo.loja.daos;

import br.com.casadocodigo.loja.models.Produto;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class ProdutoDAO {

    @PersistenceContext
    private EntityManager manager;

    public void gravar(Produto produto) {
        manager.persist(produto);
    }

    public List<Produto> listar() {
        return manager.createQuery("select p from Produto p", Produto.class).getResultList();
    }

    public Produto find(Integer id) { return manager.createQuery("select distinct(p) from Produto p join fetch p.precos where p.id = :id", Produto.class)
                .setParameter("id", id)
                .getSingleResult();
    }
}
