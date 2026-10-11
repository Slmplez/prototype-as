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
package autosar21.swcomponent.measurementandcalibration.datadefproperties.impl;

import autosar21.swcomponent.measurementandcalibration.datadefproperties.DatadefpropertiesFactory;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.DatadefpropertiesPackage;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwArraysize;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwBitRepresentation;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwCalibrationAccessEnum;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwComparisonVariables;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwDataDefProps;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwDataDependency;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwDataDependencyArgs;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwGenericAxisParamValue;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwImplPolicyEnum;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwPointer;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwSemaphore;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwTextProps;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwVariableAccessImplPolicyEnum;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwVariableRef;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.impl.SwArraysizeImpl;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.impl.SwBitRepresentationImpl;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.impl.SwComparisonVariablesImpl;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.impl.SwDataDefPropsImpl;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.impl.SwDataDependencyArgsImpl;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.impl.SwDataDependencyImpl;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.impl.SwGenericAxisParamValueImpl;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.impl.SwPointerImpl;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.impl.SwSemaphoreImpl;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.impl.SwTextPropsImpl;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.impl.SwVariableRefImpl;
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
            DatadefpropertiesFactory theDatadefpropertiesFactory = (DatadefpropertiesFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/swc/mac/ddp");
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
                return this.createSwArraysize();
            }
            case 1: {
                return this.createSwBitRepresentation();
            }
            case 2: {
                return this.createSwComparisonVariables();
            }
            case 3: {
                return this.createSwGenericAxisParamValue();
            }
            case 4: {
                return this.createSwDataDependency();
            }
            case 5: {
                return this.createSwDataDependencyArgs();
            }
            case 6: {
                return this.createSwPointer();
            }
            case 7: {
                return this.createSwSemaphore();
            }
            case 8: {
                return this.createSwTextProps();
            }
            case 9: {
                return this.createSwVariableRef();
            }
            case 10: {
                return this.createSwDataDefProps();
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
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public SwArraysize createSwArraysize() {
        SwArraysizeImpl swArraysize = new SwArraysizeImpl();
        return swArraysize;
    }

    public SwBitRepresentation createSwBitRepresentation() {
        SwBitRepresentationImpl swBitRepresentation = new SwBitRepresentationImpl();
        return swBitRepresentation;
    }

    public SwComparisonVariables createSwComparisonVariables() {
        SwComparisonVariablesImpl swComparisonVariables = new SwComparisonVariablesImpl();
        return swComparisonVariables;
    }

    public SwGenericAxisParamValue createSwGenericAxisParamValue() {
        SwGenericAxisParamValueImpl swGenericAxisParamValue = new SwGenericAxisParamValueImpl();
        return swGenericAxisParamValue;
    }

    public SwDataDependency createSwDataDependency() {
        SwDataDependencyImpl swDataDependency = new SwDataDependencyImpl();
        return swDataDependency;
    }

    public SwDataDependencyArgs createSwDataDependencyArgs() {
        SwDataDependencyArgsImpl swDataDependencyArgs = new SwDataDependencyArgsImpl();
        return swDataDependencyArgs;
    }

    public SwPointer createSwPointer() {
        SwPointerImpl swPointer = new SwPointerImpl();
        return swPointer;
    }

    public SwSemaphore createSwSemaphore() {
        SwSemaphoreImpl swSemaphore = new SwSemaphoreImpl();
        return swSemaphore;
    }

    public SwTextProps createSwTextProps() {
        SwTextPropsImpl swTextProps = new SwTextPropsImpl();
        return swTextProps;
    }

    public SwVariableRef createSwVariableRef() {
        SwVariableRefImpl swVariableRef = new SwVariableRefImpl();
        return swVariableRef;
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

