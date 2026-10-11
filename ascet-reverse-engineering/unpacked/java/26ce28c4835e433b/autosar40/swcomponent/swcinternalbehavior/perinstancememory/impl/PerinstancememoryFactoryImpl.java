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
package autosar40.swcomponent.swcinternalbehavior.perinstancememory.impl;

import autosar40.swcomponent.swcinternalbehavior.perinstancememory.PerInstanceMemory;
import autosar40.swcomponent.swcinternalbehavior.perinstancememory.PerinstancememoryFactory;
import autosar40.swcomponent.swcinternalbehavior.perinstancememory.PerinstancememoryPackage;
import autosar40.swcomponent.swcinternalbehavior.perinstancememory.impl.PerInstanceMemoryImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class PerinstancememoryFactoryImpl
extends EFactoryImpl
implements PerinstancememoryFactory {
    public static PerinstancememoryFactory init() {
        try {
            PerinstancememoryFactory thePerinstancememoryFactory = (PerinstancememoryFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/swc/sib/pim");
            if (thePerinstancememoryFactory != null) {
                return thePerinstancememoryFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new PerinstancememoryFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createPerInstanceMemory();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public PerInstanceMemory createPerInstanceMemory() {
        PerInstanceMemoryImpl perInstanceMemory = new PerInstanceMemoryImpl();
        return perInstanceMemory;
    }

    public PerinstancememoryPackage getPerinstancememoryPackage() {
        return (PerinstancememoryPackage)this.getEPackage();
    }

    @Deprecated
    public static PerinstancememoryPackage getPackage() {
        return PerinstancememoryPackage.eINSTANCE;
    }
}

