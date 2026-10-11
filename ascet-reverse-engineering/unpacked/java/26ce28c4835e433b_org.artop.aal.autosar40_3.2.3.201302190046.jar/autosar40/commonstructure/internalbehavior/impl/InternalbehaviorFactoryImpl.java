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
package autosar40.commonstructure.internalbehavior.impl;

import autosar40.commonstructure.internalbehavior.ExclusiveArea;
import autosar40.commonstructure.internalbehavior.ExecutableEntity;
import autosar40.commonstructure.internalbehavior.InternalbehaviorFactory;
import autosar40.commonstructure.internalbehavior.InternalbehaviorPackage;
import autosar40.commonstructure.internalbehavior.impl.ExclusiveAreaImpl;
import autosar40.commonstructure.internalbehavior.impl.ExecutableEntityImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class InternalbehaviorFactoryImpl
extends EFactoryImpl
implements InternalbehaviorFactory {
    public static InternalbehaviorFactory init() {
        try {
            InternalbehaviorFactory theInternalbehaviorFactory = (InternalbehaviorFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/ib");
            if (theInternalbehaviorFactory != null) {
                return theInternalbehaviorFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new InternalbehaviorFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createExclusiveArea();
            }
            case 2: {
                return this.createExecutableEntity();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public ExclusiveArea createExclusiveArea() {
        ExclusiveAreaImpl exclusiveArea = new ExclusiveAreaImpl();
        return exclusiveArea;
    }

    public ExecutableEntity createExecutableEntity() {
        ExecutableEntityImpl executableEntity = new ExecutableEntityImpl();
        return executableEntity;
    }

    public InternalbehaviorPackage getInternalbehaviorPackage() {
        return (InternalbehaviorPackage)this.getEPackage();
    }

    @Deprecated
    public static InternalbehaviorPackage getPackage() {
        return InternalbehaviorPackage.eINSTANCE;
    }
}

