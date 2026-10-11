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
package autosar3x.swcomponent.measurementandcalibration.characteristic.impl;

import autosar3x.swcomponent.measurementandcalibration.characteristic.ArCalprmRef;
import autosar3x.swcomponent.measurementandcalibration.characteristic.CalprmAccess;
import autosar3x.swcomponent.measurementandcalibration.characteristic.CalprmElementPrototype;
import autosar3x.swcomponent.measurementandcalibration.characteristic.CalprmInterface;
import autosar3x.swcomponent.measurementandcalibration.characteristic.CharacteristicFactory;
import autosar3x.swcomponent.measurementandcalibration.characteristic.CharacteristicPackage;
import autosar3x.swcomponent.measurementandcalibration.characteristic.impl.ArCalprmRefImpl;
import autosar3x.swcomponent.measurementandcalibration.characteristic.impl.CalprmAccessImpl;
import autosar3x.swcomponent.measurementandcalibration.characteristic.impl.CalprmElementPrototypeImpl;
import autosar3x.swcomponent.measurementandcalibration.characteristic.impl.CalprmInterfaceImpl;
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
            CharacteristicFactory theCharacteristicFactory = (CharacteristicFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/swc/mac/c");
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
                return this.createCalprmAccess();
            }
            case 1: {
                return this.createArCalprmRef();
            }
            case 2: {
                return this.createCalprmInterface();
            }
            case 3: {
                return this.createCalprmElementPrototype();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
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

    public CalprmElementPrototype createCalprmElementPrototype() {
        CalprmElementPrototypeImpl calprmElementPrototype = new CalprmElementPrototypeImpl();
        return calprmElementPrototype;
    }

    public CharacteristicPackage getCharacteristicPackage() {
        return (CharacteristicPackage)this.getEPackage();
    }

    @Deprecated
    public static CharacteristicPackage getPackage() {
        return CharacteristicPackage.eINSTANCE;
    }
}

