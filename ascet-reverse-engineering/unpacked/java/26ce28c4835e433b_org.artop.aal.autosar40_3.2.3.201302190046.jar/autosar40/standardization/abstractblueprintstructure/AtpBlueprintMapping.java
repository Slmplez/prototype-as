/*
 * Decompiled with CFR 0.152.
 */
package autosar40.standardization.abstractblueprintstructure;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.standardization.blueprintmapping.BlueprintMappingSet;

public interface AtpBlueprintMapping
extends ARObject {
    public BlueprintMappingSet getBlueprintMappingSet();

    public void setBlueprintMappingSet(BlueprintMappingSet var1);
}

