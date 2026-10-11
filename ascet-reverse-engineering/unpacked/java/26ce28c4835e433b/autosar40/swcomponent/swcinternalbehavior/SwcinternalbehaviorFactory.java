/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.swcomponent.swcinternalbehavior;

import autosar40.swcomponent.swcinternalbehavior.RunnableEntity;
import autosar40.swcomponent.swcinternalbehavior.SwcInternalBehavior;
import autosar40.swcomponent.swcinternalbehavior.SwcinternalbehaviorPackage;
import autosar40.swcomponent.swcinternalbehavior.impl.SwcinternalbehaviorFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface SwcinternalbehaviorFactory
extends EFactory {
    public static final SwcinternalbehaviorFactory eINSTANCE = SwcinternalbehaviorFactoryImpl.init();

    public SwcInternalBehavior createSwcInternalBehavior();

    public RunnableEntity createRunnableEntity();

    public SwcinternalbehaviorPackage getSwcinternalbehaviorPackage();
}

