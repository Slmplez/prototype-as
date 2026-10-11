/*
 * Decompiled with CFR 0.152.
 */
package autosar40.standardization.blueprintdedicated.genericblueprint;

import autosar40.standardization.abstractblueprintstructure.AtpBlueprint;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintMapping;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintable;

public interface BlueprintMapping
extends AtpBlueprintMapping {
    public AtpBlueprint getBlueprint();

    public void setBlueprint(AtpBlueprint var1);

    public AtpBlueprintable getDerivedObject();

    public void setDerivedObject(AtpBlueprintable var1);
}

