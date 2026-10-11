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
package autosar40.system.pncmapping.impl;

import autosar40.system.pncmapping.PncMapping;
import autosar40.system.pncmapping.PncmappingFactory;
import autosar40.system.pncmapping.PncmappingPackage;
import autosar40.system.pncmapping.impl.PncMappingImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class PncmappingFactoryImpl
extends EFactoryImpl
implements PncmappingFactory {
    public static PncmappingFactory init() {
        try {
            PncmappingFactory thePncmappingFactory = (PncmappingFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/system/pm");
            if (thePncmappingFactory != null) {
                return thePncmappingFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new PncmappingFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createPncMapping();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public PncMapping createPncMapping() {
        PncMappingImpl pncMapping = new PncMappingImpl();
        return pncMapping;
    }

    public PncmappingPackage getPncmappingPackage() {
        return (PncmappingPackage)this.getEPackage();
    }

    @Deprecated
    public static PncmappingPackage getPackage() {
        return PncmappingPackage.eINSTANCE;
    }
}

