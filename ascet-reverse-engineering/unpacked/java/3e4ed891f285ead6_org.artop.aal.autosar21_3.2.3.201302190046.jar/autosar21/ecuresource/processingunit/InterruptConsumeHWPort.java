/*
 * Decompiled with CFR 0.152.
 */
package autosar21.ecuresource.processingunit;

import autosar21.ecuresource.processingunit.InterruptHWPort;

public interface InterruptConsumeHWPort
extends InterruptHWPort {
    public String getActivationSource();

    public void setActivationSource(String var1);

    public void unsetActivationSource();

    public boolean isSetActivationSource();

    public Double getLatency();

    public void setLatency(Double var1);

    public void unsetLatency();

    public boolean isSetLatency();

    public Boolean getMaskable();

    public void setMaskable(Boolean var1);

    public void unsetMaskable();

    public boolean isSetMaskable();

    public Integer getPriority();

    public void setPriority(Integer var1);

    public void unsetPriority();

    public boolean isSetPriority();
}

