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
import org.eclipse.emf.validation.internal.modeled.model.validation.Feature;
import org.eclipse.emf.validation.internal.modeled.model.validation.ValidationPackage;

public class FeatureImpl
extends EObjectImpl
implements Feature {
    protected FeatureImpl() {
    }

    protected EClass eStaticClass() {
        return ValidationPackage.Literals.FEATURE;
    }
}

