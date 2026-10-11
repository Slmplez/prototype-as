/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar21.swcomponent.vfberrors.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.swcomponent.vfberrors.DevelopmentError;
import autosar21.swcomponent.vfberrors.VfberrorsPackage;
import org.eclipse.emf.ecore.EClass;

public class DevelopmentErrorImpl
extends ARObjectImpl
implements DevelopmentError {
    protected DevelopmentErrorImpl() {
    }

    protected EClass eStaticClass() {
        return VfberrorsPackage.Literals.DEVELOPMENT_ERROR;
    }
}

