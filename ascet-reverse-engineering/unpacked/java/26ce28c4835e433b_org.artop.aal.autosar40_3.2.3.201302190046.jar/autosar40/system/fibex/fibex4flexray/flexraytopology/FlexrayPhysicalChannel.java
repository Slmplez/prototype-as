/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.fibex.fibex4flexray.flexraytopology;

import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayChannelName;
import autosar40.system.fibex.fibexcore.coretopology.PhysicalChannel;

public interface FlexrayPhysicalChannel
extends PhysicalChannel {
    public FlexrayChannelName getChannelName();

    public void setChannelName(FlexrayChannelName var1);

    public void unsetChannelName();

    public boolean isSetChannelName();
}

