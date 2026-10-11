/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing;

import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;

public interface TraceReferrable
extends MultilanguageReferrable {
    public String getCategory();

    public void setCategory(String var1);

    public void unsetCategory();

    public boolean isSetCategory();
}

