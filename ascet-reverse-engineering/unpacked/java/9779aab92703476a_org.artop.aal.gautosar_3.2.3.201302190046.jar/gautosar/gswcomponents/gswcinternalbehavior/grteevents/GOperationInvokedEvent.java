/*
 * Decompiled with CFR 0.152.
 */
package gautosar.gswcomponents.gswcinternalbehavior.grteevents;

import gautosar.gswcomponents.gcomponents.ginstancerefs.GPOperationInAtomicSwcIRef;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GRTEEvent;

public interface GOperationInvokedEvent
extends GRTEEvent {
    public GPOperationInAtomicSwcIRef gGetOperation();

    public void gSetOperation(GPOperationInAtomicSwcIRef var1);
}

