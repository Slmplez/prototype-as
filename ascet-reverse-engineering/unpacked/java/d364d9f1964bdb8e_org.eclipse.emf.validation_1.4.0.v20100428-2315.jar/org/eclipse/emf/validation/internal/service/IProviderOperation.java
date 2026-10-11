/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package org.eclipse.emf.validation.internal.service;

import java.util.Collection;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.validation.model.IModelConstraint;
import org.eclipse.emf.validation.service.IModelConstraintProvider;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IProviderOperation<T extends Collection<? extends IModelConstraint>> {
    public EObject getEObject();

    public T getConstraints();

    public T execute(IModelConstraintProvider var1);
}

