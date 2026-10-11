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
package autosar21.swcomponent.implementation.impl;

import autosar21.swcomponent.implementation.Code;
import autosar21.swcomponent.implementation.CodeTypeEnum;
import autosar21.swcomponent.implementation.Compiler;
import autosar21.swcomponent.implementation.DependencyOnFile;
import autosar21.swcomponent.implementation.DependencyOnLibrary;
import autosar21.swcomponent.implementation.DependencyUsageEnum;
import autosar21.swcomponent.implementation.Implementation;
import autosar21.swcomponent.implementation.ImplementationFactory;
import autosar21.swcomponent.implementation.ImplementationPackage;
import autosar21.swcomponent.implementation.ImplementationProgrammingLanguageEnum;
import autosar21.swcomponent.implementation.impl.CodeImpl;
import autosar21.swcomponent.implementation.impl.CompilerImpl;
import autosar21.swcomponent.implementation.impl.DependencyOnFileImpl;
import autosar21.swcomponent.implementation.impl.DependencyOnLibraryImpl;
import autosar21.swcomponent.implementation.impl.ImplementationImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class ImplementationFactoryImpl
extends EFactoryImpl
implements ImplementationFactory {
    public static ImplementationFactory init() {
        try {
            ImplementationFactory theImplementationFactory = (ImplementationFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/swc/i");
            if (theImplementationFactory != null) {
                return theImplementationFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new ImplementationFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createCode();
            }
            case 1: {
                return this.createCompiler();
            }
            case 3: {
                return this.createDependencyOnFile();
            }
            case 4: {
                return this.createImplementation();
            }
            case 5: {
                return this.createDependencyOnLibrary();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 6: {
                return this.createCodeTypeEnumFromString(eDataType, initialValue);
            }
            case 7: {
                return this.createDependencyUsageEnumFromString(eDataType, initialValue);
            }
            case 8: {
                return this.createImplementationProgrammingLanguageEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 6: {
                return this.convertCodeTypeEnumToString(eDataType, instanceValue);
            }
            case 7: {
                return this.convertDependencyUsageEnumToString(eDataType, instanceValue);
            }
            case 8: {
                return this.convertImplementationProgrammingLanguageEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public Code createCode() {
        CodeImpl code = new CodeImpl();
        return code;
    }

    public Compiler createCompiler() {
        CompilerImpl compiler = new CompilerImpl();
        return compiler;
    }

    public DependencyOnFile createDependencyOnFile() {
        DependencyOnFileImpl dependencyOnFile = new DependencyOnFileImpl();
        return dependencyOnFile;
    }

    public Implementation createImplementation() {
        ImplementationImpl implementation = new ImplementationImpl();
        return implementation;
    }

    public DependencyOnLibrary createDependencyOnLibrary() {
        DependencyOnLibraryImpl dependencyOnLibrary = new DependencyOnLibraryImpl();
        return dependencyOnLibrary;
    }

    public CodeTypeEnum createCodeTypeEnumFromString(EDataType eDataType, String initialValue) {
        CodeTypeEnum result = CodeTypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertCodeTypeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public DependencyUsageEnum createDependencyUsageEnumFromString(EDataType eDataType, String initialValue) {
        DependencyUsageEnum result = DependencyUsageEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertDependencyUsageEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ImplementationProgrammingLanguageEnum createImplementationProgrammingLanguageEnumFromString(EDataType eDataType, String initialValue) {
        ImplementationProgrammingLanguageEnum result = ImplementationProgrammingLanguageEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertImplementationProgrammingLanguageEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ImplementationPackage getImplementationPackage() {
        return (ImplementationPackage)this.getEPackage();
    }

    @Deprecated
    public static ImplementationPackage getPackage() {
        return ImplementationPackage.eINSTANCE;
    }
}

