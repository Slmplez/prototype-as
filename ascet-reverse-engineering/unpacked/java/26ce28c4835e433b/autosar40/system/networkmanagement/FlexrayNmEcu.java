/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.networkmanagement;

import autosar40.system.networkmanagement.BusspecificNmEcu;

public interface FlexrayNmEcu
extends BusspecificNmEcu {
    public Boolean getNmHwVoteEnabled();

    public void setNmHwVoteEnabled(Boolean var1);

    public void unsetNmHwVoteEnabled();

    public boolean isSetNmHwVoteEnabled();

    public Boolean getNmMainFunctionAcrossFrCycle();

    public void setNmMainFunctionAcrossFrCycle(Boolean var1);

    public void unsetNmMainFunctionAcrossFrCycle();

    public boolean isSetNmMainFunctionAcrossFrCycle();

    public Boolean getNmRepeatMessageBitEnable();

    public void setNmRepeatMessageBitEnable(Boolean var1);

    public void unsetNmRepeatMessageBitEnable();

    public boolean isSetNmRepeatMessageBitEnable();
}

