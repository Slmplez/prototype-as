/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.system.fibex.fibexcore;

import autosar3x.system.fibex.fibexcore.FibexcorePackage;
import autosar3x.system.fibex.fibexcore.impl.FibexcoreFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface FibexcoreFactory
extends EFactory {
    public static final FibexcoreFactory eINSTANCE = FibexcoreFactoryImpl.init();

    public FibexcorePackage getFibexcorePackage();
}

