/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.networkmanagement;

import autosar40.system.networkmanagement.BusspecificNmEcu;

public interface UdpNmEcu
extends BusspecificNmEcu {
    public Boolean getNmRepeatMsgIndicationEnabled();

    public void setNmRepeatMsgIndicationEnabled(Boolean var1);

    public void unsetNmRepeatMsgIndicationEnabled();

    public boolean isSetNmRepeatMsgIndicationEnabled();

    public Boolean getNmSynchronizationPointEnabled();

    public void setNmSynchronizationPointEnabled(Boolean var1);

    public void unsetNmSynchronizationPointEnabled();

    public boolean isSetNmSynchronizationPointEnabled();
}

