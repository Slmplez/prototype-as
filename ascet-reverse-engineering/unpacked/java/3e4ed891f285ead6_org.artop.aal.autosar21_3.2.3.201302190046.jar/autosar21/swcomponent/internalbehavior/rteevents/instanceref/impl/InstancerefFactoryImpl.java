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
package autosar21.swcomponent.internalbehavior.rteevents.instanceref.impl;

import autosar21.swcomponent.internalbehavior.rteevents.instanceref.DataReceiveErrorEventData;
import autosar21.swcomponent.internalbehavior.rteevents.instanceref.DataReceivedEventData;
import autosar21.swcomponent.internalbehavior.rteevents.instanceref.InstancerefFactory;
import autosar21.swcomponent.internalbehavior.rteevents.instanceref.InstancerefPackage;
import autosar21.swcomponent.internalbehavior.rteevents.instanceref.ModeSwitchEventMode;
import autosar21.swcomponent.internalbehavior.rteevents.instanceref.OperationInvokedEventOperation;
import autosar21.swcomponent.internalbehavior.rteevents.instanceref.impl.DataReceiveErrorEventDataImpl;
import autosar21.swcomponent.internalbehavior.rteevents.instanceref.impl.DataReceivedEventDataImpl;
import autosar21.swcomponent.internalbehavior.rteevents.instanceref.impl.ModeSwitchEventModeImpl;
import autosar21.swcomponent.internalbehavior.rteevents.instanceref.impl.OperationInvokedEventOperationImpl;
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
            InstancerefFactory theInstancerefFactory = (InstancerefFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/swc/ib/rtee/r");
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
                return this.createDataReceivedEventData();
            }
            case 1: {
                return this.createDataReceiveErrorEventData();
            }
            case 2: {
                return this.createModeSwitchEventMode();
            }
            case 3: {
                return this.createOperationInvokedEventOperation();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public DataReceivedEventData createDataReceivedEventData() {
        DataReceivedEventDataImpl dataReceivedEventData = new DataReceivedEventDataImpl();
        return dataReceivedEventData;
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

    public InstancerefPackage getInstancerefPackage() {
        return (InstancerefPackage)this.getEPackage();
    }

    @Deprecated
    public static InstancerefPackage getPackage() {
        return InstancerefPackage.eINSTANCE;
    }
}

