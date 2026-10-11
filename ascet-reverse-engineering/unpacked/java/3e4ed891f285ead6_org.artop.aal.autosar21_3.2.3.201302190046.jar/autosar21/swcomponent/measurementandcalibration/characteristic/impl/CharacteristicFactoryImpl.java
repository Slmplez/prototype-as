/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar21.swcomponent.measurementandcalibration.characteristic.impl;

import autosar21.swcomponent.measurementandcalibration.characteristic.ArCalprmRef;
import autosar21.swcomponent.measurementandcalibration.characteristic.CalprmAccess;
import autosar21.swcomponent.measurementandcalibration.characteristic.CalprmElementPrototype;
import autosar21.swcomponent.measurementandcalibration.characteristic.CalprmInterface;
import autosar21.swcomponent.measurementandcalibration.characteristic.CharacteristicFactory;
import autosar21.swcomponent.measurementandcalibration.characteristic.CharacteristicPackage;
import autosar21.swcomponent.measurementandcalibration.characteristic.impl.ArCalprmRefImpl;
import autosar21.swcomponent.measurementandcalibration.characteristic.impl.CalprmAccessImpl;
import autosar21.swcomponent.measurementandcalibration.characteristic.impl.CalprmElementPrototypeImpl;
import autosar21.swcomponent.measurementandcalibration.characteristic.impl.CalprmInterfaceImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class CharacteristicFactoryImpl
extends EFactoryImpl
implements CharacteristicFactory {
    public static CharacteristicFactory init() {
        try {
            CharacteristicFactory theCharacteristicFactory = (CharacteristicFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/swc/mac/c");
            if (theCharacteristicFactory != null) {
                return theCharacteristicFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new CharacteristicFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createCalprmElementPrototype();
            }
            case 1: {
                return this.createCalprmAccess();
            }
            case 2: {
                return this.createArCalprmRef();
            }
            case 3: {
                return this.createCalprmInterface();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public CalprmElementPrototype createCalprmElementPrototype() {
        CalprmElementPrototypeImpl calprmElementPrototype = new CalprmElementPrototypeImpl();
        return calprmElementPrototype;
    }

    public CalprmAccess createCalprmAccess() {
        CalprmAccessImpl calprmAccess = new CalprmAccessImpl();
        return calprmAccess;
    }

    public ArCalprmRef createArCalprmRef() {
        ArCalprmRefImpl arCalprmRef = new ArCalprmRefImpl();
        return arCalprmRef;
    }

    public CalprmInterface createCalprmInterface() {
        CalprmInterfaceImpl calprmInterface = new CalprmInterfaceImpl();
        return calprmInterface;
    }

    public CharacteristicPackage getCharacteristicPackage() {
        return (CharacteristicPackage)this.getEPackage();
    }

    @Deprecated
    public static CharacteristicPackage getPackage() {
        return CharacteristicPackage.eINSTANCE;
    }
}

