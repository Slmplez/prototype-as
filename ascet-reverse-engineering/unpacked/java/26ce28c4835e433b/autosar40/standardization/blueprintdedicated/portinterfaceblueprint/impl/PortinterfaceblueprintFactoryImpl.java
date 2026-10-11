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
package autosar40.standardization.blueprintdedicated.portinterfaceblueprint.impl;

import autosar40.standardization.blueprintdedicated.portinterfaceblueprint.PortInterfaceBlueprintMapping;
import autosar40.standardization.blueprintdedicated.portinterfaceblueprint.PortinterfaceblueprintFactory;
import autosar40.standardization.blueprintdedicated.portinterfaceblueprint.PortinterfaceblueprintPackage;
import autosar40.standardization.blueprintdedicated.portinterfaceblueprint.impl.PortInterfaceBlueprintMappingImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class PortinterfaceblueprintFactoryImpl
extends EFactoryImpl
implements PortinterfaceblueprintFactory {
    public static PortinterfaceblueprintFactory init() {
        try {
            PortinterfaceblueprintFactory thePortinterfaceblueprintFactory = (PortinterfaceblueprintFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/standardization/bd/pib");
            if (thePortinterfaceblueprintFactory != null) {
                return thePortinterfaceblueprintFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new PortinterfaceblueprintFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createPortInterfaceBlueprintMapping();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public PortInterfaceBlueprintMapping createPortInterfaceBlueprintMapping() {
        PortInterfaceBlueprintMappingImpl portInterfaceBlueprintMapping = new PortInterfaceBlueprintMappingImpl();
        return portInterfaceBlueprintMapping;
    }

    public PortinterfaceblueprintPackage getPortinterfaceblueprintPackage() {
        return (PortinterfaceblueprintPackage)this.getEPackage();
    }

    @Deprecated
    public static PortinterfaceblueprintPackage getPackage() {
        return PortinterfaceblueprintPackage.eINSTANCE;
    }
}

