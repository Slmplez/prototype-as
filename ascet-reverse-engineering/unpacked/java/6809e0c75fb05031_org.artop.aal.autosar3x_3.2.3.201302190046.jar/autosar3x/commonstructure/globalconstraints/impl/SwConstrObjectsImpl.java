/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.commonstructure.globalconstraints.impl;

import autosar3x.commonstructure.globalconstraints.GlobalconstraintsPackage;
import autosar3x.commonstructure.globalconstraints.SwConstrObjects;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import org.eclipse.emf.ecore.EClass;

public class SwConstrObjectsImpl
extends ARObjectImpl
implements SwConstrObjects {
    protected SwConstrObjectsImpl() {
    }

    protected EClass eStaticClass() {
        return GlobalconstraintsPackage.Literals.SW_CONSTR_OBJECTS;
    }
}

