/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.pdustructure;

import autosar21.genericstructure.commonpatterns.enumerations.ByteOrderEnum;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.system.systemsignal.SystemSignal;

public interface SignalPosition
extends Identifiable {
    public ByteOrderEnum getPackingByteOrder();

    public void setPackingByteOrder(ByteOrderEnum var1);

    public void unsetPackingByteOrder();

    public boolean isSetPackingByteOrder();

    public Integer getStartPosition();

    public void setStartPosition(Integer var1);

    public void unsetStartPosition();

    public boolean isSetStartPosition();

    public SystemSignal getSystemSignal();

    public void setSystemSignal(SystemSignal var1);
}

