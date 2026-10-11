/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GAutosarDataPrototype
 */
package autosar40.swcomponent.datatype.dataprototypes;

import autosar40.swcomponent.datatype.dataprototypes.DataPrototype;
import autosar40.swcomponent.datatype.datatypes.AutosarDataType;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GAutosarDataPrototype;

public interface AutosarDataPrototype
extends DataPrototype,
GAutosarDataPrototype {
    public AutosarDataType getType();

    public void setType(AutosarDataType var1);
}

