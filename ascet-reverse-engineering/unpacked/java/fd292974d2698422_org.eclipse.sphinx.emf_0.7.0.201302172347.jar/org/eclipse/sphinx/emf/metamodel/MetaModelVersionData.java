/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.sphinx.emf.metamodel;

import org.eclipse.core.runtime.Assert;

public class MetaModelVersionData {
    private String fNsPostfix;
    private String fEPackageNsURIPostfixPattern;
    private String fName;
    @Deprecated
    private int fOrdinal;

    public MetaModelVersionData(String nsPostfix, String ePackageNsURIPostfixPattern, String name) {
        Assert.isNotNull((Object)name);
        this.fNsPostfix = nsPostfix;
        this.fEPackageNsURIPostfixPattern = ePackageNsURIPostfixPattern;
        this.fName = name;
    }

    @Deprecated
    public MetaModelVersionData(String nsPostfix, String ePackageNsURIPostfixPattern, String name, int ordinal) {
        Assert.isNotNull((Object)name);
        this.fNsPostfix = nsPostfix;
        this.fEPackageNsURIPostfixPattern = ePackageNsURIPostfixPattern;
        this.fName = name;
        this.fOrdinal = ordinal;
    }

    public String getNsPostfix() {
        return this.fNsPostfix;
    }

    @Deprecated
    public int getOrdinal() {
        return this.fOrdinal;
    }

    public String getEPackageNsURIPostfixPattern() {
        return this.fEPackageNsURIPostfixPattern;
    }

    public String getName() {
        return this.fName;
    }
}

