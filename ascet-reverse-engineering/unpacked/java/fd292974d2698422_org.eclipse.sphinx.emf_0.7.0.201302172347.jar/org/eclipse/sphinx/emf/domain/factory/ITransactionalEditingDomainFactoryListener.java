/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.transaction.TransactionalEditingDomain
 */
package org.eclipse.sphinx.emf.domain.factory;

import org.eclipse.emf.transaction.TransactionalEditingDomain;

public interface ITransactionalEditingDomainFactoryListener {
    public void postCreateEditingDomain(TransactionalEditingDomain var1);

    public void preDisposeEditingDomain(TransactionalEditingDomain var1);
}

