/*
 * Decompiled with CFR 0.152.
 */
package gautosar.gswcomponents.gswcinternalbehavior.grteevents;

import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GVariableAccess;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GRTEEvent;

public interface GDataSendCompletedEvent
extends GRTEEvent {
    public GVariableAccess gGetEventSource();

    public void gSetEventSource(GVariableAccess var1);
}

