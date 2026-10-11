/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar21.genericstructure.infrastructure.identifiable.impl;

import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.genericstructure.infrastructure.identifiable.IdentifiablePackage;
import autosar21.genericstructure.infrastructure.impl.NonSplitableElementImpl;
import org.eclipse.emf.ecore.EClass;

public abstract class ARElementImpl
extends NonSplitableElementImpl
implements ARElement {
    protected ARElementImpl() {
    }

    protected EClass eStaticClass() {
        return IdentifiablePackage.Literals.AR_ELEMENT;
    }
}

