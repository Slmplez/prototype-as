/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GOperationInvokedEvent
 */
package autosar21.swcomponent.internalbehavior.rteevents;

import autosar21.swcomponent.internalbehavior.rteevents.RTEEvent;
import autosar21.swcomponent.internalbehavior.rteevents.instanceref.OperationInvokedEventOperation;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GOperationInvokedEvent;

public interface OperationInvokedEvent
extends RTEEvent,
GOperationInvokedEvent {
    public OperationInvokedEventOperation getOperation();

    public void setOperation(OperationInvokedEventOperation var1);
}

