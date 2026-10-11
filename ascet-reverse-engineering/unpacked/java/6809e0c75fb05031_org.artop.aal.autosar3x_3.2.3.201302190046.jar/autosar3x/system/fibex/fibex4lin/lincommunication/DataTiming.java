/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibex4lin.lincommunication;

import autosar3x.system.fibex.fibex4lin.lincommunication.FreeFormat;
import autosar3x.system.fibex.fibex4lin.lincommunication.RelativelyScheduledTiming;

public interface DataTiming
extends RelativelyScheduledTiming {
    public FreeFormat getFreeFormat();

    public void setFreeFormat(FreeFormat var1);
}

