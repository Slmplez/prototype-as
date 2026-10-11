/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.system.fibex.fibexcore.impl;

import autosar3x.genericstructure.infrastructure.identifiable.impl.PackageableElementImpl;
import autosar3x.system.fibex.fibexcore.FibexElement;
import autosar3x.system.fibex.fibexcore.FibexcorePackage;
import org.eclipse.emf.ecore.EClass;

public class FibexElementImpl
extends PackageableElementImpl
implements FibexElement {
    protected FibexElementImpl() {
    }

    protected EClass eStaticClass() {
        return FibexcorePackage.Literals.FIBEX_ELEMENT;
    }
}

