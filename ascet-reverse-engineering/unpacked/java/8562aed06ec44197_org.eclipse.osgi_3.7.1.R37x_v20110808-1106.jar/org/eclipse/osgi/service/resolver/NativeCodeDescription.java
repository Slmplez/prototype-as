/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.service.resolver;

import org.eclipse.osgi.service.resolver.BaseDescription;
import org.eclipse.osgi.service.resolver.VersionRange;
import org.osgi.framework.Filter;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface NativeCodeDescription
extends BaseDescription,
Comparable<NativeCodeDescription> {
    public String[] getNativePaths();

    public String[] getProcessors();

    public String[] getOSNames();

    public VersionRange[] getOSVersions();

    public String[] getLanguages();

    public Filter getFilter();

    @Override
    public int compareTo(NativeCodeDescription var1);

    public boolean hasInvalidNativePaths();
}

