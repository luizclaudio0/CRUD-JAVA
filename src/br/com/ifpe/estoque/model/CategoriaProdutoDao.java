package br.com.ifpe.estoque.model;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import br.com.ifpe.util.Util;

public class CategoriaProdutoDao {
	private static final String PERSISTENCE_UNIT = "estoque";

	public void salvar(CategoriaProduto categoriaProduto) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		manager.persist(categoriaProduto);
		manager.getTransaction().commit();
		manager.close();
		factory.close();
	}

	public List<CategoriaProduto> listarCategoria(CategoriaProduto categoriaProduto) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		Query query = null;
		String codigo = categoriaProduto != null ? categoriaProduto.getCodigo() : "";
		String descricao = categoriaProduto != null ? categoriaProduto.getDescricao() : "";
		if (!codigo.equals("") && descricao.equals("")) {
		 query = manager.createQuery("FROM CategoriaProduto WHERE codigo LIKE :paramCodigo ORDER BY descricao");
		 query.setParameter("paramCodigo", "%" + codigo + "%");
		} else if (codigo.equals("") && !descricao.equals("")) {
		 query = manager.createQuery("FROM CategoriaProduto WHERE descricao LIKE :paramDescricao ORDER BY descricao");
		 query.setParameter("paramDescricao", "%" + descricao + "%");
		} else if (!codigo.equals("") && !descricao.equals("")) {
		 query = manager.createQuery(
		 "FROM CategoriaProduto WHERE codigo LIKE :paramCodigo AND descricao LIKE :paramDescricao ORDER BY descricao");
		 query.setParameter("paramCodigo", "%" + codigo + "%");
		 query.setParameter("paramDescricao", "%" + descricao + "%");
		} else {
		 query = manager.createQuery("FROM CategoriaProduto ORDER BY descricao");
		}
		List<CategoriaProduto> lista = query.getResultList();
		manager.close();
		factory.close();
		return lista;
		}

	public CategoriaProduto buscarPorId(int id) {
		CategoriaProduto obj = null;
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		obj = manager.find(CategoriaProduto.class, id);
		manager.close();
		factory.close();
		return obj;
	}

	public void alterarCategoria(CategoriaProduto categoriaProduto) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		manager.merge(categoriaProduto);
		manager.getTransaction().commit();
		manager.close();
		factory.close();
	}

}
