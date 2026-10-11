/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.modedeclaration;

import autosar40.commonstructure.implementationdatatypes.ImplementationDataType;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroup;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.datatype.datatypes.DataTypeMappingSet;

public interface ModeRequestTypeMap
extends ARObject {
    public DataTypeMappingSet getDataTypeMappingSet();

    public void setDataTypeMappingSet(DataTypeMappingSet var1);

    public ImplementationDataType getImplementationDataType();

    public void setImplementationDataType(ImplementationDataType var1);

    public ModeDeclarationGroup getModeGroup();

    public void setModeGroup(ModeDeclarationGroup var1);
}

