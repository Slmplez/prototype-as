/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.serviceneeds;

import autosar3x.commonstructure.serviceneeds.ServiceNeeds;

public interface SupervisedEntityNeeds
extends ServiceNeeds {
    public Boolean getActivateAtStart();

    public void setActivateAtStart(Boolean var1);

    public void unsetActivateAtStart();

    public boolean isSetActivateAtStart();

    public Boolean getEnableDeactivation();

    public void setEnableDeactivation(Boolean var1);

    public void unsetEnableDeactivation();

    public boolean isSetEnableDeactivation();

    public Double getExpectedAliveCycle();

    public void setExpectedAliveCycle(Double var1);

    public void unsetExpectedAliveCycle();

    public boolean isSetExpectedAliveCycle();

    public Double getMaxAliveCycle();

    public void setMaxAliveCycle(Double var1);

    public void unsetMaxAliveCycle();

    public boolean isSetMaxAliveCycle();

    public Double getMinAliveCycle();

    public void setMinAliveCycle(Double var1);

    public void unsetMinAliveCycle();

    public boolean isSetMinAliveCycle();

    public Integer getToleratedFailedCycles();

    public void setToleratedFailedCycles(Integer var1);

    public void unsetToleratedFailedCycles();

    public boolean isSetToleratedFailedCycles();
}

