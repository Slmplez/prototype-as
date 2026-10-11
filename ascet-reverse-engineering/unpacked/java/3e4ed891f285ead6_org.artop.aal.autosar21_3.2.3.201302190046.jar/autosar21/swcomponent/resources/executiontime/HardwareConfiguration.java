/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.resources.executiontime;

import autosar21.genericstructure.infrastructure.ARObject;

public interface HardwareConfiguration
extends ARObject {
    public String getAdditionalInformation();

    public void setAdditionalInformation(String var1);

    public void unsetAdditionalInformation();

    public boolean isSetAdditionalInformation();

    public String getProcessorMode();

    public void setProcessorMode(String var1);

    public void unsetProcessorMode();

    public boolean isSetProcessorMode();

    public String getProcessorSpeed();

    public void setProcessorSpeed(String var1);

    public void unsetProcessorSpeed();

    public boolean isSetProcessorSpeed();
}

