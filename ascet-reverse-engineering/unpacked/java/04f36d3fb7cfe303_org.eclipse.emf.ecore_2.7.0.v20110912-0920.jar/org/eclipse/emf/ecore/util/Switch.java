/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package org.eclipse.emf.ecore.util;

import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class Switch<T> {
    public T defaultCase(EObject eObject) {
        return null;
    }

    protected T doSwitch(EClass eClass, EObject eObject) {
        if (this.isSwitchFor(eClass.getEPackage())) {
            return this.doSwitch(eClass.getClassifierID(), eObject);
        }
        EList<EClass> eSuperTypes = eClass.getESuperTypes();
        return eSuperTypes.isEmpty() ? this.defaultCase(eObject) : this.doSwitch((EClass)eSuperTypes.get(0), eObject);
    }

    public T doSwitch(EObject eObject) {
        return this.doSwitch(eObject.eClass(), eObject);
    }

    protected T doSwitch(int classifierID, EObject eObject) {
        return null;
    }

    protected abstract boolean isSwitchFor(EPackage var1);
}

