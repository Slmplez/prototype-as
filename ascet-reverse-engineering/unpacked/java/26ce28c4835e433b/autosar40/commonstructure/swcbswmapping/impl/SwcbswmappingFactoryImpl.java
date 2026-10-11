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
package autosar40.commonstructure.swcbswmapping.impl;

import autosar40.commonstructure.swcbswmapping.SwcBswMapping;
import autosar40.commonstructure.swcbswmapping.SwcBswRunnableMapping;
import autosar40.commonstructure.swcbswmapping.SwcBswSynchronizedModeGroupPrototype;
import autosar40.commonstructure.swcbswmapping.SwcBswSynchronizedTrigger;
import autosar40.commonstructure.swcbswmapping.SwcbswmappingFactory;
import autosar40.commonstructure.swcbswmapping.SwcbswmappingPackage;
import autosar40.commonstructure.swcbswmapping.impl.SwcBswMappingImpl;
import autosar40.commonstructure.swcbswmapping.impl.SwcBswRunnableMappingImpl;
import autosar40.commonstructure.swcbswmapping.impl.SwcBswSynchronizedModeGroupPrototypeImpl;
import autosar40.commonstructure.swcbswmapping.impl.SwcBswSynchronizedTriggerImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class SwcbswmappingFactoryImpl
extends EFactoryImpl
implements SwcbswmappingFactory {
    public static SwcbswmappingFactory init() {
        try {
            SwcbswmappingFactory theSwcbswmappingFactory = (SwcbswmappingFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/sbm");
            if (theSwcbswmappingFactory != null) {
                return theSwcbswmappingFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new SwcbswmappingFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createSwcBswRunnableMapping();
            }
            case 1: {
                return this.createSwcBswSynchronizedModeGroupPrototype();
            }
            case 2: {
                return this.createSwcBswSynchronizedTrigger();
            }
            case 3: {
                return this.createSwcBswMapping();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public SwcBswRunnableMapping createSwcBswRunnableMapping() {
        SwcBswRunnableMappingImpl swcBswRunnableMapping = new SwcBswRunnableMappingImpl();
        return swcBswRunnableMapping;
    }

    public SwcBswSynchronizedModeGroupPrototype createSwcBswSynchronizedModeGroupPrototype() {
        SwcBswSynchronizedModeGroupPrototypeImpl swcBswSynchronizedModeGroupPrototype = new SwcBswSynchronizedModeGroupPrototypeImpl();
        return swcBswSynchronizedModeGroupPrototype;
    }

    public SwcBswSynchronizedTrigger createSwcBswSynchronizedTrigger() {
        SwcBswSynchronizedTriggerImpl swcBswSynchronizedTrigger = new SwcBswSynchronizedTriggerImpl();
        return swcBswSynchronizedTrigger;
    }

    public SwcBswMapping createSwcBswMapping() {
        SwcBswMappingImpl swcBswMapping = new SwcBswMappingImpl();
        return swcBswMapping;
    }

    public SwcbswmappingPackage getSwcbswmappingPackage() {
        return (SwcbswmappingPackage)this.getEPackage();
    }

    @Deprecated
    public static SwcbswmappingPackage getPackage() {
        return SwcbswmappingPackage.eINSTANCE;
    }
}

