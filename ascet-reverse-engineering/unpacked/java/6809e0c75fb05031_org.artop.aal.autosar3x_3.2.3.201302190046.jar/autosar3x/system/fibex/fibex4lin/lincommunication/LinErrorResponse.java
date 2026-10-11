/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibex4lin.lincommunication;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.fibex.fibex4lin.lincommunication.LinFrameTriggering;
import autosar3x.system.fibex.fibex4lin.lintopology.LinSlave;

public interface LinErrorResponse
extends ARObject {
    public LinSlave getLinSlave();

    public void setLinSlave(LinSlave var1);

    public LinFrameTriggering getFrameTriggering();

    public void setFrameTriggering(LinFrameTriggering var1);

    public Integer getResponseErrorPosition();

    public void setResponseErrorPosition(Integer var1);

    public void unsetResponseErrorPosition();

    public boolean isSetResponseErrorPosition();
}

