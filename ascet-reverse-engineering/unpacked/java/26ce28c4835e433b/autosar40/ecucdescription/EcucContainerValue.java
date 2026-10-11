/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucdescription.GContainer
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.ecucdescription;

import autosar40.ecucdescription.EcucAbstractReferenceValue;
import autosar40.ecucdescription.EcucParameterValue;
import autosar40.ecucparameterdef.EcucContainerDef;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import gautosar.gecucdescription.GContainer;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EcucContainerValue
extends Identifiable,
GContainer {
    public EcucContainerDef getDefinition();

    public void setDefinition(EcucContainerDef var1);

    public EList<EcucParameterValue> getParameterValues();

    public EList<EcucAbstractReferenceValue> getReferenceValues();

    public EList<EcucContainerValue> getSubContainers();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

