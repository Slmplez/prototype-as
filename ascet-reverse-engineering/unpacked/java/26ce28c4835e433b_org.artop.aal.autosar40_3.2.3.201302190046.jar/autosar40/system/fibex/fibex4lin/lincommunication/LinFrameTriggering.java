/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.system.fibex.fibex4lin.lincommunication;

import autosar40.system.fibex.fibex4lin.lincommunication.LinChecksumType;
import autosar40.system.fibex.fibexcore.corecommunication.FrameTriggering;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface LinFrameTriggering
extends FrameTriggering {
    public Integer getIdentifier();

    public void setIdentifier(Integer var1);

    public void unsetIdentifier();

    public boolean isSetIdentifier();

    public LinChecksumType getLinChecksum();

    public void setLinChecksum(LinChecksumType var1);

    public void unsetLinChecksum();

    public boolean isSetLinChecksum();

    public IntegerDatatype getIdentifierData();

    public void setIdentifierData(IntegerDatatype var1);
}

