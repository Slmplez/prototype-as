/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForPlainText;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LanguageSpecific;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguagePlainText;

public interface LPlainText
extends LanguageSpecific,
MixedContentForPlainText {
    public MultiLanguagePlainText getMultiLanguagePlainText();

    public void setMultiLanguagePlainText(MultiLanguagePlainText var1);
}

