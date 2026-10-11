/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar21.swcomponent.datatype.localconstraints.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.swcomponent.datatype.localconstraints.Interstring;
import autosar21.swcomponent.datatype.localconstraints.LocalconstraintsPackage;
import org.eclipse.emf.ecore.EClass;

public class InterstringImpl
extends ARObjectImpl
implements Interstring {
    protected InterstringImpl() {
    }

    protected EClass eStaticClass() {
        return LocalconstraintsPackage.Literals.INTERSTRING;
    }
}

