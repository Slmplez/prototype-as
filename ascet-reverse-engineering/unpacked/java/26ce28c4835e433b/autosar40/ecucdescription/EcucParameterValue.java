/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucdescription.GParameterValue
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.ecucdescription;

import autosar40.ecucdescription.EcucContainerValue;
import autosar40.ecucdescription.EcucIndexableValue;
import autosar40.ecucparameterdef.EcucParameterDef;
import autosar40.genericstructure.generaltemplateclasses.documentation.annotation.Annotation;
import autosar40.genericstructure.varianthandling.VariationPoint;
import gautosar.gecucdescription.GParameterValue;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EcucParameterValue
extends EcucIndexableValue,
GParameterValue {
    public EcucContainerValue getEcucContainerValue();

    public void setEcucContainerValue(EcucContainerValue var1);

    public EcucParameterDef getDefinition();

    public void setDefinition(EcucParameterDef var1);

    public EList<Annotation> getAnnotations();

    public Boolean getIsAutoValue();

    public void setIsAutoValue(Boolean var1);

    public void unsetIsAutoValue();

    public boolean isSetIsAutoValue();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

