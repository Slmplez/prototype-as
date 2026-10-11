/*
 * Decompiled with CFR 0.152.
 */
package autosar40.standardization.blueprintdedicated.portinterfaceblueprint;

import autosar40.standardization.abstractblueprintstructure.AtpBlueprintMapping;
import autosar40.swcomponent.portinterface.PortInterface;

public interface PortInterfaceBlueprintMapping
extends AtpBlueprintMapping {
    public PortInterface getPortInterfaceBlueprint();

    public void setPortInterfaceBlueprint(PortInterface var1);

    public PortInterface getDerivedPortInterface();

    public void setDerivedPortInterface(PortInterface var1);
}

