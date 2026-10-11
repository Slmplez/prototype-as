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
package autosar40.swcomponent.swcinternalbehavior.rteevents.impl;

import autosar40.swcomponent.swcinternalbehavior.rteevents.AsynchronousServerCallReturnsEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.BackgroundEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.DataReceiveErrorEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.DataReceivedEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.DataSendCompletedEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.DataWriteCompletedEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.ExternalTriggerOccurredEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.InternalTriggerOccurredEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.ModeSwitchedAckEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.OperationInvokedEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.RTEEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.RteeventsFactory;
import autosar40.swcomponent.swcinternalbehavior.rteevents.RteeventsPackage;
import autosar40.swcomponent.swcinternalbehavior.rteevents.SwcModeSwitchEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.TimingEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.WaitPoint;
import autosar40.swcomponent.swcinternalbehavior.rteevents.impl.AsynchronousServerCallReturnsEventImpl;
import autosar40.swcomponent.swcinternalbehavior.rteevents.impl.BackgroundEventImpl;
import autosar40.swcomponent.swcinternalbehavior.rteevents.impl.DataReceiveErrorEventImpl;
import autosar40.swcomponent.swcinternalbehavior.rteevents.impl.DataReceivedEventImpl;
import autosar40.swcomponent.swcinternalbehavior.rteevents.impl.DataSendCompletedEventImpl;
import autosar40.swcomponent.swcinternalbehavior.rteevents.impl.DataWriteCompletedEventImpl;
import autosar40.swcomponent.swcinternalbehavior.rteevents.impl.ExternalTriggerOccurredEventImpl;
import autosar40.swcomponent.swcinternalbehavior.rteevents.impl.InternalTriggerOccurredEventImpl;
import autosar40.swcomponent.swcinternalbehavior.rteevents.impl.ModeSwitchedAckEventImpl;
import autosar40.swcomponent.swcinternalbehavior.rteevents.impl.OperationInvokedEventImpl;
import autosar40.swcomponent.swcinternalbehavior.rteevents.impl.RTEEventImpl;
import autosar40.swcomponent.swcinternalbehavior.rteevents.impl.SwcModeSwitchEventImpl;
import autosar40.swcomponent.swcinternalbehavior.rteevents.impl.TimingEventImpl;
import autosar40.swcomponent.swcinternalbehavior.rteevents.impl.WaitPointImpl;
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
            RteeventsFactory theRteeventsFactory = (RteeventsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/swc/sib/rtee");
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
                return this.createBackgroundEvent();
            }
            case 1: {
                return this.createDataWriteCompletedEvent();
            }
            case 2: {
                return this.createExternalTriggerOccurredEvent();
            }
            case 3: {
                return this.createInternalTriggerOccurredEvent();
            }
            case 4: {
                return this.createModeSwitchedAckEvent();
            }
            case 5: {
                return this.createAsynchronousServerCallReturnsEvent();
            }
            case 6: {
                return this.createDataSendCompletedEvent();
            }
            case 7: {
                return this.createDataReceivedEvent();
            }
            case 8: {
                return this.createDataReceiveErrorEvent();
            }
            case 9: {
                return this.createTimingEvent();
            }
            case 10: {
                return this.createOperationInvokedEvent();
            }
            case 11: {
                return this.createWaitPoint();
            }
            case 12: {
                return this.createSwcModeSwitchEvent();
            }
            case 13: {
                return this.createRTEEvent();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public BackgroundEvent createBackgroundEvent() {
        BackgroundEventImpl backgroundEvent = new BackgroundEventImpl();
        return backgroundEvent;
    }

    public DataWriteCompletedEvent createDataWriteCompletedEvent() {
        DataWriteCompletedEventImpl dataWriteCompletedEvent = new DataWriteCompletedEventImpl();
        return dataWriteCompletedEvent;
    }

    public ExternalTriggerOccurredEvent createExternalTriggerOccurredEvent() {
        ExternalTriggerOccurredEventImpl externalTriggerOccurredEvent = new ExternalTriggerOccurredEventImpl();
        return externalTriggerOccurredEvent;
    }

    public InternalTriggerOccurredEvent createInternalTriggerOccurredEvent() {
        InternalTriggerOccurredEventImpl internalTriggerOccurredEvent = new InternalTriggerOccurredEventImpl();
        return internalTriggerOccurredEvent;
    }

    public ModeSwitchedAckEvent createModeSwitchedAckEvent() {
        ModeSwitchedAckEventImpl modeSwitchedAckEvent = new ModeSwitchedAckEventImpl();
        return modeSwitchedAckEvent;
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

    public WaitPoint createWaitPoint() {
        WaitPointImpl waitPoint = new WaitPointImpl();
        return waitPoint;
    }

    public SwcModeSwitchEvent createSwcModeSwitchEvent() {
        SwcModeSwitchEventImpl swcModeSwitchEvent = new SwcModeSwitchEventImpl();
        return swcModeSwitchEvent;
    }

    public RTEEvent createRTEEvent() {
        RTEEventImpl rteEvent = new RTEEventImpl();
        return rteEvent;
    }

    public RteeventsPackage getRteeventsPackage() {
        return (RteeventsPackage)this.getEPackage();
    }

    @Deprecated
    public static RteeventsPackage getPackage() {
        return RteeventsPackage.eINSTANCE;
    }
}

