/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.serviceneeds;

import autosar3x.commonstructure.serviceneeds.ServiceNeeds;

public interface ObdInfoServiceNeeds
extends ServiceNeeds {
    public Integer getDataLength();

    public void setDataLength(Integer var1);

    public void unsetDataLength();

    public boolean isSetDataLength();

    public Integer getInfoType();

    public void setInfoType(Integer var1);

    public void unsetInfoType();

    public boolean isSetInfoType();
}

