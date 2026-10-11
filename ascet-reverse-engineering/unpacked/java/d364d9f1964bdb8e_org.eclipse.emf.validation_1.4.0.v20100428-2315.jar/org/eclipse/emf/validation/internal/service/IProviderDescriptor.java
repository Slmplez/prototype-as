/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.validation.internal.service;

import java.util.Collection;
import org.eclipse.emf.validation.internal.service.IProviderOperation;
import org.eclipse.emf.validation.model.IModelConstraint;
import org.eclipse.emf.validation.service.IModelConstraintProvider;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IProviderDescriptor {
    public boolean provides(IProviderOperation<? extends Collection<? extends IModelConstraint>> var1);

    public boolean isCacheEnabled();

    public boolean isXmlProvider();

    public boolean isCache();

    public IModelConstraintProvider getProvider();
}

