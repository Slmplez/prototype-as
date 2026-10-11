/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.identifiable;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguageOverviewParagraph;

public interface Describable
extends ARObject {
    public MultiLanguageOverviewParagraph getDesc();

    public void setDesc(MultiLanguageOverviewParagraph var1);

    public DocumentationBlock getIntroduction();

    public void setIntroduction(DocumentationBlock var1);
}

