/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.swcomponent.measurementandcalibration.characteristic;

import autosar3x.swcomponent.measurementandcalibration.characteristic.ArCalprmRef;
import autosar3x.swcomponent.measurementandcalibration.characteristic.CalprmAccess;
import autosar3x.swcomponent.measurementandcalibration.characteristic.CalprmElementPrototype;
import autosar3x.swcomponent.measurementandcalibration.characteristic.CalprmInterface;
import autosar3x.swcomponent.measurementandcalibration.characteristic.CharacteristicPackage;
import autosar3x.swcomponent.measurementandcalibration.characteristic.impl.CharacteristicFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface CharacteristicFactory
extends EFactory {
    public static final CharacteristicFactory eINSTANCE = CharacteristicFactoryImpl.init();

    public CalprmAccess createCalprmAccess();

    public ArCalprmRef createArCalprmRef();

    public CalprmInterface createCalprmInterface();

    public CalprmElementPrototype createCalprmElementPrototype();

    public CharacteristicPackage getCharacteristicPackage();
}

