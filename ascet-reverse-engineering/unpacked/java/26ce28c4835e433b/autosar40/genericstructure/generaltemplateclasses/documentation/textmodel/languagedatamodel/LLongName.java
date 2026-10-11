/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForLongName;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LanguageSpecific;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultilanguageLongName;

public interface LLongName
extends LanguageSpecific,
MixedContentForLongName {
    public MultilanguageLongName getMultilanguageLongName();

    public void setMultilanguageLongName(MultilanguageLongName var1);
}

