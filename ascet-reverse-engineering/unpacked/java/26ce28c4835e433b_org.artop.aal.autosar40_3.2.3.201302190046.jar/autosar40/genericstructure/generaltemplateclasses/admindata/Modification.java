/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.admindata;

import autosar40.genericstructure.generaltemplateclasses.admindata.DocRevision;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguageOverviewParagraph;

public interface Modification
extends ARObject {
    public DocRevision getDocRevision();

    public void setDocRevision(DocRevision var1);

    public MultiLanguageOverviewParagraph getChange();

    public void setChange(MultiLanguageOverviewParagraph var1);

    public MultiLanguageOverviewParagraph getReason();

    public void setReason(MultiLanguageOverviewParagraph var1);
}

