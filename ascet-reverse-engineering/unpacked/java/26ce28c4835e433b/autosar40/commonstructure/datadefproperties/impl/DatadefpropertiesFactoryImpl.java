/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar40.commonstructure.datadefproperties.impl;

import autosar40.commonstructure.datadefproperties.DatadefpropertiesFactory;
import autosar40.commonstructure.datadefproperties.DatadefpropertiesPackage;
import autosar40.commonstructure.datadefproperties.SwBitRepresentation;
import autosar40.commonstructure.datadefproperties.SwCalibrationAccessEnum;
import autosar40.commonstructure.datadefproperties.SwDataDefProps;
import autosar40.commonstructure.datadefproperties.SwDataDefPropsConditional;
import autosar40.commonstructure.datadefproperties.SwDataDependency;
import autosar40.commonstructure.datadefproperties.SwDataDependencyArgs;
import autosar40.commonstructure.datadefproperties.SwImplPolicyEnum;
import autosar40.commonstructure.datadefproperties.SwPointerTargetProps;
import autosar40.commonstructure.datadefproperties.SwTextProps;
import autosar40.commonstructure.datadefproperties.SwVariableAccessImplPolicyEnum;
import autosar40.commonstructure.datadefproperties.ValueList;
import autosar40.commonstructure.datadefproperties.impl.SwBitRepresentationImpl;
import autosar40.commonstructure.datadefproperties.impl.SwDataDefPropsConditionalImpl;
import autosar40.commonstructure.datadefproperties.impl.SwDataDefPropsImpl;
import autosar40.commonstructure.datadefproperties.impl.SwDataDependencyArgsImpl;
import autosar40.commonstructure.datadefproperties.impl.SwDataDependencyImpl;
import autosar40.commonstructure.datadefproperties.impl.SwPointerTargetPropsImpl;
import autosar40.commonstructure.datadefproperties.impl.SwTextPropsImpl;
import autosar40.commonstructure.datadefproperties.impl.ValueListImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class DatadefpropertiesFactoryImpl
extends EFactoryImpl
implements DatadefpropertiesFactory {
    public static DatadefpropertiesFactory init() {
        try {
            DatadefpropertiesFactory theDatadefpropertiesFactory = (DatadefpropertiesFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/ddp");
            if (theDatadefpropertiesFactory != null) {
                return theDatadefpropertiesFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new DatadefpropertiesFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createValueList();
            }
            case 1: {
                return this.createSwBitRepresentation();
            }
            case 2: {
                return this.createSwDataDependency();
            }
            case 3: {
                return this.createSwDataDependencyArgs();
            }
            case 4: {
                return this.createSwPointerTargetProps();
            }
            case 5: {
                return this.createSwTextProps();
            }
            case 7: {
                return this.createSwDataDefPropsConditional();
            }
            case 8: {
                return this.createSwDataDefProps();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 9: {
                return this.createSwCalibrationAccessEnumFromString(eDataType, initialValue);
            }
            case 10: {
                return this.createSwImplPolicyEnumFromString(eDataType, initialValue);
            }
            case 11: {
                return this.createSwVariableAccessImplPolicyEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 9: {
                return this.convertSwCalibrationAccessEnumToString(eDataType, instanceValue);
            }
            case 10: {
                return this.convertSwImplPolicyEnumToString(eDataType, instanceValue);
            }
            case 11: {
                return this.convertSwVariableAccessImplPolicyEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public ValueList createValueList() {
        ValueListImpl valueList = new ValueListImpl();
        return valueList;
    }

    public SwBitRepresentation createSwBitRepresentation() {
        SwBitRepresentationImpl swBitRepresentation = new SwBitRepresentationImpl();
        return swBitRepresentation;
    }

    public SwDataDependency createSwDataDependency() {
        SwDataDependencyImpl swDataDependency = new SwDataDependencyImpl();
        return swDataDependency;
    }

    public SwDataDependencyArgs createSwDataDependencyArgs() {
        SwDataDependencyArgsImpl swDataDependencyArgs = new SwDataDependencyArgsImpl();
        return swDataDependencyArgs;
    }

    public SwPointerTargetProps createSwPointerTargetProps() {
        SwPointerTargetPropsImpl swPointerTargetProps = new SwPointerTargetPropsImpl();
        return swPointerTargetProps;
    }

    public SwTextProps createSwTextProps() {
        SwTextPropsImpl swTextProps = new SwTextPropsImpl();
        return swTextProps;
    }

    public SwDataDefPropsConditional createSwDataDefPropsConditional() {
        SwDataDefPropsConditionalImpl swDataDefPropsConditional = new SwDataDefPropsConditionalImpl();
        return swDataDefPropsConditional;
    }

    public SwDataDefProps createSwDataDefProps() {
        SwDataDefPropsImpl swDataDefProps = new SwDataDefPropsImpl();
        return swDataDefProps;
    }

    public SwCalibrationAccessEnum createSwCalibrationAccessEnumFromString(EDataType eDataType, String initialValue) {
        SwCalibrationAccessEnum result = SwCalibrationAccessEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertSwCalibrationAccessEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public SwImplPolicyEnum createSwImplPolicyEnumFromString(EDataType eDataType, String initialValue) {
        SwImplPolicyEnum result = SwImplPolicyEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertSwImplPolicyEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public SwVariableAccessImplPolicyEnum createSwVariableAccessImplPolicyEnumFromString(EDataType eDataType, String initialValue) {
        SwVariableAccessImplPolicyEnum result = SwVariableAccessImplPolicyEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertSwVariableAccessImplPolicyEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public DatadefpropertiesPackage getDatadefpropertiesPackage() {
        return (DatadefpropertiesPackage)this.getEPackage();
    }

    @Deprecated
    public static DatadefpropertiesPackage getPackage() {
        return DatadefpropertiesPackage.eINSTANCE;
    }
}

