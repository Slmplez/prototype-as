/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.swcomponent.swcinternalbehavior.rteevents;

import autosar3x.swcomponent.swcinternalbehavior.rteevents.AsynchronousServerCallReturnsEvent;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.DataReceiveErrorEvent;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.DataReceivedEvent;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.DataSendCompletedEvent;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.ModeSwitchEvent;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.ModeSwitchedAckEvent;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.OperationInvokedEvent;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.RteeventsPackage;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.TimingEvent;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.WaitPoint;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.impl.RteeventsFactoryImpl;
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

