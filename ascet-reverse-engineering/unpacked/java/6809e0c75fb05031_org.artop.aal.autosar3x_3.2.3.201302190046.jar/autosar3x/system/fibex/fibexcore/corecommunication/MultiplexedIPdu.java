/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibexcore.corecommunication;

import autosar3x.genericstructure.commonpatterns.enumerations.ByteOrderEnum;
import autosar3x.system.fibex.fibexcore.corecommunication.DynamicPart;
import autosar3x.system.fibex.fibexcore.corecommunication.IPdu;
import autosar3x.system.fibex.fibexcore.corecommunication.StaticPart;
import autosar3x.system.fibex.fibexcore.corecommunication.TriggerMode;

public interface MultiplexedIPdu
extends IPdu {
    public DynamicPart getDynamicPart();

    public void setDynamicPart(DynamicPart var1);

    public ByteOrderEnum getSelectorFieldByteOrder();

    public void setSelectorFieldByteOrder(ByteOrderEnum var1);

    public void unsetSelectorFieldByteOrder();

    public boolean isSetSelectorFieldByteOrder();

    public Integer getSelectorFieldLength();

    public void setSelectorFieldLength(Integer var1);

    public void unsetSelectorFieldLength();

    public boolean isSetSelectorFieldLength();

    public Integer getSelectorFieldStartPosition();

    public void setSelectorFieldStartPosition(Integer var1);

    public void unsetSelectorFieldStartPosition();

    public boolean isSetSelectorFieldStartPosition();

    public StaticPart getStaticPart();

    public void setStaticPart(StaticPart var1);

    public TriggerMode getTriggerMode();

    public void setTriggerMode(TriggerMode var1);

    public void unsetTriggerMode();

    public boolean isSetTriggerMode();
}

