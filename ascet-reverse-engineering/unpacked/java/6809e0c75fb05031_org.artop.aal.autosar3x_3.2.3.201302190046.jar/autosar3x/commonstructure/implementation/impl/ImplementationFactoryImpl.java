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
package autosar3x.commonstructure.implementation.impl;

import autosar3x.commonstructure.implementation.Code;
import autosar3x.commonstructure.implementation.CodeTypeEnum;
import autosar3x.commonstructure.implementation.Compiler;
import autosar3x.commonstructure.implementation.DependencyOnFile;
import autosar3x.commonstructure.implementation.DependencyOnLibrary;
import autosar3x.commonstructure.implementation.DependencyUsageEnum;
import autosar3x.commonstructure.implementation.Implementation;
import autosar3x.commonstructure.implementation.ImplementationFactory;
import autosar3x.commonstructure.implementation.ImplementationPackage;
import autosar3x.commonstructure.implementation.Linker;
import autosar3x.commonstructure.implementation.ProgramminglanguageEnum;
import autosar3x.commonstructure.implementation.XfileSo;
import autosar3x.commonstructure.implementation.impl.CodeImpl;
import autosar3x.commonstructure.implementation.impl.CompilerImpl;
import autosar3x.commonstructure.implementation.impl.DependencyOnFileImpl;
import autosar3x.commonstructure.implementation.impl.DependencyOnLibraryImpl;
import autosar3x.commonstructure.implementation.impl.ImplementationImpl;
import autosar3x.commonstructure.implementation.impl.LinkerImpl;
import autosar3x.commonstructure.implementation.impl.XfileSoImpl;
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
            ImplementationFactory theImplementationFactory = (ImplementationFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/cs/implementation");
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
                return this.createXfileSo();
            }
            case 2: {
                return this.createCompiler();
            }
            case 4: {
                return this.createDependencyOnFile();
            }
            case 5: {
                return this.createDependencyOnLibrary();
            }
            case 6: {
                return this.createImplementation();
            }
            case 7: {
                return this.createLinker();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 8: {
                return this.createCodeTypeEnumFromString(eDataType, initialValue);
            }
            case 9: {
                return this.createDependencyUsageEnumFromString(eDataType, initialValue);
            }
            case 10: {
                return this.createProgramminglanguageEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 8: {
                return this.convertCodeTypeEnumToString(eDataType, instanceValue);
            }
            case 9: {
                return this.convertDependencyUsageEnumToString(eDataType, instanceValue);
            }
            case 10: {
                return this.convertProgramminglanguageEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public Code createCode() {
        CodeImpl code = new CodeImpl();
        return code;
    }

    public XfileSo createXfileSo() {
        XfileSoImpl xfileSo = new XfileSoImpl();
        return xfileSo;
    }

    public Compiler createCompiler() {
        CompilerImpl compiler = new CompilerImpl();
        return compiler;
    }

    public DependencyOnFile createDependencyOnFile() {
        DependencyOnFileImpl dependencyOnFile = new DependencyOnFileImpl();
        return dependencyOnFile;
    }

    public DependencyOnLibrary createDependencyOnLibrary() {
        DependencyOnLibraryImpl dependencyOnLibrary = new DependencyOnLibraryImpl();
        return dependencyOnLibrary;
    }

    public Implementation createImplementation() {
        ImplementationImpl implementation = new ImplementationImpl();
        return implementation;
    }

    public Linker createLinker() {
        LinkerImpl linker = new LinkerImpl();
        return linker;
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

    public ProgramminglanguageEnum createProgramminglanguageEnumFromString(EDataType eDataType, String initialValue) {
        ProgramminglanguageEnum result = ProgramminglanguageEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertProgramminglanguageEnumToString(EDataType eDataType, Object instanceValue) {
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

