/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.commonstructure.implementation;

import autosar3x.commonstructure.implementation.Code;
import autosar3x.commonstructure.implementation.Compiler;
import autosar3x.commonstructure.implementation.DependencyOnFile;
import autosar3x.commonstructure.implementation.DependencyOnLibrary;
import autosar3x.commonstructure.implementation.Implementation;
import autosar3x.commonstructure.implementation.ImplementationPackage;
import autosar3x.commonstructure.implementation.Linker;
import autosar3x.commonstructure.implementation.XfileSo;
import autosar3x.commonstructure.implementation.impl.ImplementationFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ImplementationFactory
extends EFactory {
    public static final ImplementationFactory eINSTANCE = ImplementationFactoryImpl.init();

    public Code createCode();

    public XfileSo createXfileSo();

    public Compiler createCompiler();

    public DependencyOnFile createDependencyOnFile();

    public DependencyOnLibrary createDependencyOnLibrary();

    public Implementation createImplementation();

    public Linker createLinker();

    public ImplementationPackage getImplementationPackage();
}

