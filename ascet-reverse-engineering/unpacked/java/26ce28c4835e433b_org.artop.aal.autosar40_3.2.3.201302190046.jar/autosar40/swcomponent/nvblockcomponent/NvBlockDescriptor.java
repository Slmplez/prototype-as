/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.swcomponent.nvblockcomponent;

import autosar40.commonstructure.constants.ConstantSpecificationMappingSet;
import autosar40.commonstructure.serviceneeds.NvBlockNeeds;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.components.NvBlockSwComponentType;
import autosar40.swcomponent.datatype.dataprototypes.ParameterDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import autosar40.swcomponent.datatype.datatypes.DataTypeMappingSet;
import autosar40.swcomponent.nvblockcomponent.NvBlockDataMapping;
import autosar40.swcomponent.swcinternalbehavior.instantiationdatadefprops.InstantiationDataDefProps;
import autosar40.swcomponent.swcinternalbehavior.servicemapping.RoleBasedPortAssignment;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface NvBlockDescriptor
extends Identifiable {
    public NvBlockSwComponentType getNvBlockSwComponentType();

    public void setNvBlockSwComponentType(NvBlockSwComponentType var1);

    public EList<RoleBasedPortAssignment> getClientServerPorts();

    public EList<ConstantSpecificationMappingSet> getConstantValueMappings();

    public EList<DataTypeMappingSet> getDataTypeMappings();

    public EList<InstantiationDataDefProps> getInstantiationDataDefProps();

    public EList<NvBlockDataMapping> getNvBlockDataMappings();

    public NvBlockNeeds getNvBlockNeeds();

    public void setNvBlockNeeds(NvBlockNeeds var1);

    public VariableDataPrototype getRamBlock();

    public void setRamBlock(VariableDataPrototype var1);

    public ParameterDataPrototype getRomBlock();

    public void setRomBlock(ParameterDataPrototype var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

