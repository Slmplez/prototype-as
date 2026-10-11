/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.genericstructure.generaltemplateclasses.arpackage.impl;

import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ArpackagePackage;
import autosar40.genericstructure.generaltemplateclasses.arpackage.impl.PackageableElementImpl;
import org.eclipse.emf.ecore.EClass;

public abstract class ARElementImpl
extends PackageableElementImpl
implements ARElement {
    protected ARElementImpl() {
    }

    protected EClass eStaticClass() {
        return ArpackagePackage.Literals.AR_ELEMENT;
    }
}

