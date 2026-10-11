/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.genericstructure.infrastructure.identifiable.impl;

import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.genericstructure.infrastructure.identifiable.IdentifiablePackage;
import autosar3x.genericstructure.infrastructure.identifiable.impl.PackageableElementImpl;
import org.eclipse.emf.ecore.EClass;

public abstract class ARElementImpl
extends PackageableElementImpl
implements ARElement {
    protected ARElementImpl() {
    }

    protected EClass eStaticClass() {
        return IdentifiablePackage.Literals.AR_ELEMENT;
    }
}

