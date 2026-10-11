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
package autosar21.swcomponent.measurementandcalibration.measurementproperty.instanceref.impl;

import autosar21.swcomponent.measurementandcalibration.measurementproperty.instanceref.DataPrototypeRefDataPrototype;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.instanceref.InstancerefFactory;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.instanceref.InstancerefPackage;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.instanceref.RecordElementRefRecordElement;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.instanceref.impl.DataPrototypeRefDataPrototypeImpl;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.instanceref.impl.RecordElementRefRecordElementImpl;
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
            InstancerefFactory theInstancerefFactory = (InstancerefFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/swc/mac/mp/r");
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
                return this.createDataPrototypeRefDataPrototype();
            }
            case 1: {
                return this.createRecordElementRefRecordElement();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public DataPrototypeRefDataPrototype createDataPrototypeRefDataPrototype() {
        DataPrototypeRefDataPrototypeImpl dataPrototypeRefDataPrototype = new DataPrototypeRefDataPrototypeImpl();
        return dataPrototypeRefDataPrototype;
    }

    public RecordElementRefRecordElement createRecordElementRefRecordElement() {
        RecordElementRefRecordElementImpl recordElementRefRecordElement = new RecordElementRefRecordElementImpl();
        return recordElementRefRecordElement;
    }

    public InstancerefPackage getInstancerefPackage() {
        return (InstancerefPackage)this.getEPackage();
    }

    @Deprecated
    public static InstancerefPackage getPackage() {
        return InstancerefPackage.eINSTANCE;
    }
}

