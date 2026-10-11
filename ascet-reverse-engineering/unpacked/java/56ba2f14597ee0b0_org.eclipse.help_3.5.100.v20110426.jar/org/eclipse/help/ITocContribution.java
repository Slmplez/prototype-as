/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help;

import org.eclipse.help.IToc;

public interface ITocContribution {
    public String getCategoryId();

    public String getContributorId();

    public String[] getExtraDocuments();

    public String getId();

    public String getLocale();

    public String getLinkTo();

    public IToc getToc();

    public boolean isPrimary();
}

