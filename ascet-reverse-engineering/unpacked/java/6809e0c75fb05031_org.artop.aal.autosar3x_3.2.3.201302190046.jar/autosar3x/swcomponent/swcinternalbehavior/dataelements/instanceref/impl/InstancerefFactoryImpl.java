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
package autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref.impl;

import autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref.DataReadAccessDataElement;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref.DataReceivePointDataElement;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref.DataSendPointDataElement;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref.DataWriteAccessDataElement;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref.InstancerefFactory;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref.InstancerefPackage;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref.impl.DataReadAccessDataElementImpl;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref.impl.DataReceivePointDataElementImpl;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref.impl.DataSendPointDataElementImpl;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref.impl.DataWriteAccessDataElementImpl;
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
            InstancerefFactory theInstancerefFactory = (InstancerefFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/swc/sib/de/r");
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
                return this.createDataReadAccessDataElement();
            }
            case 1: {
                return this.createDataSendPointDataElement();
            }
            case 2: {
                return this.createDataWriteAccessDataElement();
            }
            case 3: {
                return this.createDataReceivePointDataElement();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public DataReadAccessDataElement createDataReadAccessDataElement() {
        DataReadAccessDataElementImpl dataReadAccessDataElement = new DataReadAccessDataElementImpl();
        return dataReadAccessDataElement;
    }

    public DataSendPointDataElement createDataSendPointDataElement() {
        DataSendPointDataElementImpl dataSendPointDataElement = new DataSendPointDataElementImpl();
        return dataSendPointDataElement;
    }

    public DataWriteAccessDataElement createDataWriteAccessDataElement() {
        DataWriteAccessDataElementImpl dataWriteAccessDataElement = new DataWriteAccessDataElementImpl();
        return dataWriteAccessDataElement;
    }

    public DataReceivePointDataElement createDataReceivePointDataElement() {
        DataReceivePointDataElementImpl dataReceivePointDataElement = new DataReceivePointDataElementImpl();
        return dataReceivePointDataElement;
    }

    public InstancerefPackage getInstancerefPackage() {
        return (InstancerefPackage)this.getEPackage();
    }

    @Deprecated
    public static InstancerefPackage getPackage() {
        return InstancerefPackage.eINSTANCE;
    }
}

