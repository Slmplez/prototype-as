/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 */
package autosar40.commonstructure.serviceneeds;

import autosar40.commonstructure.serviceneeds.DiagnosticCapabilityElement;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;

public interface ObdPidServiceNeeds
extends DiagnosticCapabilityElement {
    public Long getDataLength();

    public void setDataLength(Long var1);

    public void unsetDataLength();

    public boolean isSetDataLength();

    public Long getParameterId();

    public void setParameterId(Long var1);

    public void unsetParameterId();

    public boolean isSetParameterId();

    public String getStandard();

    public void setStandard(String var1);

    public void unsetStandard();

    public boolean isSetStandard();

    public PositiveIntegerDatatype getDataLengthData();

    public void setDataLengthData(PositiveIntegerDatatype var1);

    public PositiveIntegerDatatype getParameterIdData();

    public void setParameterIdData(PositiveIntegerDatatype var1);
}

