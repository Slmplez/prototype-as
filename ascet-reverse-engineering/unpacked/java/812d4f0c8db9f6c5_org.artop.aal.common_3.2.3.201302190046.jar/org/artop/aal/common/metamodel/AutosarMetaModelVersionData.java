/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.sphinx.emf.metamodel.MetaModelVersionData
 */
package org.artop.aal.common.metamodel;

import org.eclipse.core.runtime.Assert;
import org.eclipse.sphinx.emf.metamodel.MetaModelVersionData;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class AutosarMetaModelVersionData
extends MetaModelVersionData
implements Comparable<AutosarMetaModelVersionData> {
    private int major;
    private int minor;
    private int revision;

    public AutosarMetaModelVersionData(String nsPostfix, String ePackageNsURIPostfixPattern, String name, int major, int minor, int revision, int ordinal) {
        super(nsPostfix, ePackageNsURIPostfixPattern, name, ordinal);
        this.major = major;
        this.minor = minor;
        this.revision = revision;
    }

    public int getMajor() {
        return this.major;
    }

    public int getMinor() {
        return this.minor;
    }

    public int getRevision() {
        return this.revision;
    }

    @Override
    public int compareTo(AutosarMetaModelVersionData other) {
        int result = new Integer(this.major).compareTo(other.major);
        if (result != 0) {
            return result;
        }
        result = new Integer(this.minor).compareTo(other.minor);
        if (result != 0) {
            return result;
        }
        result = new Integer(this.revision).compareTo(other.revision);
        return result;
    }

    private static int calculateOrdinal(int major, int minor, int revision) {
        AutosarMetaModelVersionData.assertRange(major);
        AutosarMetaModelVersionData.assertRange(minor);
        AutosarMetaModelVersionData.assertRange(revision);
        int ordinal = 0;
        ordinal = ordinal * 100 + major;
        ordinal = ordinal * 100 + minor;
        ordinal = ordinal * 100 + revision;
        return ordinal;
    }

    private static void assertRange(int i) {
        Assert.isTrue((i >= 0 && i < 100 ? 1 : 0) != 0);
    }
}

