/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar21.swcomponent.measurementandcalibration.basetypes.impl;

import autosar21.swcomponent.measurementandcalibration.basetypes.BasetypesPackage;
import autosar21.swcomponent.measurementandcalibration.basetypes.SwBaseType;
import autosar21.swcomponent.measurementandcalibration.basetypes.impl.BaseTypeImpl;
import org.eclipse.emf.ecore.EClass;

public class SwBaseTypeImpl
extends BaseTypeImpl
implements SwBaseType {
    protected SwBaseTypeImpl() {
    }

    protected EClass eStaticClass() {
        return BasetypesPackage.Literals.SW_BASE_TYPE;
    }
}

