/*
 * Decompiled with CFR 0.152.
 */
package autosar40.swcomponent.datatype.datatypes;

import autosar40.commonstructure.implementationdatatypes.ImplementationDataType;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.datatype.datatypes.ApplicationDataType;
import autosar40.swcomponent.datatype.datatypes.DataTypeMappingSet;

public interface DataTypeMap
extends ARObject {
    public DataTypeMappingSet getDataTypeMappingSet();

    public void setDataTypeMappingSet(DataTypeMappingSet var1);

    public ApplicationDataType getApplicationDataType();

    public void setApplicationDataType(ApplicationDataType var1);

    public ImplementationDataType getImplementationDataType();

    public void setImplementationDataType(ImplementationDataType var1);
}

