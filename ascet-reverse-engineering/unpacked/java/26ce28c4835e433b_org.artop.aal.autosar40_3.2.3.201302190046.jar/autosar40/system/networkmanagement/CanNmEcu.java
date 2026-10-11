/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.networkmanagement;

import autosar40.system.networkmanagement.BusspecificNmEcu;

public interface CanNmEcu
extends BusspecificNmEcu {
    public Boolean getNmRepeatMsgIndicationEnabled();

    public void setNmRepeatMsgIndicationEnabled(Boolean var1);

    public void unsetNmRepeatMsgIndicationEnabled();

    public boolean isSetNmRepeatMsgIndicationEnabled();
}

