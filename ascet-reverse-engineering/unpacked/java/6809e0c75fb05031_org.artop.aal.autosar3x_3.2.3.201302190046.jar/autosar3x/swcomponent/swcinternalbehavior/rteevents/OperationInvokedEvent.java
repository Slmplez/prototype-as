/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GOperationInvokedEvent
 */
package autosar3x.swcomponent.swcinternalbehavior.rteevents;

import autosar3x.swcomponent.swcinternalbehavior.rteevents.RTEEvent;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.OperationInvokedEventOperation;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GOperationInvokedEvent;

public interface OperationInvokedEvent
extends RTEEvent,
GOperationInvokedEvent {
    public OperationInvokedEventOperation getOperation();

    public void setOperation(OperationInvokedEventOperation var1);
}

