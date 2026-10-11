/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.swcbswmapping;

import autosar40.bswmodule.bswbehavior.BswModuleEntity;
import autosar40.commonstructure.swcbswmapping.SwcBswMapping;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.swcinternalbehavior.RunnableEntity;

public interface SwcBswRunnableMapping
extends ARObject {
    public SwcBswMapping getSwcBswMapping();

    public void setSwcBswMapping(SwcBswMapping var1);

    public BswModuleEntity getBswEntity();

    public void setBswEntity(BswModuleEntity var1);

    public RunnableEntity getSwcRunnable();

    public void setSwcRunnable(RunnableEntity var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

