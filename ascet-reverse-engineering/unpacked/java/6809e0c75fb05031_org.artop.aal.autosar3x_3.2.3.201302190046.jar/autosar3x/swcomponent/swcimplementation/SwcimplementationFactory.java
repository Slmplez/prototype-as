/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.swcomponent.swcimplementation;

import autosar3x.swcomponent.swcimplementation.PerInstanceMemorySize;
import autosar3x.swcomponent.swcimplementation.SwcImplementation;
import autosar3x.swcomponent.swcimplementation.SwcimplementationPackage;
import autosar3x.swcomponent.swcimplementation.impl.SwcimplementationFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface SwcimplementationFactory
extends EFactory {
    public static final SwcimplementationFactory eINSTANCE = SwcimplementationFactoryImpl.init();

    public PerInstanceMemorySize createPerInstanceMemorySize();

    public SwcImplementation createSwcImplementation();

    public SwcimplementationPackage getSwcimplementationPackage();
}

