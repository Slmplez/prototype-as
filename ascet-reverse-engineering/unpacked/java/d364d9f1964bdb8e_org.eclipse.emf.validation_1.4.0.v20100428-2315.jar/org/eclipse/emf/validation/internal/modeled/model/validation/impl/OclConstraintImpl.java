/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.impl.EObjectImpl
 */
package org.eclipse.emf.validation.internal.modeled.model.validation.impl;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.impl.EObjectImpl;
import org.eclipse.emf.validation.internal.modeled.model.validation.OclConstraint;
import org.eclipse.emf.validation.internal.modeled.model.validation.ValidationPackage;

public class OclConstraintImpl
extends EObjectImpl
implements OclConstraint {
    protected OclConstraintImpl() {
    }

    protected EClass eStaticClass() {
        return ValidationPackage.Literals.OCL_CONSTRAINT;
    }
}

