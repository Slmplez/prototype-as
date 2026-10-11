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
package autosar40.commonstructure.modedeclaration.impl;

import autosar40.commonstructure.modedeclaration.ModeActivationKind;
import autosar40.commonstructure.modedeclaration.ModeDeclaration;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroup;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototype;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototypeMapping;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototypeRefConditional;
import autosar40.commonstructure.modedeclaration.ModeRequestTypeMap;
import autosar40.commonstructure.modedeclaration.ModedeclarationFactory;
import autosar40.commonstructure.modedeclaration.ModedeclarationPackage;
import autosar40.commonstructure.modedeclaration.impl.ModeDeclarationGroupImpl;
import autosar40.commonstructure.modedeclaration.impl.ModeDeclarationGroupPrototypeImpl;
import autosar40.commonstructure.modedeclaration.impl.ModeDeclarationGroupPrototypeMappingImpl;
import autosar40.commonstructure.modedeclaration.impl.ModeDeclarationGroupPrototypeRefConditionalImpl;
import autosar40.commonstructure.modedeclaration.impl.ModeDeclarationImpl;
import autosar40.commonstructure.modedeclaration.impl.ModeRequestTypeMapImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class ModedeclarationFactoryImpl
extends EFactoryImpl
implements ModedeclarationFactory {
    public static ModedeclarationFactory init() {
        try {
            ModedeclarationFactory theModedeclarationFactory = (ModedeclarationFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/md");
            if (theModedeclarationFactory != null) {
                return theModedeclarationFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new ModedeclarationFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createModeDeclaration();
            }
            case 1: {
                return this.createModeDeclarationGroup();
            }
            case 2: {
                return this.createModeDeclarationGroupPrototype();
            }
            case 3: {
                return this.createModeDeclarationGroupPrototypeMapping();
            }
            case 4: {
                return this.createModeDeclarationGroupPrototypeRefConditional();
            }
            case 5: {
                return this.createModeRequestTypeMap();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 6: {
                return this.createModeActivationKindFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 6: {
                return this.convertModeActivationKindToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public ModeDeclaration createModeDeclaration() {
        ModeDeclarationImpl modeDeclaration = new ModeDeclarationImpl();
        return modeDeclaration;
    }

    public ModeDeclarationGroup createModeDeclarationGroup() {
        ModeDeclarationGroupImpl modeDeclarationGroup = new ModeDeclarationGroupImpl();
        return modeDeclarationGroup;
    }

    public ModeDeclarationGroupPrototype createModeDeclarationGroupPrototype() {
        ModeDeclarationGroupPrototypeImpl modeDeclarationGroupPrototype = new ModeDeclarationGroupPrototypeImpl();
        return modeDeclarationGroupPrototype;
    }

    public ModeDeclarationGroupPrototypeMapping createModeDeclarationGroupPrototypeMapping() {
        ModeDeclarationGroupPrototypeMappingImpl modeDeclarationGroupPrototypeMapping = new ModeDeclarationGroupPrototypeMappingImpl();
        return modeDeclarationGroupPrototypeMapping;
    }

    public ModeDeclarationGroupPrototypeRefConditional createModeDeclarationGroupPrototypeRefConditional() {
        ModeDeclarationGroupPrototypeRefConditionalImpl modeDeclarationGroupPrototypeRefConditional = new ModeDeclarationGroupPrototypeRefConditionalImpl();
        return modeDeclarationGroupPrototypeRefConditional;
    }

    public ModeRequestTypeMap createModeRequestTypeMap() {
        ModeRequestTypeMapImpl modeRequestTypeMap = new ModeRequestTypeMapImpl();
        return modeRequestTypeMap;
    }

    public ModeActivationKind createModeActivationKindFromString(EDataType eDataType, String initialValue) {
        ModeActivationKind result = ModeActivationKind.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertModeActivationKindToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ModedeclarationPackage getModedeclarationPackage() {
        return (ModedeclarationPackage)this.getEPackage();
    }

    @Deprecated
    public static ModedeclarationPackage getPackage() {
        return ModedeclarationPackage.eINSTANCE;
    }
}

