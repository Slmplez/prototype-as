/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScale
 */
package autosar21.swcomponent.datatype.computationmethod;

import autosar21.genericstructure.commonpatterns.multilanguagedata.MlData2;
import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.datatype.computationmethod.CompuScaleContents;
import autosar21.swcomponent.datatype.computationmethod.CompuScales;
import autosar21.swcomponent.datatype.localconstraints.Limit;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScale;

public interface CompuScale
extends ARObject,
GCompuScale {
    public CompuScales getCompuScales();

    public void setCompuScales(CompuScales var1);

    public String getShortLabel();

    public void setShortLabel(String var1);

    public void unsetShortLabel();

    public boolean isSetShortLabel();

    public MlData2 getDesc();

    public void setDesc(MlData2 var1);

    public Limit getLowerLimit();

    public void setLowerLimit(Limit var1);

    public Limit getUpperLimit();

    public void setUpperLimit(Limit var1);

    public CompuScaleContents getCompuScaleContentsType();

    public void setCompuScaleContentsType(CompuScaleContents var1);
}

