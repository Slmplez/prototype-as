/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.system.fibex.fibexcore.impl;

import autosar40.genericstructure.generaltemplateclasses.arpackage.impl.PackageableElementImpl;
import autosar40.system.fibex.fibexcore.FibexElement;
import autosar40.system.fibex.fibexcore.FibexcorePackage;
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

