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
package autosar3x.swcomponent.measurementandcalibration.characteristic.instanceref.impl;

import autosar3x.swcomponent.measurementandcalibration.characteristic.instanceref.ArCalprmRefCalprmElementPrototype;
import autosar3x.swcomponent.measurementandcalibration.characteristic.instanceref.CalprmAccessCalprmElementPrototype;
import autosar3x.swcomponent.measurementandcalibration.characteristic.instanceref.InstancerefFactory;
import autosar3x.swcomponent.measurementandcalibration.characteristic.instanceref.InstancerefPackage;
import autosar3x.swcomponent.measurementandcalibration.characteristic.instanceref.impl.ArCalprmRefCalprmElementPrototypeImpl;
import autosar3x.swcomponent.measurementandcalibration.characteristic.instanceref.impl.CalprmAccessCalprmElementPrototypeImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class InstancerefFactoryImpl
extends EFactoryImpl
implements InstancerefFactory {
    public static InstancerefFactory init() {
        try {
            InstancerefFactory theInstancerefFactory = (InstancerefFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/swc/mac/c/r");
            if (theInstancerefFactory != null) {
                return theInstancerefFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new InstancerefFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createArCalprmRefCalprmElementPrototype();
            }
            case 1: {
                return this.createCalprmAccessCalprmElementPrototype();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public ArCalprmRefCalprmElementPrototype createArCalprmRefCalprmElementPrototype() {
        ArCalprmRefCalprmElementPrototypeImpl arCalprmRefCalprmElementPrototype = new ArCalprmRefCalprmElementPrototypeImpl();
        return arCalprmRefCalprmElementPrototype;
    }

    public CalprmAccessCalprmElementPrototype createCalprmAccessCalprmElementPrototype() {
        CalprmAccessCalprmElementPrototypeImpl calprmAccessCalprmElementPrototype = new CalprmAccessCalprmElementPrototypeImpl();
        return calprmAccessCalprmElementPrototype;
    }

    public InstancerefPackage getInstancerefPackage() {
        return (InstancerefPackage)this.getEPackage();
    }

    @Deprecated
    public static InstancerefPackage getPackage() {
        return InstancerefPackage.eINSTANCE;
    }
}

