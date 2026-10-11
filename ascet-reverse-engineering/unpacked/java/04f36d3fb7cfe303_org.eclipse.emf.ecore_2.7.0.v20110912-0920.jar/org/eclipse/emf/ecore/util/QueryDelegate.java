/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.util;

import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.emf.ecore.EClassifier;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface QueryDelegate {
    public void prepare() throws InvocationTargetException;

    public Object execute(Object var1, Map<String, ?> var2) throws InvocationTargetException;

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static interface Factory {
        public QueryDelegate createQueryDelegate(EClassifier var1, Map<String, EClassifier> var2, String var3);

        public static interface Descriptor {
            public Factory getFactory();
        }

        /*
         * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        public static interface Registry
        extends Map<String, Object> {
            public static final Registry INSTANCE = new Impl();

            public Factory getFactory(String var1);

            /*
             * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
             */
            public static class Impl
            extends HashMap<String, Object>
            implements Registry {
                private static final long serialVersionUID = 1L;

                @Override
                public Object get(Object key) {
                    Object factory = super.get(key);
                    if (factory instanceof Descriptor) {
                        Descriptor factoryDescriptor = (Descriptor)factory;
                        factory = factoryDescriptor.getFactory();
                        this.put((String)key, factory);
                        return factory;
                    }
                    return factory;
                }

                @Override
                public Factory getFactory(String uri) {
                    return (Factory)this.get(uri);
                }
            }
        }
    }
}

