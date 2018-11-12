package database;

import dto.Student;
import org.hibernate.HibernateException;
import org.hibernate.Metamodel;
import org.hibernate.boot.MetadataSources;
import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import javax.imageio.spi.ServiceRegistry;
import javax.persistence.metamodel.EntityType;

import java.io.File;
import java.util.Map;

/**
 * Created by Ryan Alexander on 12/11/2018 - auto generated from instructions:
 * https://www.jetbrains.com/help/idea/enabling-hibernate-support.html#existing
 */
public class DatabaseConfiguration {
    private static final SessionFactory ourSessionFactory;

    static {
        try {
            // hacked: showing where the Hibernate configuration is
            File file = new File("/Users/Alex/IdeaProjects/studentservletapp/src/main/java/hibernate.cfg.xml");
            Configuration configuration = new Configuration();
            // 'file' added
            configuration.configure(file);

            ourSessionFactory = configuration.buildSessionFactory();
        } catch (Throwable ex) {
            throw new ExceptionInInitializerError(ex);
        }
    }

    public static Session getSession() throws HibernateException {
        return ourSessionFactory.openSession();
    }


//    // This generated code is not needed. We only need the session creation in the above code.
//    public static void main(final String[] args) throws Exception {
//        final Session session = getSession();
//
//
//        session.save(new Student());
//
//        try {
//            System.out.println("querying all the managed entities...");
//            final Metamodel metamodel = session.getSessionFactory().getMetamodel();
//            for (EntityType<?> entityType : metamodel.getEntities()) {
//                final String entityName = entityType.getName();
//                final Query query = session.createQuery("from " + entityName);
//                System.out.println("executing: " + query.getQueryString());
//                for (Object o : query.list()) {
//                    System.out.println("  " + o);
//                }
//            }
//        } finally {
//            session.close();
//        }
//    }
}