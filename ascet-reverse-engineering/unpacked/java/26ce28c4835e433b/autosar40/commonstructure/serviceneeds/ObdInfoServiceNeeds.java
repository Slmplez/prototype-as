/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 */
package autosar40.commonstructure.serviceneeds;

import autosar40.commonstructure.serviceneeds.DiagnosticCapabilityElement;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;

public interface ObdInfoServiceNeeds
extends DiagnosticCapabilityElement {
    public Long getDataLength();

    public void setDataLength(Long var1);

    public void unsetDataLength();

    public boolean isSetDataLength();

    public Long getInfoType();

    public void setInfoType(Long var1);

    public void unsetInfoType();

    public boolean isSetInfoType();

    public PositiveIntegerDatatype getDataLengthData();

    public void setDataLengthData(PositiveIntegerDatatype var1);

    public PositiveIntegerDatatype getInfoTypeData();

    public void setInfoTypeData(PositiveIntegerDatatype var1);
}

