/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentProject;

import com.etas.amd620.core.ComponentProject.TaskBaseT;
import java.math.BigInteger;

public interface InterruptType
extends TaskBaseT {
    public BigInteger getEventId();

    public void setEventId(BigInteger var1);

    public String getIsrSource();

    public void setIsrSource(String var1);

    public BigInteger getMaxPrio();

    public void setMaxPrio(BigInteger var1);

    public boolean isMinimumPeriod();

    public void setMinimumPeriod(boolean var1);

    public void unsetMinimumPeriod();

    public boolean isSetMinimumPeriod();

    public double getMinimumPeriodValue();

    public void setMinimumPeriodValue(double var1);

    public void unsetMinimumPeriodValue();

    public boolean isSetMinimumPeriodValue();

    public BigInteger getMinPrio();

    public void setMinPrio(BigInteger var1);
}

