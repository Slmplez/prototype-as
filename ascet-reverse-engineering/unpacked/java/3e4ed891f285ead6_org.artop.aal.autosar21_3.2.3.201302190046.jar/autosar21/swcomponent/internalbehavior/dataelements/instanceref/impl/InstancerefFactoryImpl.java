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
package autosar21.swcomponent.internalbehavior.dataelements.instanceref.impl;

import autosar21.swcomponent.internalbehavior.dataelements.instanceref.DataReadAccessDataElement;
import autosar21.swcomponent.internalbehavior.dataelements.instanceref.DataReceivePointDataElement;
import autosar21.swcomponent.internalbehavior.dataelements.instanceref.DataSendPointDataElement;
import autosar21.swcomponent.internalbehavior.dataelements.instanceref.DataWriteAccessDataElement;
import autosar21.swcomponent.internalbehavior.dataelements.instanceref.InstancerefFactory;
import autosar21.swcomponent.internalbehavior.dataelements.instanceref.InstancerefPackage;
import autosar21.swcomponent.internalbehavior.dataelements.instanceref.impl.DataReadAccessDataElementImpl;
import autosar21.swcomponent.internalbehavior.dataelements.instanceref.impl.DataReceivePointDataElementImpl;
import autosar21.swcomponent.internalbehavior.dataelements.instanceref.impl.DataSendPointDataElementImpl;
import autosar21.swcomponent.internalbehavior.dataelements.instanceref.impl.DataWriteAccessDataElementImpl;
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
            InstancerefFactory theInstancerefFactory = (InstancerefFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/swc/ib/de/r");
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
                return this.createDataReceivePointDataElement();
            }
            case 2: {
                return this.createDataSendPointDataElement();
            }
            case 3: {
                return this.createDataWriteAccessDataElement();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public DataReadAccessDataElement createDataReadAccessDataElement() {
        DataReadAccessDataElementImpl dataReadAccessDataElement = new DataReadAccessDataElementImpl();
        return dataReadAccessDataElement;
    }

    public DataReceivePointDataElement createDataReceivePointDataElement() {
        DataReceivePointDataElementImpl dataReceivePointDataElement = new DataReceivePointDataElementImpl();
        return dataReceivePointDataElement;
    }

    public DataSendPointDataElement createDataSendPointDataElement() {
        DataSendPointDataElementImpl dataSendPointDataElement = new DataSendPointDataElementImpl();
        return dataSendPointDataElement;
    }

    public DataWriteAccessDataElement createDataWriteAccessDataElement() {
        DataWriteAccessDataElementImpl dataWriteAccessDataElement = new DataWriteAccessDataElementImpl();
        return dataWriteAccessDataElement;
    }

    public InstancerefPackage getInstancerefPackage() {
        return (InstancerefPackage)this.getEPackage();
    }

    @Deprecated
    public static InstancerefPackage getPackage() {
        return InstancerefPackage.eINSTANCE;
    }
}

