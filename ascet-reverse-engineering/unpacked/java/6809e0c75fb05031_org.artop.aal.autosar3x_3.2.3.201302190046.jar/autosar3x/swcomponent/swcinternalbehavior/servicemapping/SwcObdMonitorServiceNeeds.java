/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.swcomponent.swcinternalbehavior.servicemapping;

import autosar3x.commonstructure.serviceneeds.ObdMonitorServiceNeeds;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.RoleBasedPPortAssignment;

public interface SwcObdMonitorServiceNeeds
extends ObdMonitorServiceNeeds {
    public RoleBasedPPortAssignment getCallbackPort();

    public void setCallbackPort(RoleBasedPPortAssignment var1);
}

