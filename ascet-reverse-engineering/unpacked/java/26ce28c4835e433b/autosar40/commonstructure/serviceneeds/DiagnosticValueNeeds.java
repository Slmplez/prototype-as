/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 */
package autosar40.commonstructure.serviceneeds;

import autosar40.commonstructure.serviceneeds.DiagnosticCapabilityElement;
import autosar40.commonstructure.serviceneeds.DiagnosticValueAccessEnum;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;

public interface DiagnosticValueNeeds
extends DiagnosticCapabilityElement {
    public Long getDataLength();

    public void setDataLength(Long var1);

    public void unsetDataLength();

    public boolean isSetDataLength();

    public DiagnosticValueAccessEnum getDiagnosticValueAccess();

    public void setDiagnosticValueAccess(DiagnosticValueAccessEnum var1);

    public void unsetDiagnosticValueAccess();

    public boolean isSetDiagnosticValueAccess();

    public Long getDidNumber();

    public void setDidNumber(Long var1);

    public void unsetDidNumber();

    public boolean isSetDidNumber();

    public PositiveIntegerDatatype getDataLengthData();

    public void setDataLengthData(PositiveIntegerDatatype var1);

    public PositiveIntegerDatatype getDidNumberData();

    public void setDidNumberData(PositiveIntegerDatatype var1);
}

