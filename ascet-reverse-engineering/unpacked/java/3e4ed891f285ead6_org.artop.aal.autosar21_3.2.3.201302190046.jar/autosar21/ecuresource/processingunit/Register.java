/*
 * Decompiled with CFR 0.152.
 */
package autosar21.ecuresource.processingunit;

import autosar21.ecuresource.processingunit.ProcessingUnit;
import autosar21.ecuresource.processingunit.RegisterTypeEnum;
import autosar21.genericstructure.infrastructure.ARObject;

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

