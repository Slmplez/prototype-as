/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.standardization.blueprintdedicated.portprotoypeblueprint;

import autosar40.standardization.blueprintdedicated.portprotoypeblueprint.PortPrototypeBlueprint;
import autosar40.standardization.blueprintdedicated.portprotoypeblueprint.PortPrototypeBlueprintInitValue;
import autosar40.standardization.blueprintdedicated.portprotoypeblueprint.PortPrototypeBlueprintMapping;
import autosar40.standardization.blueprintdedicated.portprotoypeblueprint.PortprotoypeblueprintPackage;
import autosar40.standardization.blueprintdedicated.portprotoypeblueprint.impl.PortprotoypeblueprintFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface PortprotoypeblueprintFactory
extends EFactory {
    public static final PortprotoypeblueprintFactory eINSTANCE = PortprotoypeblueprintFactoryImpl.init();

    public PortPrototypeBlueprint createPortPrototypeBlueprint();

    public PortPrototypeBlueprintInitValue createPortPrototypeBlueprintInitValue();

    public PortPrototypeBlueprintMapping createPortPrototypeBlueprintMapping();

    public PortprotoypeblueprintPackage getPortprotoypeblueprintPackage();
}

