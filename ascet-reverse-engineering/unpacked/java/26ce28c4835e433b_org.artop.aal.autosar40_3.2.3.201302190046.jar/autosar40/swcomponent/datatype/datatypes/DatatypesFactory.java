/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.swcomponent.datatype.datatypes;

import autosar40.swcomponent.datatype.datatypes.ApplicationArrayDataType;
import autosar40.swcomponent.datatype.datatypes.ApplicationPrimitiveDataType;
import autosar40.swcomponent.datatype.datatypes.ApplicationRecordDataType;
import autosar40.swcomponent.datatype.datatypes.DataTypeMap;
import autosar40.swcomponent.datatype.datatypes.DataTypeMappingSet;
import autosar40.swcomponent.datatype.datatypes.DatatypesPackage;
import autosar40.swcomponent.datatype.datatypes.impl.DatatypesFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface DatatypesFactory
extends EFactory {
    public static final DatatypesFactory eINSTANCE = DatatypesFactoryImpl.init();

    public DataTypeMap createDataTypeMap();

    public DataTypeMappingSet createDataTypeMappingSet();

    public ApplicationPrimitiveDataType createApplicationPrimitiveDataType();

    public ApplicationArrayDataType createApplicationArrayDataType();

    public ApplicationRecordDataType createApplicationRecordDataType();

    public DatatypesPackage getDatatypesPackage();
}

