/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.swcomponent.swcinternalbehavior.servicemapping;

import autosar3x.commonstructure.serviceneeds.ObdControlServiceNeeds;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.RoleBasedPPortAssignment;

public interface SwcObdControlServiceNeeds
extends ObdControlServiceNeeds {
    public RoleBasedPPortAssignment getCallbackPort();

    public void setCallbackPort(RoleBasedPPortAssignment var1);
}

