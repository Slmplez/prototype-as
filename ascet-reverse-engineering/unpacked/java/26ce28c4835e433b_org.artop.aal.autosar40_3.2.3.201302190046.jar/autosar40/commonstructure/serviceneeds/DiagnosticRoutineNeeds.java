/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 */
package autosar40.commonstructure.serviceneeds;

import autosar40.commonstructure.serviceneeds.DiagnosticCapabilityElement;
import autosar40.commonstructure.serviceneeds.DiagnosticRoutineTypeEnum;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;

public interface DiagnosticRoutineNeeds
extends DiagnosticCapabilityElement {
    public DiagnosticRoutineTypeEnum getDiagRoutineType();

    public void setDiagRoutineType(DiagnosticRoutineTypeEnum var1);

    public void unsetDiagRoutineType();

    public boolean isSetDiagRoutineType();

    public Long getRidNumber();

    public void setRidNumber(Long var1);

    public void unsetRidNumber();

    public boolean isSetRidNumber();

    public PositiveIntegerDatatype getRidNumberData();

    public void setRidNumberData(PositiveIntegerDatatype var1);
}

