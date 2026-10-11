/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GDataPrototype
 */
package autosar40.swcomponent.datatype.dataprototypes;

import autosar40.commonstructure.datadefproperties.SwDataDefProps;
import autosar40.genericstructure.abstractstructure.AtpPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GDataPrototype;

public interface DataPrototype
extends AtpPrototype,
GDataPrototype {
    public SwDataDefProps getSwDataDefProps();

    public void setSwDataDefProps(SwDataDefProps var1);
}

