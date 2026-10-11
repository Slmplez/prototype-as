/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.commonstructure.auxillaryobjects.impl;

import autosar3x.commonstructure.auxillaryobjects.AuxillaryobjectsPackage;
import autosar3x.commonstructure.auxillaryobjects.SwAddrMethod;
import autosar3x.genericstructure.infrastructure.identifiable.impl.ARElementImpl;
import org.eclipse.emf.ecore.EClass;

public class SwAddrMethodImpl
extends ARElementImpl
implements SwAddrMethod {
    protected SwAddrMethodImpl() {
    }

    protected EClass eStaticClass() {
        return AuxillaryobjectsPackage.Literals.SW_ADDR_METHOD;
    }
}

