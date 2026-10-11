/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.system.fibex.fibexcore;

import autosar40.system.fibex.fibexcore.FibexElementRefConditional;
import autosar40.system.fibex.fibexcore.FibexcorePackage;
import autosar40.system.fibex.fibexcore.impl.FibexcoreFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface FibexcoreFactory
extends EFactory {
    public static final FibexcoreFactory eINSTANCE = FibexcoreFactoryImpl.init();

    public FibexElementRefConditional createFibexElementRefConditional();

    public FibexcorePackage getFibexcorePackage();
}

