/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.internalbehavior.rteevents;

import autosar21.swcomponent.internalbehavior.rteevents.AsynchronousServerCallReturnsEvent;
import autosar21.swcomponent.internalbehavior.rteevents.DataReceiveErrorEvent;
import autosar21.swcomponent.internalbehavior.rteevents.DataReceivedEvent;
import autosar21.swcomponent.internalbehavior.rteevents.DataSendCompletedEvent;
import autosar21.swcomponent.internalbehavior.rteevents.ModeSwitchEvent;
import autosar21.swcomponent.internalbehavior.rteevents.ModeSwitchedAckEvent;
import autosar21.swcomponent.internalbehavior.rteevents.OperationInvokedEvent;
import autosar21.swcomponent.internalbehavior.rteevents.RteeventsPackage;
import autosar21.swcomponent.internalbehavior.rteevents.TimingEvent;
import autosar21.swcomponent.internalbehavior.rteevents.WaitPoint;
import autosar21.swcomponent.internalbehavior.rteevents.impl.RteeventsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface RteeventsFactory
extends EFactory {
    public static final RteeventsFactory eINSTANCE = RteeventsFactoryImpl.init();

    public ModeSwitchedAckEvent createModeSwitchedAckEvent();

    public AsynchronousServerCallReturnsEvent createAsynchronousServerCallReturnsEvent();

    public DataSendCompletedEvent createDataSendCompletedEvent();

    public DataReceivedEvent createDataReceivedEvent();

    public DataReceiveErrorEvent createDataReceiveErrorEvent();

    public TimingEvent createTimingEvent();

    public OperationInvokedEvent createOperationInvokedEvent();

    public ModeSwitchEvent createModeSwitchEvent();

    public WaitPoint createWaitPoint();

    public RteeventsPackage getRteeventsPackage();
}

