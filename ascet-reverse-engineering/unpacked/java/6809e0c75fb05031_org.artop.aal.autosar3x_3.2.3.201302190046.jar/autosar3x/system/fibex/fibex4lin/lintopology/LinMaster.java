/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibex4lin.lintopology;

import autosar3x.system.fibex.fibex4lin.lintopology.LinCommunicationController;

public interface LinMaster
extends LinCommunicationController {
    public Double getTimeBase();

    public void setTimeBase(Double var1);

    public void unsetTimeBase();

    public boolean isSetTimeBase();

    public Double getTimeBaseJitter();

    public void setTimeBaseJitter(Double var1);

    public void unsetTimeBaseJitter();

    public boolean isSetTimeBaseJitter();
}

