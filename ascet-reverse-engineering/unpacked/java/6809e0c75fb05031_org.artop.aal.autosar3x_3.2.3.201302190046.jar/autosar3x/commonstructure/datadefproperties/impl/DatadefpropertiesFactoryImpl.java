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
package autosar3x.commonstructure.datadefproperties.impl;

import autosar3x.commonstructure.datadefproperties.DatadefpropertiesFactory;
import autosar3x.commonstructure.datadefproperties.DatadefpropertiesPackage;
import autosar3x.commonstructure.datadefproperties.SwArraysize;
import autosar3x.commonstructure.datadefproperties.SwBitRepresentation;
import autosar3x.commonstructure.datadefproperties.SwCalibrationAccessEnum;
import autosar3x.commonstructure.datadefproperties.SwComparisonVariables;
import autosar3x.commonstructure.datadefproperties.SwDataDefProps;
import autosar3x.commonstructure.datadefproperties.SwDataDependency;
import autosar3x.commonstructure.datadefproperties.SwDataDependencyArgs;
import autosar3x.commonstructure.datadefproperties.SwGenericAxisParamValue;
import autosar3x.commonstructure.datadefproperties.SwImplPolicyEnum;
import autosar3x.commonstructure.datadefproperties.SwPointer;
import autosar3x.commonstructure.datadefproperties.SwSemaphore;
import autosar3x.commonstructure.datadefproperties.SwTextProps;
import autosar3x.commonstructure.datadefproperties.SwVariableAccessImplPolicyEnum;
import autosar3x.commonstructure.datadefproperties.SwVariableRef;
import autosar3x.commonstructure.datadefproperties.impl.SwArraysizeImpl;
import autosar3x.commonstructure.datadefproperties.impl.SwBitRepresentationImpl;
import autosar3x.commonstructure.datadefproperties.impl.SwComparisonVariablesImpl;
import autosar3x.commonstructure.datadefproperties.impl.SwDataDefPropsImpl;
import autosar3x.commonstructure.datadefproperties.impl.SwDataDependencyArgsImpl;
import autosar3x.commonstructure.datadefproperties.impl.SwDataDependencyImpl;
import autosar3x.commonstructure.datadefproperties.impl.SwGenericAxisParamValueImpl;
import autosar3x.commonstructure.datadefproperties.impl.SwPointerImpl;
import autosar3x.commonstructure.datadefproperties.impl.SwSemaphoreImpl;
import autosar3x.commonstructure.datadefproperties.impl.SwTextPropsImpl;
import autosar3x.commonstructure.datadefproperties.impl.SwVariableRefImpl;
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
            DatadefpropertiesFactory theDatadefpropertiesFactory = (DatadefpropertiesFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/cs/ddp");
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
                return this.createSwDataDefProps();
            }
            case 1: {
                return this.createSwArraysize();
            }
            case 2: {
                return this.createSwDataDependency();
            }
            case 3: {
                return this.createSwDataDependencyArgs();
            }
            case 4: {
                return this.createSwVariableRef();
            }
            case 5: {
                return this.createSwBitRepresentation();
            }
            case 6: {
                return this.createSwTextProps();
            }
            case 7: {
                return this.createSwComparisonVariables();
            }
            case 8: {
                return this.createSwSemaphore();
            }
            case 9: {
                return this.createSwPointer();
            }
            case 10: {
                return this.createSwGenericAxisParamValue();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 11: {
                return this.createSwCalibrationAccessEnumFromString(eDataType, initialValue);
            }
            case 12: {
                return this.createSwImplPolicyEnumFromString(eDataType, initialValue);
            }
            case 13: {
                return this.createSwVariableAccessImplPolicyEnumFromString(eDataType, initialValue);
            }
            case 14: {
                return this.createDisplayFormatStringFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 11: {
                return this.convertSwCalibrationAccessEnumToString(eDataType, instanceValue);
            }
            case 12: {
                return this.convertSwImplPolicyEnumToString(eDataType, instanceValue);
            }
            case 13: {
                return this.convertSwVariableAccessImplPolicyEnumToString(eDataType, instanceValue);
            }
            case 14: {
                return this.convertDisplayFormatStringToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public SwDataDefProps createSwDataDefProps() {
        SwDataDefPropsImpl swDataDefProps = new SwDataDefPropsImpl();
        return swDataDefProps;
    }

    public SwArraysize createSwArraysize() {
        SwArraysizeImpl swArraysize = new SwArraysizeImpl();
        return swArraysize;
    }

    public SwDataDependency createSwDataDependency() {
        SwDataDependencyImpl swDataDependency = new SwDataDependencyImpl();
        return swDataDependency;
    }

    public SwDataDependencyArgs createSwDataDependencyArgs() {
        SwDataDependencyArgsImpl swDataDependencyArgs = new SwDataDependencyArgsImpl();
        return swDataDependencyArgs;
    }

    public SwVariableRef createSwVariableRef() {
        SwVariableRefImpl swVariableRef = new SwVariableRefImpl();
        return swVariableRef;
    }

    public SwBitRepresentation createSwBitRepresentation() {
        SwBitRepresentationImpl swBitRepresentation = new SwBitRepresentationImpl();
        return swBitRepresentation;
    }

    public SwTextProps createSwTextProps() {
        SwTextPropsImpl swTextProps = new SwTextPropsImpl();
        return swTextProps;
    }

    public SwComparisonVariables createSwComparisonVariables() {
        SwComparisonVariablesImpl swComparisonVariables = new SwComparisonVariablesImpl();
        return swComparisonVariables;
    }

    public SwSemaphore createSwSemaphore() {
        SwSemaphoreImpl swSemaphore = new SwSemaphoreImpl();
        return swSemaphore;
    }

    public SwPointer createSwPointer() {
        SwPointerImpl swPointer = new SwPointerImpl();
        return swPointer;
    }

    public SwGenericAxisParamValue createSwGenericAxisParamValue() {
        SwGenericAxisParamValueImpl swGenericAxisParamValue = new SwGenericAxisParamValueImpl();
        return swGenericAxisParamValue;
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

    public String createDisplayFormatStringFromString(EDataType eDataType, String initialValue) {
        return (String)super.createFromString(eDataType, initialValue);
    }

    public String convertDisplayFormatStringToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public DatadefpropertiesPackage getDatadefpropertiesPackage() {
        return (DatadefpropertiesPackage)this.getEPackage();
    }

    @Deprecated
    public static DatadefpropertiesPackage getPackage() {
        return DatadefpropertiesPackage.eINSTANCE;
    }
}

