/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.communication;

import autosar21.system.communication.ActiveCondition;
import autosar21.system.communication.Frame;
import autosar21.system.communication.Timing;

public interface RequestControlledTiming
extends Timing {
    public ActiveCondition getActiveCondition();

    public void setActiveCondition(ActiveCondition var1);

    public Frame getRequestingFrame();

    public void setRequestingFrame(Frame var1);

    public Double getResponseTime();

    public void setResponseTime(Double var1);

    public void unsetResponseTime();

    public boolean isSetResponseTime();
}

