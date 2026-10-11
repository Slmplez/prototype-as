/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.swcomponent.datatype.datatypes;

import autosar3x.swcomponent.datatype.datatypes.ArrayType;
import autosar3x.swcomponent.datatype.datatypes.DataPrototype;

public interface ArrayElement
extends DataPrototype {
    public ArrayType getArrayType();

    public void setArrayType(ArrayType var1);

    public Integer getMaxNumberOfElements();

    public void setMaxNumberOfElements(Integer var1);

    public void unsetMaxNumberOfElements();

    public boolean isSetMaxNumberOfElements();
}

