/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.ginternalbehavior.GInternalBehavior
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.commonstructure.internalbehavior;

import autosar40.commonstructure.constants.ConstantSpecificationMappingSet;
import autosar40.commonstructure.internalbehavior.ExclusiveArea;
import autosar40.genericstructure.abstractstructure.AtpStructureElement;
import autosar40.swcomponent.datatype.dataprototypes.ParameterDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import autosar40.swcomponent.datatype.datatypes.DataTypeMappingSet;
import gautosar.gcommonstructure.ginternalbehavior.GInternalBehavior;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface InternalBehavior
extends AtpStructureElement,
GInternalBehavior {
    public EList<ParameterDataPrototype> getConstantMemories();

    public EList<ConstantSpecificationMappingSet> getConstantValueMappings();

    public EList<DataTypeMappingSet> getDataTypeMappings();

    public EList<ExclusiveArea> getExclusiveAreas();

    public EList<VariableDataPrototype> getStaticMemories();
}

