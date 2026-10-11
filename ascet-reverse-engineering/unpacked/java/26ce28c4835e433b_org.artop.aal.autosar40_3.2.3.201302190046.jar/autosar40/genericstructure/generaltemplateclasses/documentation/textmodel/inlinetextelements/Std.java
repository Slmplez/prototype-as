/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.Url;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForParagraph;
import autosar40.genericstructure.generaltemplateclasses.identifiable.SingleLanguageReferrable;
import javax.xml.datatype.XMLGregorianCalendar;

public interface Std
extends SingleLanguageReferrable {
    public MixedContentForParagraph getMixedContentForParagraph();

    public void setMixedContentForParagraph(MixedContentForParagraph var1);

    public String getSubtitle();

    public void setSubtitle(String var1);

    public void unsetSubtitle();

    public boolean isSetSubtitle();

    public String getState();

    public void setState(String var1);

    public void unsetState();

    public boolean isSetState();

    public XMLGregorianCalendar getDate();

    public void setDate(XMLGregorianCalendar var1);

    public void unsetDate();

    public boolean isSetDate();

    public Url getUrl();

    public void setUrl(Url var1);

    public String getPosition();

    public void setPosition(String var1);

    public void unsetPosition();

    public boolean isSetPosition();
}

