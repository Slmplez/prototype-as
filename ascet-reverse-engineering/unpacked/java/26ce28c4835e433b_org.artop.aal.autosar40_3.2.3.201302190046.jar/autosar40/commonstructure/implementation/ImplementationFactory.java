/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.implementation;

import autosar40.commonstructure.implementation.Code;
import autosar40.commonstructure.implementation.Compiler;
import autosar40.commonstructure.implementation.DependencyOnArtifact;
import autosar40.commonstructure.implementation.ImplementationPackage;
import autosar40.commonstructure.implementation.Linker;
import autosar40.commonstructure.implementation.impl.ImplementationFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ImplementationFactory
extends EFactory {
    public static final ImplementationFactory eINSTANCE = ImplementationFactoryImpl.init();

    public Code createCode();

    public Compiler createCompiler();

    public DependencyOnArtifact createDependencyOnArtifact();

    public Linker createLinker();

    public ImplementationPackage getImplementationPackage();
}

