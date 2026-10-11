/*
 * Decompiled with CFR 0.152.
 */
package autosar40.standardization.abstractblueprintstructure;

import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;

public interface AtpBlueprint
extends Identifiable {
    public String getShortNamePattern();

    public void setShortNamePattern(String var1);

    public void unsetShortNamePattern();

    public boolean isSetShortNamePattern();
}

