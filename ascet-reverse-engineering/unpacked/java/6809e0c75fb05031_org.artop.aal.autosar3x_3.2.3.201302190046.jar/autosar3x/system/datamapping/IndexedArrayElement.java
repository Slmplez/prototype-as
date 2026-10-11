/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.datamapping;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.datatype.datatypes.ArrayElement;

public interface IndexedArrayElement
extends ARObject {
    public ArrayElement getArrayElement();

    public void setArrayElement(ArrayElement var1);

    public Integer getIndex();

    public void setIndex(Integer var1);

    public void unsetIndex();

    public boolean isSetIndex();
}

