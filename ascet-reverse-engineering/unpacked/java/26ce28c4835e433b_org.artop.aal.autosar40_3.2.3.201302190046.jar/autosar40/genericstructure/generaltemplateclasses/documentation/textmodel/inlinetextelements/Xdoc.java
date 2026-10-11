/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.Url;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForParagraph;
import autosar40.genericstructure.generaltemplateclasses.identifiable.SingleLanguageReferrable;
import javax.xml.datatype.XMLGregorianCalendar;

public interface Xdoc
extends SingleLanguageReferrable {
    public MixedContentForParagraph getMixedContentForParagraph();

    public void setMixedContentForParagraph(MixedContentForParagraph var1);

    public String getNumber();

    public void setNumber(String var1);

    public void unsetNumber();

    public boolean isSetNumber();

    public String getState();

    public void setState(String var1);

    public void unsetState();

    public boolean isSetState();

    public XMLGregorianCalendar getDate();

    public void setDate(XMLGregorianCalendar var1);

    public void unsetDate();

    public boolean isSetDate();

    public String getPublisher();

    public void setPublisher(String var1);

    public void unsetPublisher();

    public boolean isSetPublisher();

    public Url getUrl();

    public void setUrl(Url var1);

    public String getPosition();

    public void setPosition(String var1);

    public void unsetPosition();

    public boolean isSetPosition();
}

