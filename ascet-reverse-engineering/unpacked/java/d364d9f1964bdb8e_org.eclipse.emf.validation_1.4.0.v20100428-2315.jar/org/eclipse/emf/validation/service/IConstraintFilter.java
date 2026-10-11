/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package org.eclipse.emf.validation.service;

import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.validation.service.IConstraintDescriptor;

public interface IConstraintFilter {
    public static final IConstraintFilter IDENTITY_INSTANCE = new IConstraintFilter(){

        public boolean accept(IConstraintDescriptor constraint, EObject target) {
            return true;
        }
    };

    public boolean accept(IConstraintDescriptor var1, EObject var2);
}

