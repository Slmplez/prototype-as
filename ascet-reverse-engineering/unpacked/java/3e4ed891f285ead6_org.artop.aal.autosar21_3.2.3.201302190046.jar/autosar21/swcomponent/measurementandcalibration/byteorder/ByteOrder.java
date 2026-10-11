/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.measurementandcalibration.byteorder;

import autosar21.genericstructure.commonpatterns.enumerations.ByteOrderEnum;
import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.measurementandcalibration.basetypes.BaseTypeDirectDefinition;

public interface ByteOrder
extends ARObject {
    public BaseTypeDirectDefinition getBaseTypeDirectDefinition();

    public void setBaseTypeDirectDefinition(BaseTypeDirectDefinition var1);

    public ByteOrderEnum getContent();

    public void setContent(ByteOrderEnum var1);

    public void unsetContent();

    public boolean isSetContent();
}

