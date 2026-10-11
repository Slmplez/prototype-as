/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal.toc;

import org.eclipse.help.IToc;
import org.eclipse.help.ITocContribution;
import org.eclipse.help.internal.toc.Toc;
import org.eclipse.help.internal.util.ProductPreferences;

public class TocContribution
implements ITocContribution {
    private String categoryId;
    private String contributorId;
    private String[] extraDocuments;
    private String id;
    private String locale;
    private Toc toc;
    private boolean isPrimary;
    private boolean isSubToc = false;

    public String getCategoryId() {
        return this.categoryId;
    }

    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId;
    }

    public String getContributorId() {
        return this.contributorId;
    }

    public void setContributorId(String contributorId) {
        this.contributorId = contributorId;
    }

    public String[] getExtraDocuments() {
        return this.extraDocuments;
    }

    public void setExtraDocuments(String[] extraDocuments) {
        this.extraDocuments = extraDocuments;
    }

    public String getId() {
        return this.id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getLocale() {
        return this.locale;
    }

    public void setLocale(String locale) {
        this.locale = locale;
    }

    public String getLinkTo() {
        String link = this.toc.getLinkTo();
        return ProductPreferences.resolveSpecialIdentifiers(link);
    }

    public void setLinkTo(String linkTo) {
        this.toc.setLinkTo(linkTo);
    }

    public IToc getToc() {
        return this.toc;
    }

    public void setToc(Toc toc) {
        this.toc = toc;
        toc.setTocContribution(this);
    }

    public boolean isPrimary() {
        return this.isPrimary;
    }

    public void setPrimary(boolean isPrimary) {
        this.isPrimary = isPrimary;
    }

    public boolean isSubToc() {
        return this.isSubToc;
    }

    public void setSubToc(boolean isSubToc) {
        this.isSubToc = isSubToc;
    }
}

