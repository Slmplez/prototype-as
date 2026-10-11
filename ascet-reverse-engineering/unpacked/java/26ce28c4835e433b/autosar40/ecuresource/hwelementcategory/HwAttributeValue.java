/*
 * Decompiled with CFR 0.152.
 */
package autosar40.ecuresource.hwelementcategory;

import autosar40.ecuresource.HwDescriptionEntity;
import autosar40.ecuresource.hwelementcategory.HwAttributeDef;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.annotation.Annotation;
import autosar40.genericstructure.varianthandling.NumericalValueVariationPoint;
import autosar40.genericstructure.varianthandling.VariationPoint;

public interface HwAttributeValue
extends ARObject {
    public HwDescriptionEntity getHwDescriptionEntity();

    public void setHwDescriptionEntity(HwDescriptionEntity var1);

    public Annotation getAnnotation();

    public void setAnnotation(Annotation var1);

    public HwAttributeDef getHwAttributeDef();

    public void setHwAttributeDef(HwAttributeDef var1);

    public NumericalValueVariationPoint getV();

    public void setV(NumericalValueVariationPoint var1);

    public String getVt();

    public void setVt(String var1);

    public void unsetVt();

    public boolean isSetVt();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

