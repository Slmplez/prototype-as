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
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.impl;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.TDEventBswModeDeclaration;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.TDEventBswModeDeclarationTypeEnum;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.TDEventBswModule;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.TDEventBswModuleTypeEnum;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.TdeventbswFactory;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.TdeventbswPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.impl.TDEventBswModeDeclarationImpl;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.impl.TDEventBswModuleImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class TdeventbswFactoryImpl
extends EFactoryImpl
implements TdeventbswFactory {
    public static TdeventbswFactory init() {
        try {
            TdeventbswFactory theTdeventbswFactory = (TdeventbswFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdeb");
            if (theTdeventbswFactory != null) {
                return theTdeventbswFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new TdeventbswFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 1: {
                return this.createTDEventBswModeDeclaration();
            }
            case 2: {
                return this.createTDEventBswModule();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 3: {
                return this.createTDEventBswModeDeclarationTypeEnumFromString(eDataType, initialValue);
            }
            case 4: {
                return this.createTDEventBswModuleTypeEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 3: {
                return this.convertTDEventBswModeDeclarationTypeEnumToString(eDataType, instanceValue);
            }
            case 4: {
                return this.convertTDEventBswModuleTypeEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public TDEventBswModeDeclaration createTDEventBswModeDeclaration() {
        TDEventBswModeDeclarationImpl tdEventBswModeDeclaration = new TDEventBswModeDeclarationImpl();
        return tdEventBswModeDeclaration;
    }

    public TDEventBswModule createTDEventBswModule() {
        TDEventBswModuleImpl tdEventBswModule = new TDEventBswModuleImpl();
        return tdEventBswModule;
    }

    public TDEventBswModeDeclarationTypeEnum createTDEventBswModeDeclarationTypeEnumFromString(EDataType eDataType, String initialValue) {
        TDEventBswModeDeclarationTypeEnum result = TDEventBswModeDeclarationTypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertTDEventBswModeDeclarationTypeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public TDEventBswModuleTypeEnum createTDEventBswModuleTypeEnumFromString(EDataType eDataType, String initialValue) {
        TDEventBswModuleTypeEnum result = TDEventBswModuleTypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertTDEventBswModuleTypeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public TdeventbswPackage getTdeventbswPackage() {
        return (TdeventbswPackage)this.getEPackage();
    }

    @Deprecated
    public static TdeventbswPackage getPackage() {
        return TdeventbswPackage.eINSTANCE;
    }
}

