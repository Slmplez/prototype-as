/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibex4lin.lintopology;

import autosar3x.system.fibex.fibex4lin.lincommunication.LinErrorResponse;
import autosar3x.system.fibex.fibex4lin.lintopology.LinCommunicationController;

public interface LinSlave
extends LinCommunicationController {
    public Integer getConfiguredNad();

    public void setConfiguredNad(Integer var1);

    public void unsetConfiguredNad();

    public boolean isSetConfiguredNad();

    public LinErrorResponse getLinErrorResponse();

    public void setLinErrorResponse(LinErrorResponse var1);

    public String getProtocolVersion();

    public void setProtocolVersion(String var1);

    public void unsetProtocolVersion();

    public boolean isSetProtocolVersion();
}

