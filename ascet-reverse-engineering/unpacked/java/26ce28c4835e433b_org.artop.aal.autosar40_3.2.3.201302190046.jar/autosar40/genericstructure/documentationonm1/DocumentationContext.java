/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.documentationonm1;

import autosar40.genericstructure.documentationonm1.Documentation;
import autosar40.genericstructure.generaltemplateclasses.anyinstanceref.AnyInstanceRef;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;

public interface DocumentationContext
extends MultilanguageReferrable {
    public Documentation getDocumentation();

    public void setDocumentation(Documentation var1);

    public AnyInstanceRef getFeature();

    public void setFeature(AnyInstanceRef var1);

    public Identifiable getIdentifiable();

    public void setIdentifiable(Identifiable var1);
}

