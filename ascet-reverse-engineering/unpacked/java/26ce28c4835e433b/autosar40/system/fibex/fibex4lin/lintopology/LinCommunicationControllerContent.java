/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.fibex.fibex4lin.lintopology;

import autosar40.system.fibex.fibexcore.coretopology.CommunicationControllerContent;

public interface LinCommunicationControllerContent
extends CommunicationControllerContent {
    public String getProtocolVersion();

    public void setProtocolVersion(String var1);

    public void unsetProtocolVersion();

    public boolean isSetProtocolVersion();
}

