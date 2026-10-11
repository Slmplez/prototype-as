/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package org.eclipse.emf.ecore;

import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EGenericType;
import org.eclipse.emf.ecore.EParameter;
import org.eclipse.emf.ecore.ETypeParameter;
import org.eclipse.emf.ecore.ETypedElement;
import org.eclipse.emf.ecore.InternalEObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EOperation
extends ETypedElement {
    public EClass getEContainingClass();

    public EList<EParameter> getEParameters();

    public EList<EClassifier> getEExceptions();

    public EList<EGenericType> getEGenericExceptions();

    public int getOperationID();

    public boolean isOverrideOf(EOperation var1);

    public EList<ETypeParameter> getETypeParameters();

    public static interface Internal
    extends EOperation,
    InternalEObject {
        public InvocationDelegate getInvocationDelegate();

        public void setInvocationDelegate(InvocationDelegate var1);

        /*
         * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        public static interface InvocationDelegate {
            public Object dynamicInvoke(InternalEObject var1, EList<?> var2) throws InvocationTargetException;

            public static interface Factory {
                public InvocationDelegate createInvocationDelegate(EOperation var1);

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
    }
}

