/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationRecordElement
 */
package autosar21.swcomponent.datatype.datatypes;

import autosar21.swcomponent.datatype.datatypes.DataPrototype;
import autosar21.swcomponent.datatype.datatypes.RecordType;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationRecordElement;

public interface RecordElement
extends DataPrototype,
GApplicationRecordElement {
    public RecordType getRecordType();

    public void setRecordType(RecordType var1);
}

