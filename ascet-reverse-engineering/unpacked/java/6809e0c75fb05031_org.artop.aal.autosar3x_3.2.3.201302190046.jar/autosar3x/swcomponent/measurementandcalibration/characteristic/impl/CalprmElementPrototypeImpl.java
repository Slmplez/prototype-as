/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.swcomponent.measurementandcalibration.characteristic.impl;

import autosar3x.swcomponent.datatype.datatypes.impl.DataPrototypeImpl;
import autosar3x.swcomponent.measurementandcalibration.characteristic.CalprmElementPrototype;
import autosar3x.swcomponent.measurementandcalibration.characteristic.CharacteristicPackage;
import org.eclipse.emf.ecore.EClass;

public class CalprmElementPrototypeImpl
extends DataPrototypeImpl
implements CalprmElementPrototype {
    protected CalprmElementPrototypeImpl() {
    }

    protected EClass eStaticClass() {
        return CharacteristicPackage.Literals.CALPRM_ELEMENT_PROTOTYPE;
    }
}

