/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.datadefproperties;

import autosar3x.commonstructure.datadefproperties.SwDataDefProps;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.datatype.valuemodel.Vf;

public interface SwTextProps
extends ARObject {
    public SwDataDefProps getSwDataDefProps();

    public void setSwDataDefProps(SwDataDefProps var1);

    public Vf getSwMaxTextSize();

    public void setSwMaxTextSize(Vf var1);

    public Integer getSwFillCharacter();

    public void setSwFillCharacter(Integer var1);

    public void unsetSwFillCharacter();

    public boolean isSetSwFillCharacter();
}

