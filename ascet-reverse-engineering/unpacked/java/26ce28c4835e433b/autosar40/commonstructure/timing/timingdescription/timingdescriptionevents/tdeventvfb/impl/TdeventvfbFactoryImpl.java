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
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.impl;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TDEventModeDeclaration;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TDEventModeDeclarationTypeEnum;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TDEventOperation;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TDEventOperationTypeEnum;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TDEventVariableDataPrototype;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TDEventVariableDataPrototypeTypeEnum;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TdeventvfbFactory;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TdeventvfbPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.impl.TDEventModeDeclarationImpl;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.impl.TDEventOperationImpl;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.impl.TDEventVariableDataPrototypeImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class TdeventvfbFactoryImpl
extends EFactoryImpl
implements TdeventvfbFactory {
    public static TdeventvfbFactory init() {
        try {
            TdeventvfbFactory theTdeventvfbFactory = (TdeventvfbFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdev");
            if (theTdeventvfbFactory != null) {
                return theTdeventvfbFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new TdeventvfbFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createTDEventModeDeclaration();
            }
            case 2: {
                return this.createTDEventOperation();
            }
            case 3: {
                return this.createTDEventVariableDataPrototype();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 4: {
                return this.createTDEventModeDeclarationTypeEnumFromString(eDataType, initialValue);
            }
            case 5: {
                return this.createTDEventOperationTypeEnumFromString(eDataType, initialValue);
            }
            case 6: {
                return this.createTDEventVariableDataPrototypeTypeEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 4: {
                return this.convertTDEventModeDeclarationTypeEnumToString(eDataType, instanceValue);
            }
            case 5: {
                return this.convertTDEventOperationTypeEnumToString(eDataType, instanceValue);
            }
            case 6: {
                return this.convertTDEventVariableDataPrototypeTypeEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public TDEventModeDeclaration createTDEventModeDeclaration() {
        TDEventModeDeclarationImpl tdEventModeDeclaration = new TDEventModeDeclarationImpl();
        return tdEventModeDeclaration;
    }

    public TDEventOperation createTDEventOperation() {
        TDEventOperationImpl tdEventOperation = new TDEventOperationImpl();
        return tdEventOperation;
    }

    public TDEventVariableDataPrototype createTDEventVariableDataPrototype() {
        TDEventVariableDataPrototypeImpl tdEventVariableDataPrototype = new TDEventVariableDataPrototypeImpl();
        return tdEventVariableDataPrototype;
    }

    public TDEventModeDeclarationTypeEnum createTDEventModeDeclarationTypeEnumFromString(EDataType eDataType, String initialValue) {
        TDEventModeDeclarationTypeEnum result = TDEventModeDeclarationTypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertTDEventModeDeclarationTypeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public TDEventOperationTypeEnum createTDEventOperationTypeEnumFromString(EDataType eDataType, String initialValue) {
        TDEventOperationTypeEnum result = TDEventOperationTypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertTDEventOperationTypeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public TDEventVariableDataPrototypeTypeEnum createTDEventVariableDataPrototypeTypeEnumFromString(EDataType eDataType, String initialValue) {
        TDEventVariableDataPrototypeTypeEnum result = TDEventVariableDataPrototypeTypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertTDEventVariableDataPrototypeTypeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public TdeventvfbPackage getTdeventvfbPackage() {
        return (TdeventvfbPackage)this.getEPackage();
    }

    @Deprecated
    public static TdeventvfbPackage getPackage() {
        return TdeventvfbPackage.eINSTANCE;
    }
}

