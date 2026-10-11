/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.swcomponent.swcinternalbehavior.rteevents;

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
import autosar40.swcomponent.swcinternalbehavior.rteevents.RteeventsPackage;
import autosar40.swcomponent.swcinternalbehavior.rteevents.SwcModeSwitchEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.TimingEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.WaitPoint;
import autosar40.swcomponent.swcinternalbehavior.rteevents.impl.RteeventsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface RteeventsFactory
extends EFactory {
    public static final RteeventsFactory eINSTANCE = RteeventsFactoryImpl.init();

    public BackgroundEvent createBackgroundEvent();

    public DataWriteCompletedEvent createDataWriteCompletedEvent();

    public ExternalTriggerOccurredEvent createExternalTriggerOccurredEvent();

    public InternalTriggerOccurredEvent createInternalTriggerOccurredEvent();

    public ModeSwitchedAckEvent createModeSwitchedAckEvent();

    public AsynchronousServerCallReturnsEvent createAsynchronousServerCallReturnsEvent();

    public DataSendCompletedEvent createDataSendCompletedEvent();

    public DataReceivedEvent createDataReceivedEvent();

    public DataReceiveErrorEvent createDataReceiveErrorEvent();

    public TimingEvent createTimingEvent();

    public OperationInvokedEvent createOperationInvokedEvent();

    public WaitPoint createWaitPoint();

    public SwcModeSwitchEvent createSwcModeSwitchEvent();

    public RteeventsPackage getRteeventsPackage();
}

