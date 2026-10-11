/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.gvarianthandling.GAttributeValueVariationPoint
 */
package autosar40.genericstructure.varianthandling;

import autosar40.genericstructure.varianthandling.BindingTimeEnum;
import autosar40.genericstructure.varianthandling.SwSystemconstDependentFormula;
import autosar40.swcomponent.swcinternalbehavior.varianthandling.VariationPointProxy;
import gautosar.ggenericstructure.gvarianthandling.GAttributeValueVariationPoint;

public interface AttributeValueVariationPoint
extends SwSystemconstDependentFormula,
GAttributeValueVariationPoint {
    public VariationPointProxy getVariationPointProxy();

    public void setVariationPointProxy(VariationPointProxy var1);

    public BindingTimeEnum getBindingTime();

    public void setBindingTime(BindingTimeEnum var1);

    public void unsetBindingTime();

    public boolean isSetBindingTime();

    public String getBlueprintValue();

    public void setBlueprintValue(String var1);

    public void unsetBlueprintValue();

    public boolean isSetBlueprintValue();

    public String getSd();

    public void setSd(String var1);

    public void unsetSd();

    public boolean isSetSd();

    public String getShortLabel();

    public void setShortLabel(String var1);

    public void unsetShortLabel();

    public boolean isSetShortLabel();
}

