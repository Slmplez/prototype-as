/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.Url;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForParagraph;
import autosar40.genericstructure.generaltemplateclasses.identifiable.SingleLanguageReferrable;

public interface Xfile
extends SingleLanguageReferrable {
    public MixedContentForParagraph getMixedContentForParagraph();

    public void setMixedContentForParagraph(MixedContentForParagraph var1);

    public Url getUrl();

    public void setUrl(Url var1);

    public String getTool();

    public void setTool(String var1);

    public void unsetTool();

    public boolean isSetTool();

    public String getToolVersion();

    public void setToolVersion(String var1);

    public void unsetToolVersion();

    public boolean isSetToolVersion();
}

