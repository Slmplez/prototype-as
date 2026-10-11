/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.emf.ecore.EObject
 */
package org.eclipse.emf.validation.model;

import java.util.Set;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.validation.model.IModelConstraint;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IConstraintStatus
extends IStatus {
    public IModelConstraint getConstraint();

    public EObject getTarget();

    public Set<EObject> getResultLocus();
}

