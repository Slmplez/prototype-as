/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.serviceneeds;

import autosar3x.commonstructure.serviceneeds.ServiceNeeds;

public interface ObdControlServiceNeeds
extends ServiceNeeds {
    public Integer getTestId();

    public void setTestId(Integer var1);

    public void unsetTestId();

    public boolean isSetTestId();
}

