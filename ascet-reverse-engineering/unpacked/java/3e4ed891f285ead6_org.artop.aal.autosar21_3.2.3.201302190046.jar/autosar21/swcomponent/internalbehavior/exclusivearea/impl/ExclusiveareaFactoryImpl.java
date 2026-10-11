/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar21.swcomponent.internalbehavior.exclusivearea.impl;

import autosar21.swcomponent.internalbehavior.exclusivearea.ExclusiveArea;
import autosar21.swcomponent.internalbehavior.exclusivearea.ExclusiveareaFactory;
import autosar21.swcomponent.internalbehavior.exclusivearea.ExclusiveareaPackage;
import autosar21.swcomponent.internalbehavior.exclusivearea.RunnableEntityCanEnterExclusiveArea;
import autosar21.swcomponent.internalbehavior.exclusivearea.RunnableEntityRunsInExclusiveArea;
import autosar21.swcomponent.internalbehavior.exclusivearea.impl.ExclusiveAreaImpl;
import autosar21.swcomponent.internalbehavior.exclusivearea.impl.RunnableEntityCanEnterExclusiveAreaImpl;
import autosar21.swcomponent.internalbehavior.exclusivearea.impl.RunnableEntityRunsInExclusiveAreaImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class ExclusiveareaFactoryImpl
extends EFactoryImpl
implements ExclusiveareaFactory {
    public static ExclusiveareaFactory init() {
        try {
            ExclusiveareaFactory theExclusiveareaFactory = (ExclusiveareaFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/swc/ib/ea");
            if (theExclusiveareaFactory != null) {
                return theExclusiveareaFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new ExclusiveareaFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createRunnableEntityCanEnterExclusiveArea();
            }
            case 1: {
                return this.createRunnableEntityRunsInExclusiveArea();
            }
            case 2: {
                return this.createExclusiveArea();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public RunnableEntityCanEnterExclusiveArea createRunnableEntityCanEnterExclusiveArea() {
        RunnableEntityCanEnterExclusiveAreaImpl runnableEntityCanEnterExclusiveArea = new RunnableEntityCanEnterExclusiveAreaImpl();
        return runnableEntityCanEnterExclusiveArea;
    }

    public RunnableEntityRunsInExclusiveArea createRunnableEntityRunsInExclusiveArea() {
        RunnableEntityRunsInExclusiveAreaImpl runnableEntityRunsInExclusiveArea = new RunnableEntityRunsInExclusiveAreaImpl();
        return runnableEntityRunsInExclusiveArea;
    }

    public ExclusiveArea createExclusiveArea() {
        ExclusiveAreaImpl exclusiveArea = new ExclusiveAreaImpl();
        return exclusiveArea;
    }

    public ExclusiveareaPackage getExclusiveareaPackage() {
        return (ExclusiveareaPackage)this.getEPackage();
    }

    @Deprecated
    public static ExclusiveareaPackage getPackage() {
        return ExclusiveareaPackage.eINSTANCE;
    }
}

