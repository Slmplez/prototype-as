/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucdescription.GContainer
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.ecucdescription;

import autosar3x.ecucdescription.ConfigReferenceValue;
import autosar3x.ecucdescription.ParameterValue;
import autosar3x.ecucparameterdef.ContainerDef;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import gautosar.gecucdescription.GContainer;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface Container
extends Identifiable,
GContainer {
    public ContainerDef getDefinition();

    public void setDefinition(ContainerDef var1);

    public EList<ParameterValue> getParameterValues();

    public EList<ConfigReferenceValue> getReferenceValues();

    public EList<Container> getSubContainers();
}

