/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.bswmodule.bswimplementation;

import autosar3x.bswmodule.bswimplementation.BswImplementation;
import autosar3x.bswmodule.bswimplementation.BswimplementationPackage;
import autosar3x.bswmodule.bswimplementation.impl.BswimplementationFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface BswimplementationFactory
extends EFactory {
    public static final BswimplementationFactory eINSTANCE = BswimplementationFactoryImpl.init();

    public BswImplementation createBswImplementation();

    public BswimplementationPackage getBswimplementationPackage();
}

