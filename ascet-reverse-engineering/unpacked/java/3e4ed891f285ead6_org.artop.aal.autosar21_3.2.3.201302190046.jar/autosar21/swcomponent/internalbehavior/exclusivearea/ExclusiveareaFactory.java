/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.internalbehavior.exclusivearea;

import autosar21.swcomponent.internalbehavior.exclusivearea.ExclusiveArea;
import autosar21.swcomponent.internalbehavior.exclusivearea.ExclusiveareaPackage;
import autosar21.swcomponent.internalbehavior.exclusivearea.RunnableEntityCanEnterExclusiveArea;
import autosar21.swcomponent.internalbehavior.exclusivearea.RunnableEntityRunsInExclusiveArea;
import autosar21.swcomponent.internalbehavior.exclusivearea.impl.ExclusiveareaFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ExclusiveareaFactory
extends EFactory {
    public static final ExclusiveareaFactory eINSTANCE = ExclusiveareaFactoryImpl.init();

    public RunnableEntityCanEnterExclusiveArea createRunnableEntityCanEnterExclusiveArea();

    public RunnableEntityRunsInExclusiveArea createRunnableEntityRunsInExclusiveArea();

    public ExclusiveArea createExclusiveArea();

    public ExclusiveareaPackage getExclusiveareaPackage();
}

