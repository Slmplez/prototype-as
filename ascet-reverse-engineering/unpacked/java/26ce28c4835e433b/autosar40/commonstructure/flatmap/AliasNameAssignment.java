/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.flatmap;

import autosar40.commonstructure.flatmap.AliasNameSet;
import autosar40.commonstructure.flatmap.FlatInstanceDescriptor;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultilanguageLongName;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;

public interface AliasNameAssignment
extends ARObject {
    public AliasNameSet getAliasNameSet();

    public void setAliasNameSet(AliasNameSet var1);

    public String getShortLabel();

    public void setShortLabel(String var1);

    public void unsetShortLabel();

    public boolean isSetShortLabel();

    public MultilanguageLongName getLabel();

    public void setLabel(MultilanguageLongName var1);

    public Identifiable getIdentifiable();

    public void setIdentifiable(Identifiable var1);

    public FlatInstanceDescriptor getFlatInstance();

    public void setFlatInstance(FlatInstanceDescriptor var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

