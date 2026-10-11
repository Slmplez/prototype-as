/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.byteorder;

import autosar3x.commonstructure.basetypes.BaseTypeDirectDefinition;
import autosar3x.genericstructure.commonpatterns.enumerations.ByteOrderEnum;
import autosar3x.genericstructure.infrastructure.ARObject;

public interface ByteOrder
extends ARObject {
    public BaseTypeDirectDefinition getBaseTypeDirectDefinition();

    public void setBaseTypeDirectDefinition(BaseTypeDirectDefinition var1);

    public ByteOrderEnum getContent();

    public void setContent(ByteOrderEnum var1);

    public void unsetContent();

    public boolean isSetContent();
}

