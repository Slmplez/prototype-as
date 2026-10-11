/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar21.genericstructure.infrastructure.impl;

import autosar21.genericstructure.infrastructure.InfrastructurePackage;
import autosar21.genericstructure.infrastructure.SplitableElement;
import autosar21.genericstructure.infrastructure.impl.PackageableElementImpl;
import org.eclipse.emf.ecore.EClass;

public abstract class SplitableElementImpl
extends PackageableElementImpl
implements SplitableElement {
    protected SplitableElementImpl() {
    }

    protected EClass eStaticClass() {
        return InfrastructurePackage.Literals.SPLITABLE_ELEMENT;
    }
}

