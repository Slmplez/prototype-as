/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucdescription.GContainer
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.ecucdescription;

import autosar21.ecucdescription.ConfigReferenceValue;
import autosar21.ecucdescription.ParameterValue;
import autosar21.ecucparameterdef.ParamConfContainerDef;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import gautosar.gecucdescription.GContainer;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface Container
extends Identifiable,
GContainer {
    public ParamConfContainerDef getDefinition();

    public void setDefinition(ParamConfContainerDef var1);

    public EList<ParameterValue> getParameterValues();

    public EList<ConfigReferenceValue> getReferenceValues();

    public EList<Container> getSubContainers();
}

