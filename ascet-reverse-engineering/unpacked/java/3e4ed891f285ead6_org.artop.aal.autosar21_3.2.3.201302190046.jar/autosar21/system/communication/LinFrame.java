/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.communication;

import autosar21.system.communication.Frame;
import autosar21.system.pdustructure.SignalPosition;

public interface LinFrame
extends Frame {
    public SignalPosition getResponseErrorSignal();

    public void setResponseErrorSignal(SignalPosition var1);
}

