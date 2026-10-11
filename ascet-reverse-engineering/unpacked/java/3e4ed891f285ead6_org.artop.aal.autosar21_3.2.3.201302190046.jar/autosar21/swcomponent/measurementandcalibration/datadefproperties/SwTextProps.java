/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.measurementandcalibration.datadefproperties;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.datatype.valuemodel.Vf;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwDataDefProps;

public interface SwTextProps
extends ARObject {
    public SwDataDefProps getSwDataDefProps();

    public void setSwDataDefProps(SwDataDefProps var1);

    public Vf getSwMaxTextSize();

    public void setSwMaxTextSize(Vf var1);

    public String getSwFillCharacter();

    public void setSwFillCharacter(String var1);

    public void unsetSwFillCharacter();

    public boolean isSetSwFillCharacter();
}

