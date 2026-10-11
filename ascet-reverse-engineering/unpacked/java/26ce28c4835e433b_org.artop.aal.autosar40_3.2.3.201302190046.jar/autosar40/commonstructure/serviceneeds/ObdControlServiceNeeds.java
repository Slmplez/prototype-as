/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 */
package autosar40.commonstructure.serviceneeds;

import autosar40.commonstructure.serviceneeds.DiagnosticCapabilityElement;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;

public interface ObdControlServiceNeeds
extends DiagnosticCapabilityElement {
    public Long getTestId();

    public void setTestId(Long var1);

    public void unsetTestId();

    public boolean isSetTestId();

    public PositiveIntegerDatatype getTestIdData();

    public void setTestIdData(PositiveIntegerDatatype var1);
}

