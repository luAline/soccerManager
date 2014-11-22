package br.edu.luciana.soccerManager.postgres;

import org.hibernate.dialect.Dialect;
import org.hibernate.dialect.PostgreSQLDialect;
import org.hibernate.id.PersistentIdentifierGenerator;
import org.hibernate.id.SequenceGenerator;
import org.hibernate.type.Type;

/**
 * Created with IntelliJ IDEA.
 * User: Luciana
 * Date: 03/10/14
 * Time: 09:28
 * To change this template use File | Settings | File Templates.
 */
class TableNameSequencePostgresDialect extends PostgreSQLDialect{

    /**
     * Get the native identifier generator class.
     *
     * @return TableNameSequenceGenerator.
     */
    @Override
    public Class<?> getNativeIdentifierGeneratorClass() {
        return TableNameSequenceGenerator.class;
    }

    /**
     * Creates a sequence per table instead of the default behavior of one
     * sequence.
     */
    public static class TableNameSequenceGenerator extends SequenceGenerator {


        @Override
        public void configure(
                final Type type,
                final Properties params,
                final Dialect dialect) {
            if (params.getProperty(SEQUENCE) == null
                    || params.getProperty(SEQUENCE).length() == 0) {
                String tableName = params.getProperty(PersistentIdentifierGenerator.TABLE);
                if (tableName != null) {
                    params.setProperty(SEQUENCE, "seq_" + tableName);
                }
            }
            super.configure(type, params, dialect);
        }
    }

}