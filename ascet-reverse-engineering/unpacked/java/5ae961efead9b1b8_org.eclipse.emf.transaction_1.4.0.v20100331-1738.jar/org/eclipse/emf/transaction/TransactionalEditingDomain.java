/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.resource.ResourceSet
 *  org.eclipse.emf.edit.domain.EditingDomain
 */
package org.eclipse.emf.transaction;

import java.util.Map;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.edit.domain.EditingDomain;
import org.eclipse.emf.transaction.ResourceSetListener;
import org.eclipse.emf.transaction.RunnableWithResult;
import org.eclipse.emf.transaction.TransactionalEditingDomainListener;
import org.eclipse.emf.transaction.impl.TransactionalEditingDomainImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface TransactionalEditingDomain
extends EditingDomain {
    public String getID();

    public void setID(String var1);

    public void addResourceSetListener(ResourceSetListener var1);

    public void removeResourceSetListener(ResourceSetListener var1);

    public Object runExclusive(Runnable var1) throws InterruptedException;

    public void yield();

    public RunnableWithResult<?> createPrivilegedRunnable(Runnable var1);

    public void dispose();

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static interface DefaultOptions {
        public Map<?, ?> getDefaultTransactionOptions();

        public void setDefaultTransactionOptions(Map<?, ?> var1);
    }

    public static interface Factory {
        public static final Factory INSTANCE = new TransactionalEditingDomainImpl.FactoryImpl();

        public TransactionalEditingDomain createEditingDomain();

        public TransactionalEditingDomain createEditingDomain(ResourceSet var1);

        public TransactionalEditingDomain getEditingDomain(ResourceSet var1);
    }

    public static interface Lifecycle {
        public void addTransactionalEditingDomainListener(TransactionalEditingDomainListener var1);

        public void removeTransactionalEditingDomainListener(TransactionalEditingDomainListener var1);
    }

    public static interface Registry {
        public static final Registry INSTANCE = new TransactionalEditingDomainImpl.RegistryImpl();

        public TransactionalEditingDomain getEditingDomain(String var1);

        public void add(String var1, TransactionalEditingDomain var2);

        public TransactionalEditingDomain remove(String var1);
    }
}

