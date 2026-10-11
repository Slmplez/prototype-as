/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.implementation;

import autosar21.swcomponent.implementation.Code;
import autosar21.swcomponent.implementation.Compiler;
import autosar21.swcomponent.implementation.DependencyOnFile;
import autosar21.swcomponent.implementation.DependencyOnLibrary;
import autosar21.swcomponent.implementation.Implementation;
import autosar21.swcomponent.implementation.ImplementationPackage;
import autosar21.swcomponent.implementation.impl.ImplementationFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ImplementationFactory
extends EFactory {
    public static final ImplementationFactory eINSTANCE = ImplementationFactoryImpl.init();

    public Code createCode();

    public Compiler createCompiler();

    public DependencyOnFile createDependencyOnFile();

    public Implementation createImplementation();

    public DependencyOnLibrary createDependencyOnLibrary();

    public ImplementationPackage getImplementationPackage();
}

