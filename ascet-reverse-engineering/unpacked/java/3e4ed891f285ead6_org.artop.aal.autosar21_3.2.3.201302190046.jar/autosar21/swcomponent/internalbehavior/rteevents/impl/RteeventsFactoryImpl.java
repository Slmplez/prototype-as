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
package autosar21.swcomponent.internalbehavior.rteevents.impl;

import autosar21.swcomponent.internalbehavior.rteevents.AsynchronousServerCallReturnsEvent;
import autosar21.swcomponent.internalbehavior.rteevents.DataReceiveErrorEvent;
import autosar21.swcomponent.internalbehavior.rteevents.DataReceivedEvent;
import autosar21.swcomponent.internalbehavior.rteevents.DataSendCompletedEvent;
import autosar21.swcomponent.internalbehavior.rteevents.ModeSwitchEvent;
import autosar21.swcomponent.internalbehavior.rteevents.ModeSwitchedAckEvent;
import autosar21.swcomponent.internalbehavior.rteevents.OperationInvokedEvent;
import autosar21.swcomponent.internalbehavior.rteevents.RTEEvent;
import autosar21.swcomponent.internalbehavior.rteevents.RteeventsFactory;
import autosar21.swcomponent.internalbehavior.rteevents.RteeventsPackage;
import autosar21.swcomponent.internalbehavior.rteevents.TimingEvent;
import autosar21.swcomponent.internalbehavior.rteevents.WaitPoint;
import autosar21.swcomponent.internalbehavior.rteevents.impl.AsynchronousServerCallReturnsEventImpl;
import autosar21.swcomponent.internalbehavior.rteevents.impl.DataReceiveErrorEventImpl;
import autosar21.swcomponent.internalbehavior.rteevents.impl.DataReceivedEventImpl;
import autosar21.swcomponent.internalbehavior.rteevents.impl.DataSendCompletedEventImpl;
import autosar21.swcomponent.internalbehavior.rteevents.impl.ModeSwitchEventImpl;
import autosar21.swcomponent.internalbehavior.rteevents.impl.ModeSwitchedAckEventImpl;
import autosar21.swcomponent.internalbehavior.rteevents.impl.OperationInvokedEventImpl;
import autosar21.swcomponent.internalbehavior.rteevents.impl.RTEEventImpl;
import autosar21.swcomponent.internalbehavior.rteevents.impl.TimingEventImpl;
import autosar21.swcomponent.internalbehavior.rteevents.impl.WaitPointImpl;
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
            RteeventsFactory theRteeventsFactory = (RteeventsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/swc/ib/rtee");
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

