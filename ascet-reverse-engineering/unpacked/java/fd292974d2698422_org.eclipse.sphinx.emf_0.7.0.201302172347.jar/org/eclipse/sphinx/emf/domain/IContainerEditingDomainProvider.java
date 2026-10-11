/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.transaction.TransactionalEditingDomain
 */
package org.eclipse.sphinx.emf.domain;

import java.util.Collection;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IContainerEditingDomainProvider {
    public Collection<TransactionalEditingDomain> getEditingDomains();

    public TransactionalEditingDomain getEditingDomain(IMetaModelDescriptor var1);
}

