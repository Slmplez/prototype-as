/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibexcore.corecommunication;

import autosar3x.swcomponent.datatype.constants.ValueSpecification;
import autosar3x.swcomponent.datatype.datatypes.PrimitiveType;
import autosar3x.system.fibex.fibexcore.corecommunication.AbstractSignal;

public interface SystemSignal
extends AbstractSignal {
    public PrimitiveType getDataType();

    public void setDataType(PrimitiveType var1);

    public ValueSpecification getInitValue();

    public void setInitValue(ValueSpecification var1);

    public Integer getLength();

    public void setLength(Integer var1);

    public void unsetLength();

    public boolean isSetLength();
}

