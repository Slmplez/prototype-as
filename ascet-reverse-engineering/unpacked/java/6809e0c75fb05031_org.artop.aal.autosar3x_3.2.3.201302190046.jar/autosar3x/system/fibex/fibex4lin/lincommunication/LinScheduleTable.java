/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibex4lin.lincommunication;

import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.system.fibex.fibex4lin.lincommunication.RunMode;
import autosar3x.system.fibex.fibex4lin.lintopology.LinCluster;

public interface LinScheduleTable
extends Identifiable {
    public LinCluster getLinCluster();

    public void setLinCluster(LinCluster var1);

    public Integer getPriority();

    public void setPriority(Integer var1);

    public void unsetPriority();

    public boolean isSetPriority();

    public RunMode getRunMode();

    public void setRunMode(RunMode var1);

    public void unsetRunMode();

    public boolean isSetRunMode();
}

