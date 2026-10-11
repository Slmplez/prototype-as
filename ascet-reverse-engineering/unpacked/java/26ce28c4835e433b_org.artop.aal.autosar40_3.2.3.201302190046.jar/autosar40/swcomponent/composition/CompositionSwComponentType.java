/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomposition.GCompositionSwComponentType
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.swcomponent.composition;

import autosar40.commonstructure.constants.ConstantSpecificationMappingSet;
import autosar40.swcomponent.components.SwComponentType;
import autosar40.swcomponent.composition.SwComponentPrototype;
import autosar40.swcomponent.composition.SwConnector;
import autosar40.swcomponent.datatype.datatypes.DataTypeMappingSet;
import gautosar.gswcomponents.gcomposition.GCompositionSwComponentType;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface CompositionSwComponentType
extends SwComponentType,
GCompositionSwComponentType {
    public EList<SwComponentPrototype> getComponents();

    public EList<SwConnector> getConnectors();

    public EList<ConstantSpecificationMappingSet> getConstantValueMappings();

    public EList<DataTypeMappingSet> getDataTypeMappings();
}

