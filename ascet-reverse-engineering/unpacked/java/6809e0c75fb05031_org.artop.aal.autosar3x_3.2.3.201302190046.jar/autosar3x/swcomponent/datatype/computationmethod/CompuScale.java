/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScale
 */
package autosar3x.swcomponent.datatype.computationmethod;

import autosar3x.genericstructure.commonpatterns.multilanguagedata.MlData2;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.datatype.computationmethod.CompuScaleContents;
import autosar3x.swcomponent.datatype.computationmethod.CompuScales;
import autosar3x.swcomponent.datatype.localconstraints.Limit;
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

    public String getSymbol();

    public void setSymbol(String var1);

    public void unsetSymbol();

    public boolean isSetSymbol();

    public MlData2 getDesc();

    public void setDesc(MlData2 var1);

    public Limit getLowerLimit();

    public void setLowerLimit(Limit var1);

    public Limit getUpperLimit();

    public void setUpperLimit(Limit var1);

    public CompuScaleContents getCompuScaleContentsType();

    public void setCompuScaleContentsType(CompuScaleContents var1);
}

