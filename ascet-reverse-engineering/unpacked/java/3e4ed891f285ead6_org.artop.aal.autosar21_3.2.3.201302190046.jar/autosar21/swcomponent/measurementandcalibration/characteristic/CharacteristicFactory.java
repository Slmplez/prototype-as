/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.measurementandcalibration.characteristic;

import autosar21.swcomponent.measurementandcalibration.characteristic.ArCalprmRef;
import autosar21.swcomponent.measurementandcalibration.characteristic.CalprmAccess;
import autosar21.swcomponent.measurementandcalibration.characteristic.CalprmElementPrototype;
import autosar21.swcomponent.measurementandcalibration.characteristic.CalprmInterface;
import autosar21.swcomponent.measurementandcalibration.characteristic.CharacteristicPackage;
import autosar21.swcomponent.measurementandcalibration.characteristic.impl.CharacteristicFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface CharacteristicFactory
extends EFactory {
    public static final CharacteristicFactory eINSTANCE = CharacteristicFactoryImpl.init();

    public CalprmElementPrototype createCalprmElementPrototype();

    public CalprmAccess createCalprmAccess();

    public ArCalprmRef createArCalprmRef();

    public CalprmInterface createCalprmInterface();

    public CharacteristicPackage getCharacteristicPackage();
}

