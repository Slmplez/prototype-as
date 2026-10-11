/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.fibex.fibex4lin.lintopology;

import autosar40.system.fibex.fibex4lin.lintopology.LinCommunicationControllerContent;

public interface LinMasterContent
extends LinCommunicationControllerContent {
    public Double getTimeBase();

    public void setTimeBase(Double var1);

    public void unsetTimeBase();

    public boolean isSetTimeBase();

    public Double getTimeBaseJitter();

    public void setTimeBaseJitter(Double var1);

    public void unsetTimeBaseJitter();

    public boolean isSetTimeBaseJitter();
}

