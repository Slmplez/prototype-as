/*
 * Decompiled with CFR 0.152.
 */
package gautosar.gswcomponents.gswcinternalbehavior.grteevents;

import gautosar.gswcomponents.gcomponents.ginstancerefs.GRVariableInAtomicSwcIRef;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GRTEEvent;

public interface GDataReceiveErrorEvent
extends GRTEEvent {
    public GRVariableInAtomicSwcIRef gGetData();

    public void gSetData(GRVariableInAtomicSwcIRef var1);
}

