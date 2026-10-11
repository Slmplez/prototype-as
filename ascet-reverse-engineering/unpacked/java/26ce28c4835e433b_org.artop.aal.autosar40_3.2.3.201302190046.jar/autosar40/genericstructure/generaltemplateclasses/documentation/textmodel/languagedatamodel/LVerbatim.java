/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForVerbatim;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LanguageSpecific;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguageVerbatim;

public interface LVerbatim
extends LanguageSpecific,
MixedContentForVerbatim {
    public MultiLanguageVerbatim getMultiLanguageVerbatim();

    public void setMultiLanguageVerbatim(MultiLanguageVerbatim var1);
}

