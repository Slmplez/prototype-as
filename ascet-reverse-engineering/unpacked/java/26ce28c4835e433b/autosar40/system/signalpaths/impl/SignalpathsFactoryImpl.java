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
package autosar40.system.signalpaths.impl;

import autosar40.system.signalpaths.CommonSignalPath;
import autosar40.system.signalpaths.ForbiddenSignalPath;
import autosar40.system.signalpaths.PermissibleSignalPath;
import autosar40.system.signalpaths.SeparateSignalPath;
import autosar40.system.signalpaths.SignalpathsFactory;
import autosar40.system.signalpaths.SignalpathsPackage;
import autosar40.system.signalpaths.SwcToSwcOperationArguments;
import autosar40.system.signalpaths.SwcToSwcOperationArgumentsDirectionEnum;
import autosar40.system.signalpaths.SwcToSwcSignal;
import autosar40.system.signalpaths.impl.CommonSignalPathImpl;
import autosar40.system.signalpaths.impl.ForbiddenSignalPathImpl;
import autosar40.system.signalpaths.impl.PermissibleSignalPathImpl;
import autosar40.system.signalpaths.impl.SeparateSignalPathImpl;
import autosar40.system.signalpaths.impl.SwcToSwcOperationArgumentsImpl;
import autosar40.system.signalpaths.impl.SwcToSwcSignalImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class SignalpathsFactoryImpl
extends EFactoryImpl
implements SignalpathsFactory {
    public static SignalpathsFactory init() {
        try {
            SignalpathsFactory theSignalpathsFactory = (SignalpathsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/system/sp");
            if (theSignalpathsFactory != null) {
                return theSignalpathsFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new SignalpathsFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createCommonSignalPath();
            }
            case 1: {
                return this.createSwcToSwcOperationArguments();
            }
            case 2: {
                return this.createSwcToSwcSignal();
            }
            case 3: {
                return this.createForbiddenSignalPath();
            }
            case 4: {
                return this.createPermissibleSignalPath();
            }
            case 5: {
                return this.createSeparateSignalPath();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 7: {
                return this.createSwcToSwcOperationArgumentsDirectionEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 7: {
                return this.convertSwcToSwcOperationArgumentsDirectionEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public CommonSignalPath createCommonSignalPath() {
        CommonSignalPathImpl commonSignalPath = new CommonSignalPathImpl();
        return commonSignalPath;
    }

    public SwcToSwcOperationArguments createSwcToSwcOperationArguments() {
        SwcToSwcOperationArgumentsImpl swcToSwcOperationArguments = new SwcToSwcOperationArgumentsImpl();
        return swcToSwcOperationArguments;
    }

    public SwcToSwcSignal createSwcToSwcSignal() {
        SwcToSwcSignalImpl swcToSwcSignal = new SwcToSwcSignalImpl();
        return swcToSwcSignal;
    }

    public ForbiddenSignalPath createForbiddenSignalPath() {
        ForbiddenSignalPathImpl forbiddenSignalPath = new ForbiddenSignalPathImpl();
        return forbiddenSignalPath;
    }

    public PermissibleSignalPath createPermissibleSignalPath() {
        PermissibleSignalPathImpl permissibleSignalPath = new PermissibleSignalPathImpl();
        return permissibleSignalPath;
    }

    public SeparateSignalPath createSeparateSignalPath() {
        SeparateSignalPathImpl separateSignalPath = new SeparateSignalPathImpl();
        return separateSignalPath;
    }

    public SwcToSwcOperationArgumentsDirectionEnum createSwcToSwcOperationArgumentsDirectionEnumFromString(EDataType eDataType, String initialValue) {
        SwcToSwcOperationArgumentsDirectionEnum result = SwcToSwcOperationArgumentsDirectionEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertSwcToSwcOperationArgumentsDirectionEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public SignalpathsPackage getSignalpathsPackage() {
        return (SignalpathsPackage)this.getEPackage();
    }

    @Deprecated
    public static SignalpathsPackage getPackage() {
        return SignalpathsPackage.eINSTANCE;
    }
}

