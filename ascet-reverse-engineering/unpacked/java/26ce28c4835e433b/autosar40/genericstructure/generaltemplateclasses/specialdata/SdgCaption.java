/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.specialdata;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguageOverviewParagraph;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.specialdata.Sdg;

public interface SdgCaption
extends MultilanguageReferrable {
    public Sdg getSdg();

    public void setSdg(Sdg var1);

    public MultiLanguageOverviewParagraph getDesc();

    public void setDesc(MultiLanguageOverviewParagraph var1);
}

