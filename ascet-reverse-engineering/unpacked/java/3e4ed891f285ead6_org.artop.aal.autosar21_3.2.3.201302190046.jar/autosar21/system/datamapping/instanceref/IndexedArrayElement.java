/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.datamapping.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.datatype.datatypes.ArrayElement;

public interface IndexedArrayElement
extends ARObject {
    public Integer getIndex();

    public void setIndex(Integer var1);

    public void unsetIndex();

    public boolean isSetIndex();

    public ArrayElement getArrayElement();

    public void setArrayElement(ArrayElement var1);
}

