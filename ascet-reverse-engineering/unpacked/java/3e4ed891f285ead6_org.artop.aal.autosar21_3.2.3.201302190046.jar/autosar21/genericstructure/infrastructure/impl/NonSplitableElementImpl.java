/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar21.genericstructure.infrastructure.impl;

import autosar21.genericstructure.infrastructure.InfrastructurePackage;
import autosar21.genericstructure.infrastructure.NonSplitableElement;
import autosar21.genericstructure.infrastructure.impl.PackageableElementImpl;
import org.eclipse.emf.ecore.EClass;

public abstract class NonSplitableElementImpl
extends PackageableElementImpl
implements NonSplitableElement {
    protected NonSplitableElementImpl() {
    }

    protected EClass eStaticClass() {
        return InfrastructurePackage.Literals.NON_SPLITABLE_ELEMENT;
    }
}

