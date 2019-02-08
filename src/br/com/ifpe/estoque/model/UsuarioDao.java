package br.com.ifpe.estoque.model;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

public class UsuarioDao {
	private static final String PERSISTENCE_UNIT = "estoque";

	public void salvar(Usuario usuario) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		manager.persist(usuario);
		manager.getTransaction().commit();
		manager.close();
		factory.close();
	}

	public List<Usuario> listar(Usuario usuario) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		Query query = null;
		String nome = usuario != null ? usuario.getNome() : "";
		String email = usuario != null ? usuario.getEmail() : "";
		if (!nome.equals("") && email.equals("")) {
			query = manager.createQuery("FROM Usuario WHERE nome LIKE :paramNome ORDER BY id");
			query.setParameter("paramNome", "%" + nome + "%");
		} else if (nome.equals("") && !email.equals("")) {
			query = manager
					.createQuery("FROM Usuario WHERE email LIKE :paramEmail ORDER BY id");
			query.setParameter("paramEmail", "%" + email + "%");
		} else if (!nome.equals("") && !email.equals("")) {
			query = manager.createQuery(
					"FROM Usuario WHERE nome LIKE :paramNome AND email LIKE :paramEmail ORDER BY id");
			query.setParameter("paramNome", "%" + nome + "%");
			query.setParameter("paramEmail", "%" + email + "%");
		} else {
			query = manager.createQuery("FROM Usuario ORDER BY Email");
		}
		List<Usuario> lista = query.getResultList();
		manager.close();
		factory.close();
		return lista;
	}
}
