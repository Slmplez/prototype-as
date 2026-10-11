/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibex4multiplatform;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.fibex.fibex4multiplatform.Gateway;
import autosar3x.system.fibex.fibexcore.corecommunication.FrameTriggering;

public interface FrameMapping
extends ARObject {
    public Gateway getGateway();

    public void setGateway(Gateway var1);

    public FrameTriggering getSourceFrame();

    public void setSourceFrame(FrameTriggering var1);

    public FrameTriggering getTargetFrame();

    public void setTargetFrame(FrameTriggering var1);
}

