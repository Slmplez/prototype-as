/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucdescription.GConfigReferenceValue
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.ecucdescription;

import autosar40.ecucdescription.EcucContainerValue;
import autosar40.ecucdescription.EcucIndexableValue;
import autosar40.ecucparameterdef.EcucAbstractReferenceDef;
import autosar40.genericstructure.generaltemplateclasses.documentation.annotation.Annotation;
import autosar40.genericstructure.varianthandling.VariationPoint;
import gautosar.gecucdescription.GConfigReferenceValue;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EcucAbstractReferenceValue
extends EcucIndexableValue,
GConfigReferenceValue {
    public EcucContainerValue getEcucContainerValue();

    public void setEcucContainerValue(EcucContainerValue var1);

    public EcucAbstractReferenceDef getDefinition();

    public void setDefinition(EcucAbstractReferenceDef var1);

    public EList<Annotation> getAnnotations();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

