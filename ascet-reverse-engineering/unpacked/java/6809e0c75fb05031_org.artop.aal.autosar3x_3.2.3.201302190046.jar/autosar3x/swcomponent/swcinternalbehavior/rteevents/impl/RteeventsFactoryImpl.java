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
package autosar3x.swcomponent.swcinternalbehavior.rteevents.impl;

import autosar3x.swcomponent.swcinternalbehavior.rteevents.AsynchronousServerCallReturnsEvent;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.DataReceiveErrorEvent;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.DataReceivedEvent;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.DataSendCompletedEvent;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.ModeSwitchEvent;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.ModeSwitchedAckEvent;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.OperationInvokedEvent;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.RTEEvent;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.RteeventsFactory;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.RteeventsPackage;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.TimingEvent;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.WaitPoint;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.impl.AsynchronousServerCallReturnsEventImpl;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.impl.DataReceiveErrorEventImpl;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.impl.DataReceivedEventImpl;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.impl.DataSendCompletedEventImpl;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.impl.ModeSwitchEventImpl;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.impl.ModeSwitchedAckEventImpl;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.impl.OperationInvokedEventImpl;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.impl.RTEEventImpl;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.impl.TimingEventImpl;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.impl.WaitPointImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class RteeventsFactoryImpl
extends EFactoryImpl
implements RteeventsFactory {
    public static RteeventsFactory init() {
        try {
            RteeventsFactory theRteeventsFactory = (RteeventsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/swc/sib/rtee");
            if (theRteeventsFactory != null) {
                return theRteeventsFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new RteeventsFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createModeSwitchedAckEvent();
            }
            case 1: {
                return this.createRTEEvent();
            }
            case 2: {
                return this.createAsynchronousServerCallReturnsEvent();
            }
            case 3: {
                return this.createDataSendCompletedEvent();
            }
            case 4: {
                return this.createDataReceivedEvent();
            }
            case 5: {
                return this.createDataReceiveErrorEvent();
            }
            case 6: {
                return this.createTimingEvent();
            }
            case 7: {
                return this.createOperationInvokedEvent();
            }
            case 8: {
                return this.createModeSwitchEvent();
            }
            case 9: {
                return this.createWaitPoint();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public ModeSwitchedAckEvent createModeSwitchedAckEvent() {
        ModeSwitchedAckEventImpl modeSwitchedAckEvent = new ModeSwitchedAckEventImpl();
        return modeSwitchedAckEvent;
    }

    public RTEEvent createRTEEvent() {
        RTEEventImpl rteEvent = new RTEEventImpl();
        return rteEvent;
    }

    public AsynchronousServerCallReturnsEvent createAsynchronousServerCallReturnsEvent() {
        AsynchronousServerCallReturnsEventImpl asynchronousServerCallReturnsEvent = new AsynchronousServerCallReturnsEventImpl();
        return asynchronousServerCallReturnsEvent;
    }

    public DataSendCompletedEvent createDataSendCompletedEvent() {
        DataSendCompletedEventImpl dataSendCompletedEvent = new DataSendCompletedEventImpl();
        return dataSendCompletedEvent;
    }

    public DataReceivedEvent createDataReceivedEvent() {
        DataReceivedEventImpl dataReceivedEvent = new DataReceivedEventImpl();
        return dataReceivedEvent;
    }

    public DataReceiveErrorEvent createDataReceiveErrorEvent() {
        DataReceiveErrorEventImpl dataReceiveErrorEvent = new DataReceiveErrorEventImpl();
        return dataReceiveErrorEvent;
    }

    public TimingEvent createTimingEvent() {
        TimingEventImpl timingEvent = new TimingEventImpl();
        return timingEvent;
    }

    public OperationInvokedEvent createOperationInvokedEvent() {
        OperationInvokedEventImpl operationInvokedEvent = new OperationInvokedEventImpl();
        return operationInvokedEvent;
    }

    public ModeSwitchEvent createModeSwitchEvent() {
        ModeSwitchEventImpl modeSwitchEvent = new ModeSwitchEventImpl();
        return modeSwitchEvent;
    }

    public WaitPoint createWaitPoint() {
        WaitPointImpl waitPoint = new WaitPointImpl();
        return waitPoint;
    }

    public RteeventsPackage getRteeventsPackage() {
        return (RteeventsPackage)this.getEPackage();
    }

    @Deprecated
    public static RteeventsPackage getPackage() {
        return RteeventsPackage.eINSTANCE;
    }
}

