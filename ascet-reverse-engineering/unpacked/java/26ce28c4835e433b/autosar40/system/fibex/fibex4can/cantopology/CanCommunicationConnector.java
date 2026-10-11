/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 */
package autosar40.system.fibex.fibex4can.cantopology;

import autosar40.system.fibex.fibex4can.cantopology.AbstractCanCommunicationConnector;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;

public interface CanCommunicationConnector
extends AbstractCanCommunicationConnector {
    public Long getPncWakeupCanId();

    public void setPncWakeupCanId(Long var1);

    public void unsetPncWakeupCanId();

    public boolean isSetPncWakeupCanId();

    public Boolean getPncWakeupCanIdExtended();

    public void setPncWakeupCanIdExtended(Boolean var1);

    public void unsetPncWakeupCanIdExtended();

    public boolean isSetPncWakeupCanIdExtended();

    public Long getPncWakeupCanIdMask();

    public void setPncWakeupCanIdMask(Long var1);

    public void unsetPncWakeupCanIdMask();

    public boolean isSetPncWakeupCanIdMask();

    public Long getPncWakeupDataMask();

    public void setPncWakeupDataMask(Long var1);

    public void unsetPncWakeupDataMask();

    public boolean isSetPncWakeupDataMask();

    public Long getPncWakeupDlc();

    public void setPncWakeupDlc(Long var1);

    public void unsetPncWakeupDlc();

    public boolean isSetPncWakeupDlc();

    public PositiveIntegerDatatype getPncWakeupCanIdData();

    public void setPncWakeupCanIdData(PositiveIntegerDatatype var1);

    public PositiveIntegerDatatype getPncWakeupCanIdMaskData();

    public void setPncWakeupCanIdMaskData(PositiveIntegerDatatype var1);

    public PositiveIntegerDatatype getPncWakeupDataMaskData();

    public void setPncWakeupDataMaskData(PositiveIntegerDatatype var1);

    public PositiveIntegerDatatype getPncWakeupDlcData();

    public void setPncWakeupDlcData(PositiveIntegerDatatype var1);
}

