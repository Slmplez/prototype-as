/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScale
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 */
package autosar40.swcomponent.datatype.computationmethod;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguageOverviewParagraph;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.datatype.computationmethod.CompuConst;
import autosar40.swcomponent.datatype.computationmethod.CompuScaleContents;
import autosar40.swcomponent.datatype.computationmethod.CompuScales;
import autosar40.swcomponent.datatype.localconstraints.Limit;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScale;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;

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

    public MultiLanguageOverviewParagraph getDesc();

    public void setDesc(MultiLanguageOverviewParagraph var1);

    public Long getMask();

    public void setMask(Long var1);

    public void unsetMask();

    public boolean isSetMask();

    public Limit getLowerLimit();

    public void setLowerLimit(Limit var1);

    public Limit getUpperLimit();

    public void setUpperLimit(Limit var1);

    public CompuConst getCompuInverseValue();

    public void setCompuInverseValue(CompuConst var1);

    public CompuScaleContents getCompuScaleContents();

    public void setCompuScaleContents(CompuScaleContents var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);

    public PositiveIntegerDatatype getMaskData();

    public void setMaskData(PositiveIntegerDatatype var1);
}

