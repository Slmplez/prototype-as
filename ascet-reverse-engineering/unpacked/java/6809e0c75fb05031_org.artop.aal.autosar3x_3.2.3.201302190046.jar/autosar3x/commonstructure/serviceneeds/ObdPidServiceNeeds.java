/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.serviceneeds;

import autosar3x.commonstructure.serviceneeds.ServiceNeeds;

public interface ObdPidServiceNeeds
extends ServiceNeeds {
    public Integer getDataLength();

    public void setDataLength(Integer var1);

    public void unsetDataLength();

    public boolean isSetDataLength();

    public Integer getParameterId();

    public void setParameterId(Integer var1);

    public void unsetParameterId();

    public boolean isSetParameterId();

    public String getStandard();

    public void setStandard(String var1);

    public void unsetStandard();

    public boolean isSetStandard();
}

