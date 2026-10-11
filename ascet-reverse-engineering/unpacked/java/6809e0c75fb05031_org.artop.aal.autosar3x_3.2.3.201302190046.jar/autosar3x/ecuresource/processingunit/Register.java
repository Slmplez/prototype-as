/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.ecuresource.processingunit;

import autosar3x.ecuresource.processingunit.ProcessingUnit;
import autosar3x.ecuresource.processingunit.RegisterTypeEnum;
import autosar3x.genericstructure.infrastructure.ARObject;

public interface Register
extends ARObject {
    public ProcessingUnit getProcessingUnit();

    public void setProcessingUnit(ProcessingUnit var1);

    public Integer getCount();

    public void setCount(Integer var1);

    public void unsetCount();

    public boolean isSetCount();

    public RegisterTypeEnum getType();

    public void setType(RegisterTypeEnum var1);

    public void unsetType();

    public boolean isSetType();
}

