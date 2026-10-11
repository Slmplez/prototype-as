/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibexcore.corecommunication;

import autosar3x.system.fibex.fibexcore.corecommunication.Pdu;

public interface IPdu
extends Pdu {
    public Integer getLength();

    public void setLength(Integer var1);

    public void unsetLength();

    public boolean isSetLength();

    public Integer getUnusedBitPattern();

    public void setUnusedBitPattern(Integer var1);

    public void unsetUnusedBitPattern();

    public boolean isSetUnusedBitPattern();
}

