/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.swcomponent.swcinternalbehavior.servicemapping;

import autosar3x.commonstructure.serviceneeds.ObdRatioServiceNeeds;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.RoleBasedRPortAssignment;

public interface SwcObdRatioServiceNeeds
extends ObdRatioServiceNeeds {
    public RoleBasedRPortAssignment getServiceCallPort();

    public void setServiceCallPort(RoleBasedRPortAssignment var1);
}

