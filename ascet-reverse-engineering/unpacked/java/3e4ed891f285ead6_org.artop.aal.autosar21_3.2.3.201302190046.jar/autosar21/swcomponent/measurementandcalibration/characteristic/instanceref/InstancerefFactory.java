/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.measurementandcalibration.characteristic.instanceref;

import autosar21.swcomponent.measurementandcalibration.characteristic.instanceref.ArCalprmRefCalprmElementPrototype;
import autosar21.swcomponent.measurementandcalibration.characteristic.instanceref.CalprmAccessCalprmElementPrototype;
import autosar21.swcomponent.measurementandcalibration.characteristic.instanceref.InstancerefPackage;
import autosar21.swcomponent.measurementandcalibration.characteristic.instanceref.impl.InstancerefFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InstancerefFactory
extends EFactory {
    public static final InstancerefFactory eINSTANCE = InstancerefFactoryImpl.init();

    public ArCalprmRefCalprmElementPrototype createArCalprmRefCalprmElementPrototype();

    public CalprmAccessCalprmElementPrototype createCalprmAccessCalprmElementPrototype();

    public InstancerefPackage getInstancerefPackage();
}

