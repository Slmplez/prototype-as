/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentProject;

import com.etas.amd620.core.ComponentProject.SchedulingType;
import com.etas.amd620.core.ComponentProject.TaskBaseT;
import java.math.BigInteger;

public interface TaskSwBaseT
extends TaskBaseT {
    public boolean isDeadline();

    public void setDeadline(boolean var1);

    public void unsetDeadline();

    public boolean isSetDeadline();

    public BigInteger getDeadlineValue();

    public void setDeadlineValue(BigInteger var1);

    public BigInteger getMaxNoActivations();

    public void setMaxNoActivations(BigInteger var1);

    public SchedulingType getScheduling();

    public void setScheduling(SchedulingType var1);

    public void unsetScheduling();

    public boolean isSetScheduling();
}

