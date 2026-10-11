/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GDataReceiveErrorEvent
 */
package autosar40.swcomponent.swcinternalbehavior.rteevents;

import autosar40.swcomponent.components.instancerefs.RVariableInAtomicSwcInstanceRef;
import autosar40.swcomponent.swcinternalbehavior.rteevents.RTEEvent;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GDataReceiveErrorEvent;

public interface DataReceiveErrorEvent
extends RTEEvent,
GDataReceiveErrorEvent {
    public RVariableInAtomicSwcInstanceRef getData();

    public void setData(RVariableInAtomicSwcInstanceRef var1);
}

