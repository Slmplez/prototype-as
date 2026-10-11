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
package autosar40.commonstructure.implementation.impl;

import autosar40.commonstructure.implementation.Code;
import autosar40.commonstructure.implementation.Compiler;
import autosar40.commonstructure.implementation.DependencyOnArtifact;
import autosar40.commonstructure.implementation.DependencyUsageEnum;
import autosar40.commonstructure.implementation.ImplementationFactory;
import autosar40.commonstructure.implementation.ImplementationPackage;
import autosar40.commonstructure.implementation.Linker;
import autosar40.commonstructure.implementation.ProgramminglanguageEnum;
import autosar40.commonstructure.implementation.impl.CodeImpl;
import autosar40.commonstructure.implementation.impl.CompilerImpl;
import autosar40.commonstructure.implementation.impl.DependencyOnArtifactImpl;
import autosar40.commonstructure.implementation.impl.LinkerImpl;
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
            ImplementationFactory theImplementationFactory = (ImplementationFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/implementation");
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
            case 2: {
                return this.createDependencyOnArtifact();
            }
            case 4: {
                return this.createLinker();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 6: {
                return this.createDependencyUsageEnumFromString(eDataType, initialValue);
            }
            case 7: {
                return this.createProgramminglanguageEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 6: {
                return this.convertDependencyUsageEnumToString(eDataType, instanceValue);
            }
            case 7: {
                return this.convertProgramminglanguageEnumToString(eDataType, instanceValue);
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

    public DependencyOnArtifact createDependencyOnArtifact() {
        DependencyOnArtifactImpl dependencyOnArtifact = new DependencyOnArtifactImpl();
        return dependencyOnArtifact;
    }

    public Linker createLinker() {
        LinkerImpl linker = new LinkerImpl();
        return linker;
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

