/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.standardization.blueprintdedicated.portinterfaceblueprint;

import autosar40.standardization.blueprintdedicated.portinterfaceblueprint.PortInterfaceBlueprintMapping;
import autosar40.standardization.blueprintdedicated.portinterfaceblueprint.PortinterfaceblueprintPackage;
import autosar40.standardization.blueprintdedicated.portinterfaceblueprint.impl.PortinterfaceblueprintFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface PortinterfaceblueprintFactory
extends EFactory {
    public static final PortinterfaceblueprintFactory eINSTANCE = PortinterfaceblueprintFactoryImpl.init();

    public PortInterfaceBlueprintMapping createPortInterfaceBlueprintMapping();

    public PortinterfaceblueprintPackage getPortinterfaceblueprintPackage();
}

