/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.swcomponent.swcimplementation;

import autosar40.swcomponent.swcimplementation.PerInstanceMemorySize;
import autosar40.swcomponent.swcimplementation.SwcImplementation;
import autosar40.swcomponent.swcimplementation.SwcimplementationPackage;
import autosar40.swcomponent.swcimplementation.impl.SwcimplementationFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface SwcimplementationFactory
extends EFactory {
    public static final SwcimplementationFactory eINSTANCE = SwcimplementationFactoryImpl.init();

    public PerInstanceMemorySize createPerInstanceMemorySize();

    public SwcImplementation createSwcImplementation();

    public SwcimplementationPackage getSwcimplementationPackage();
}

