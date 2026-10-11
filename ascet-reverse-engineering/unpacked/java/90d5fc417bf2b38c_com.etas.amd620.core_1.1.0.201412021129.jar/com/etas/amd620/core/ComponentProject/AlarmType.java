/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentProject;

import com.etas.amd620.core.ComponentProject.TaskSwBaseT;

public interface AlarmType
extends TaskSwBaseT {
    public Object getDelay();

    public void setDelay(Object var1);

    public double getPeriod();

    public void setPeriod(double var1);

    public void unsetPeriod();

    public boolean isSetPeriod();

    public boolean isStartAlarm();

    public void setStartAlarm(boolean var1);

    public void unsetStartAlarm();

    public boolean isSetStartAlarm();
}

