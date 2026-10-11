/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar40.swcomponent.datatype.datatypes.impl;

import autosar40.swcomponent.datatype.datatypes.ApplicationArrayDataType;
import autosar40.swcomponent.datatype.datatypes.ApplicationDataType;
import autosar40.swcomponent.datatype.datatypes.ApplicationPrimitiveDataType;
import autosar40.swcomponent.datatype.datatypes.ApplicationRecordDataType;
import autosar40.swcomponent.datatype.datatypes.AutosarDataType;
import autosar40.swcomponent.datatype.datatypes.DataTypeMap;
import autosar40.swcomponent.datatype.datatypes.DataTypeMappingSet;
import autosar40.swcomponent.datatype.datatypes.DatatypesFactory;
import autosar40.swcomponent.datatype.datatypes.DatatypesPackage;
import autosar40.swcomponent.datatype.datatypes.impl.ApplicationArrayDataTypeImpl;
import autosar40.swcomponent.datatype.datatypes.impl.ApplicationDataTypeImpl;
import autosar40.swcomponent.datatype.datatypes.impl.ApplicationPrimitiveDataTypeImpl;
import autosar40.swcomponent.datatype.datatypes.impl.ApplicationRecordDataTypeImpl;
import autosar40.swcomponent.datatype.datatypes.impl.AutosarDataTypeImpl;
import autosar40.swcomponent.datatype.datatypes.impl.DataTypeMapImpl;
import autosar40.swcomponent.datatype.datatypes.impl.DataTypeMappingSetImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class DatatypesFactoryImpl
extends EFactoryImpl
implements DatatypesFactory {
    public static DatatypesFactory init() {
        try {
            DatatypesFactory theDatatypesFactory = (DatatypesFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/swc/d/d");
            if (theDatatypesFactory != null) {
                return theDatatypesFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new DatatypesFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 1: {
                return this.createApplicationDataType();
            }
            case 2: {
                return this.createAutosarDataType();
            }
            case 3: {
                return this.createDataTypeMap();
            }
            case 4: {
                return this.createDataTypeMappingSet();
            }
            case 5: {
                return this.createApplicationPrimitiveDataType();
            }
            case 6: {
                return this.createApplicationArrayDataType();
            }
            case 7: {
                return this.createApplicationRecordDataType();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public ApplicationDataType createApplicationDataType() {
        ApplicationDataTypeImpl applicationDataType = new ApplicationDataTypeImpl();
        return applicationDataType;
    }

    public AutosarDataType createAutosarDataType() {
        AutosarDataTypeImpl autosarDataType = new AutosarDataTypeImpl();
        return autosarDataType;
    }

    public DataTypeMap createDataTypeMap() {
        DataTypeMapImpl dataTypeMap = new DataTypeMapImpl();
        return dataTypeMap;
    }

    public DataTypeMappingSet createDataTypeMappingSet() {
        DataTypeMappingSetImpl dataTypeMappingSet = new DataTypeMappingSetImpl();
        return dataTypeMappingSet;
    }

    public ApplicationPrimitiveDataType createApplicationPrimitiveDataType() {
        ApplicationPrimitiveDataTypeImpl applicationPrimitiveDataType = new ApplicationPrimitiveDataTypeImpl();
        return applicationPrimitiveDataType;
    }

    public ApplicationArrayDataType createApplicationArrayDataType() {
        ApplicationArrayDataTypeImpl applicationArrayDataType = new ApplicationArrayDataTypeImpl();
        return applicationArrayDataType;
    }

    public ApplicationRecordDataType createApplicationRecordDataType() {
        ApplicationRecordDataTypeImpl applicationRecordDataType = new ApplicationRecordDataTypeImpl();
        return applicationRecordDataType;
    }

    public DatatypesPackage getDatatypesPackage() {
        return (DatatypesPackage)this.getEPackage();
    }

    @Deprecated
    public static DatatypesPackage getPackage() {
        return DatatypesPackage.eINSTANCE;
    }
}

