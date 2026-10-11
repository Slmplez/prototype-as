/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationPrimitiveDataType
 */
package autosar3x.swcomponent.datatype.datatypes;

import autosar3x.commonstructure.datadefproperties.SwDataDefProps;
import autosar3x.swcomponent.datatype.datatypes.Datatype;
import gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationPrimitiveDataType;

public interface PrimitiveType
extends Datatype,
GApplicationPrimitiveDataType {
    public SwDataDefProps getSwDataDefProps();

    public void setSwDataDefProps(SwDataDefProps var1);
}

