/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.swcomponent.swcinternalbehavior.servicemapping;

import autosar3x.commonstructure.serviceneeds.ObdPidServiceNeeds;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.RoleBasedPPortAssignment;

public interface SwcObdPidServiceNeeds
extends ObdPidServiceNeeds {
    public RoleBasedPPortAssignment getCallbackPort();

    public void setCallbackPort(RoleBasedPPortAssignment var1);
}

