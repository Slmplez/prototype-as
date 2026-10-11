/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature
 */
package org.eclipse.emf.ecore.xmi;

import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.xmi.XMIException;

public class IllegalValueException
extends XMIException {
    private static final long serialVersionUID = 1L;
    protected transient EObject object;
    protected transient EStructuralFeature feature;
    protected transient Object value;

    public IllegalValueException(EObject object, EStructuralFeature feature, Object value, Exception emfException, String location, int line, int column) {
        super("Value '" + value + "' is not legal.", emfException, location, line, column);
        this.object = object;
        this.feature = feature;
        this.value = value;
    }

    public EObject getObject() {
        return this.object;
    }

    public EStructuralFeature getFeature() {
        return this.feature;
    }

    public Object getValue() {
        return this.value;
    }
}

