/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.swcomponent.swcinternalbehavior;

import autosar3x.swcomponent.swcinternalbehavior.InternalBehavior;
import autosar3x.swcomponent.swcinternalbehavior.RunnableEntity;
import autosar3x.swcomponent.swcinternalbehavior.SwcinternalbehaviorPackage;
import autosar3x.swcomponent.swcinternalbehavior.impl.SwcinternalbehaviorFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface SwcinternalbehaviorFactory
extends EFactory {
    public static final SwcinternalbehaviorFactory eINSTANCE = SwcinternalbehaviorFactoryImpl.init();

    public InternalBehavior createInternalBehavior();

    public RunnableEntity createRunnableEntity();

    public SwcinternalbehaviorPackage getSwcinternalbehaviorPackage();
}

