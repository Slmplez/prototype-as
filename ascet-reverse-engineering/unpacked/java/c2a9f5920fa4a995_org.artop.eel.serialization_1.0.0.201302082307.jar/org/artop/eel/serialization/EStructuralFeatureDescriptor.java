/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature
 */
package org.artop.eel.serialization;

import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;

public class EStructuralFeatureDescriptor {
    private EObject owner;
    private EStructuralFeature feature;

    public EStructuralFeatureDescriptor(EObject owner, EStructuralFeature feature) {
        this.owner = owner;
        this.feature = feature;
    }

    public EObject getOwner() {
        return this.owner;
    }

    public void setOwner(EObject owner) {
        this.owner = owner;
    }

    public EStructuralFeature getFeature() {
        return this.feature;
    }

    public void setFeature(EStructuralFeature feature) {
        this.feature = feature;
    }
}

