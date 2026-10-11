/*
 * Decompiled with CFR 0.152.
 */
package autosar40.standardization.blueprintdedicated.portprotoypeblueprint;

import autosar40.standardization.abstractblueprintstructure.AtpBlueprintMapping;
import autosar40.standardization.blueprintdedicated.portprotoypeblueprint.PortPrototypeBlueprint;
import autosar40.swcomponent.components.PortPrototype;

public interface PortPrototypeBlueprintMapping
extends AtpBlueprintMapping {
    public PortPrototypeBlueprint getPortPrototypeBlueprint();

    public void setPortPrototypeBlueprint(PortPrototypeBlueprint var1);

    public PortPrototype getDerivedPortPrototype();

    public void setDerivedPortPrototype(PortPrototype var1);
}

