/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.bswmodule.bswimplementation;

import autosar40.bswmodule.bswimplementation.BswDebugInfo;
import autosar40.bswmodule.bswimplementation.BswImplementation;
import autosar40.bswmodule.bswimplementation.BswimplementationPackage;
import autosar40.bswmodule.bswimplementation.impl.BswimplementationFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface BswimplementationFactory
extends EFactory {
    public static final BswimplementationFactory eINSTANCE = BswimplementationFactoryImpl.init();

    public BswDebugInfo createBswDebugInfo();

    public BswImplementation createBswImplementation();

    public BswimplementationPackage getBswimplementationPackage();
}

