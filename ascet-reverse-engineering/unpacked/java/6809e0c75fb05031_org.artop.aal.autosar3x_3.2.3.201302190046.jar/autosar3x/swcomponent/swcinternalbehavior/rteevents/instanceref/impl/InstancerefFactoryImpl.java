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
package autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.impl;

import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.DataReceiveErrorEventData;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.DataReceivedEventData;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.InstancerefFactory;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.InstancerefPackage;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.ModeSwitchEventMode;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.OperationInvokedEventOperation;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.impl.DataReceiveErrorEventDataImpl;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.impl.DataReceivedEventDataImpl;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.impl.ModeSwitchEventModeImpl;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.impl.OperationInvokedEventOperationImpl;
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
            InstancerefFactory theInstancerefFactory = (InstancerefFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/swc/sib/rtee/r");
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
                return this.createDataReceiveErrorEventData();
            }
            case 1: {
                return this.createModeSwitchEventMode();
            }
            case 2: {
                return this.createOperationInvokedEventOperation();
            }
            case 3: {
                return this.createDataReceivedEventData();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public DataReceiveErrorEventData createDataReceiveErrorEventData() {
        DataReceiveErrorEventDataImpl dataReceiveErrorEventData = new DataReceiveErrorEventDataImpl();
        return dataReceiveErrorEventData;
    }

    public ModeSwitchEventMode createModeSwitchEventMode() {
        ModeSwitchEventModeImpl modeSwitchEventMode = new ModeSwitchEventModeImpl();
        return modeSwitchEventMode;
    }

    public OperationInvokedEventOperation createOperationInvokedEventOperation() {
        OperationInvokedEventOperationImpl operationInvokedEventOperation = new OperationInvokedEventOperationImpl();
        return operationInvokedEventOperation;
    }

    public DataReceivedEventData createDataReceivedEventData() {
        DataReceivedEventDataImpl dataReceivedEventData = new DataReceivedEventDataImpl();
        return dataReceivedEventData;
    }

    public InstancerefPackage getInstancerefPackage() {
        return (InstancerefPackage)this.getEPackage();
    }

    @Deprecated
    public static InstancerefPackage getPackage() {
        return InstancerefPackage.eINSTANCE;
    }
}

