/*
 * Decompiled with CFR 0.152.
 */
package autosar21.ecuresource.ecuelectronics;

import autosar21.ecuresource.ecuelectronics.CommunicationTransceiver;
import autosar21.genericstructure.infrastructure.ARObject;

public interface BusTermination
extends ARObject {
    public CommunicationTransceiver getCommunicationTransceiver();

    public void setCommunicationTransceiver(CommunicationTransceiver var1);

    public Boolean getActiveSwitchable();

    public void setActiveSwitchable(Boolean var1);

    public void unsetActiveSwitchable();

    public boolean isSetActiveSwitchable();

    public Boolean getChoke();

    public void setChoke(Boolean var1);

    public void unsetChoke();

    public boolean isSetChoke();

    public Boolean getEmcFilter();

    public void setEmcFilter(Boolean var1);

    public void unsetEmcFilter();

    public boolean isSetEmcFilter();

    public Boolean getSplit();

    public void setSplit(Boolean var1);

    public void unsetSplit();

    public boolean isSetSplit();

    public Integer getValue();

    public void setValue(Integer var1);

    public void unsetValue();

    public boolean isSetValue();
}

