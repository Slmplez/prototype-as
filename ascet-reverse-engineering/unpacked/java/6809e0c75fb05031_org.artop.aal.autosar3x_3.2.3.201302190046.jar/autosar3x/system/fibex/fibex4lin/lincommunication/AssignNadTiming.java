/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibex4lin.lincommunication;

import autosar3x.system.fibex.fibex4lin.lincommunication.AssignmentTimingType;

public interface AssignNadTiming
extends AssignmentTimingType {
    public Integer getNewNad();

    public void setNewNad(Integer var1);

    public void unsetNewNad();

    public boolean isSetNewNad();
}

