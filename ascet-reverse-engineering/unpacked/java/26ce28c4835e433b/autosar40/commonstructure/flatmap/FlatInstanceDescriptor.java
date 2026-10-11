/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.flatmap;

import autosar40.commonstructure.datadefproperties.SwDataDefProps;
import autosar40.commonstructure.flatmap.FlatMap;
import autosar40.genericstructure.generaltemplateclasses.anyinstanceref.AnyInstanceRef;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;

public interface FlatInstanceDescriptor
extends Identifiable {
    public FlatMap getFlatMap();

    public void setFlatMap(FlatMap var1);

    public String getRole();

    public void setRole(String var1);

    public void unsetRole();

    public boolean isSetRole();

    public SwDataDefProps getSwDataDefProps();

    public void setSwDataDefProps(SwDataDefProps var1);

    public AnyInstanceRef getUpstreamReference();

    public void setUpstreamReference(AnyInstanceRef var1);

    public AnyInstanceRef getEcuExtractReference();

    public void setEcuExtractReference(AnyInstanceRef var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

