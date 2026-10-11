/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gdatadefproperties.GSwDataDefPropsConditional
 */
package autosar40.commonstructure.datadefproperties;

import autosar40.commonstructure.datadefproperties.SwDataDefProps;
import autosar40.commonstructure.datadefproperties.SwDataDefPropsContent;
import autosar40.genericstructure.varianthandling.VariationPoint;
import gautosar.gcommonstructure.gdatadefproperties.GSwDataDefPropsConditional;

public interface SwDataDefPropsConditional
extends SwDataDefPropsContent,
GSwDataDefPropsConditional {
    public SwDataDefProps getSwDataDefProps();

    public void setSwDataDefProps(SwDataDefProps var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

