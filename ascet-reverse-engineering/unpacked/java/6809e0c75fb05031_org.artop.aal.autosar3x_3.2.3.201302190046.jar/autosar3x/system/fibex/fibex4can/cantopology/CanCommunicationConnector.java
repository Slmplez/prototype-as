/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibex4can.cantopology;

import autosar3x.system.fibex.fibexcore.coretopology.CommunicationConnector;

public interface CanCommunicationConnector
extends CommunicationConnector {
    public Integer getPncWakeupCanId();

    public void setPncWakeupCanId(Integer var1);

    public void unsetPncWakeupCanId();

    public boolean isSetPncWakeupCanId();

    public Boolean getPncWakeupCanIdExtended();

    public void setPncWakeupCanIdExtended(Boolean var1);

    public void unsetPncWakeupCanIdExtended();

    public boolean isSetPncWakeupCanIdExtended();

    public Integer getPncWakeupCanIdMask();

    public void setPncWakeupCanIdMask(Integer var1);

    public void unsetPncWakeupCanIdMask();

    public boolean isSetPncWakeupCanIdMask();

    public Integer getPncWakeupDataMask();

    public void setPncWakeupDataMask(Integer var1);

    public void unsetPncWakeupDataMask();

    public boolean isSetPncWakeupDataMask();

    public Integer getPncWakeupDlc();

    public void setPncWakeupDlc(Integer var1);

    public void unsetPncWakeupDlc();

    public boolean isSetPncWakeupDlc();
}

