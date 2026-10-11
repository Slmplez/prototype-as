/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationPrimitiveDataType
 */
package autosar21.swcomponent.datatype.datatypes;

import autosar21.swcomponent.datatype.datatypes.Datatype;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwDataDefProps;
import gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationPrimitiveDataType;

public interface PrimitiveType
extends Datatype,
GApplicationPrimitiveDataType {
    public SwDataDefProps getSwDataDefProps();

    public void setSwDataDefProps(SwDataDefProps var1);
}

