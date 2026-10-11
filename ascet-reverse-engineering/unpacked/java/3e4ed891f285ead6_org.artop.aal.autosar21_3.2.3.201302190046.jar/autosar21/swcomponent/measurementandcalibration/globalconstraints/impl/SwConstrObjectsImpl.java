/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar21.swcomponent.measurementandcalibration.globalconstraints.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.GlobalconstraintsPackage;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.SwConstrObjects;
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

