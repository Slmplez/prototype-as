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
package autosar21.swcomponent.modedeclaration.impl;

import autosar21.swcomponent.modedeclaration.ModeActivationKind;
import autosar21.swcomponent.modedeclaration.ModeDeclaration;
import autosar21.swcomponent.modedeclaration.ModeDeclarationGroup;
import autosar21.swcomponent.modedeclaration.ModeDisablingDependency;
import autosar21.swcomponent.modedeclaration.ModedeclarationFactory;
import autosar21.swcomponent.modedeclaration.ModedeclarationPackage;
import autosar21.swcomponent.modedeclaration.impl.ModeDeclarationGroupImpl;
import autosar21.swcomponent.modedeclaration.impl.ModeDeclarationImpl;
import autosar21.swcomponent.modedeclaration.impl.ModeDisablingDependencyImpl;
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
            ModedeclarationFactory theModedeclarationFactory = (ModedeclarationFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/swc/md");
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
                return this.createModeDisablingDependency();
            }
            case 2: {
                return this.createModeDeclarationGroup();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 3: {
                return this.createModeActivationKindFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 3: {
                return this.convertModeActivationKindToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public ModeDeclaration createModeDeclaration() {
        ModeDeclarationImpl modeDeclaration = new ModeDeclarationImpl();
        return modeDeclaration;
    }

    public ModeDisablingDependency createModeDisablingDependency() {
        ModeDisablingDependencyImpl modeDisablingDependency = new ModeDisablingDependencyImpl();
        return modeDisablingDependency;
    }

    public ModeDeclarationGroup createModeDeclarationGroup() {
        ModeDeclarationGroupImpl modeDeclarationGroup = new ModeDeclarationGroupImpl();
        return modeDeclarationGroup;
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

