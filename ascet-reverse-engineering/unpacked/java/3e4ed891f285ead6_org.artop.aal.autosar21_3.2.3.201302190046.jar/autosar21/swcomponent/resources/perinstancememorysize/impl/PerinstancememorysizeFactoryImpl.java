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
package autosar21.swcomponent.resources.perinstancememorysize.impl;

import autosar21.swcomponent.resources.perinstancememorysize.PerInstanceMemorySize;
import autosar21.swcomponent.resources.perinstancememorysize.PerinstancememorysizeFactory;
import autosar21.swcomponent.resources.perinstancememorysize.PerinstancememorysizePackage;
import autosar21.swcomponent.resources.perinstancememorysize.impl.PerInstanceMemorySizeImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class PerinstancememorysizeFactoryImpl
extends EFactoryImpl
implements PerinstancememorysizeFactory {
    public static PerinstancememorysizeFactory init() {
        try {
            PerinstancememorysizeFactory thePerinstancememorysizeFactory = (PerinstancememorysizeFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/swc/r/pims");
            if (thePerinstancememorysizeFactory != null) {
                return thePerinstancememorysizeFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new PerinstancememorysizeFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createPerInstanceMemorySize();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public PerInstanceMemorySize createPerInstanceMemorySize() {
        PerInstanceMemorySizeImpl perInstanceMemorySize = new PerInstanceMemorySizeImpl();
        return perInstanceMemorySize;
    }

    public PerinstancememorysizePackage getPerinstancememorysizePackage() {
        return (PerinstancememorysizePackage)this.getEPackage();
    }

    @Deprecated
    public static PerinstancememorysizePackage getPackage() {
        return PerinstancememorysizePackage.eINSTANCE;
    }
}

