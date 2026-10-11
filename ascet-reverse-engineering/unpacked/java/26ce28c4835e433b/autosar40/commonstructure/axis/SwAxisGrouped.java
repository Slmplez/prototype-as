/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.axis;

import autosar40.commonstructure.calibrationparameter.SwCalprmAxisTypeProps;
import autosar40.commonstructure.datadictionaryproxies.SwCalprmRefProxy;
import autosar40.swcomponent.datatype.datatypes.ApplicationPrimitiveDataType;

public interface SwAxisGrouped
extends SwCalprmAxisTypeProps {
    public ApplicationPrimitiveDataType getSharedAxisType();

    public void setSharedAxisType(ApplicationPrimitiveDataType var1);

    public String getSwAxisIndex();

    public void setSwAxisIndex(String var1);

    public void unsetSwAxisIndex();

    public boolean isSetSwAxisIndex();

    public SwCalprmRefProxy getSwCalprmRef();

    public void setSwCalprmRef(SwCalprmRefProxy var1);
}

