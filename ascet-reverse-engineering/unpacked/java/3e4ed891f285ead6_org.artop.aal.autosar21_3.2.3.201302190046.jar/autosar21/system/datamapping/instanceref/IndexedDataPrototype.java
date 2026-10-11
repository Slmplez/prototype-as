/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.datamapping.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.datatype.datatypes.DataPrototype;

public interface IndexedDataPrototype
extends ARObject {
    public Integer getIndex();

    public void setIndex(Integer var1);

    public void unsetIndex();

    public boolean isSetIndex();

    public DataPrototype getNestingDataPrototype();

    public void setNestingDataPrototype(DataPrototype var1);
}

