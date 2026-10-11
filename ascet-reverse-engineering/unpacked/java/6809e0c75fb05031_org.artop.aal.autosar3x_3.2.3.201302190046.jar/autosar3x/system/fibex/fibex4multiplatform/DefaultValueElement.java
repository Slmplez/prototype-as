/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibex4multiplatform;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.fibex.fibex4multiplatform.PduMappingDefaultValue;

public interface DefaultValueElement
extends ARObject {
    public PduMappingDefaultValue getPduMappingDefaultValue();

    public void setPduMappingDefaultValue(PduMappingDefaultValue var1);

    public Integer getElementByteValue();

    public void setElementByteValue(Integer var1);

    public void unsetElementByteValue();

    public boolean isSetElementByteValue();

    public Integer getElementPosition();

    public void setElementPosition(Integer var1);

    public void unsetElementPosition();

    public boolean isSetElementPosition();
}

