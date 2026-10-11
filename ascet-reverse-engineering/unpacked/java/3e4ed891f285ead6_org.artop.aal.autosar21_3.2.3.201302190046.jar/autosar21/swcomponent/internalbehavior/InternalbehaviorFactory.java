/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.internalbehavior;

import autosar21.swcomponent.internalbehavior.InternalBehavior;
import autosar21.swcomponent.internalbehavior.InternalbehaviorPackage;
import autosar21.swcomponent.internalbehavior.RunnableEntity;
import autosar21.swcomponent.internalbehavior.impl.InternalbehaviorFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InternalbehaviorFactory
extends EFactory {
    public static final InternalbehaviorFactory eINSTANCE = InternalbehaviorFactoryImpl.init();

    public InternalBehavior createInternalBehavior();

    public RunnableEntity createRunnableEntity();

    public InternalbehaviorPackage getInternalbehaviorPackage();
}

