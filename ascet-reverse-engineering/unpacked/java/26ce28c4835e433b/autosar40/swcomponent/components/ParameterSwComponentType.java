/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.swcomponent.components;

import autosar40.commonstructure.constants.ConstantSpecificationMappingSet;
import autosar40.swcomponent.components.SwComponentType;
import autosar40.swcomponent.datatype.datatypes.DataTypeMappingSet;
import autosar40.swcomponent.swcinternalbehavior.instantiationdatadefprops.InstantiationDataDefProps;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ParameterSwComponentType
extends SwComponentType {
    public EList<ConstantSpecificationMappingSet> getConstantMappings();

    public EList<DataTypeMappingSet> getDataTypeMappings();

    public EList<InstantiationDataDefProps> getInstantiationDataDefProps();
}

