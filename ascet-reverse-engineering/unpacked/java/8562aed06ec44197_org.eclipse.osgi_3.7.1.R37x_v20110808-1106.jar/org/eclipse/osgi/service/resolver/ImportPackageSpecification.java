/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.service.resolver;

import java.util.Map;
import org.eclipse.osgi.service.resolver.VersionConstraint;
import org.eclipse.osgi.service.resolver.VersionRange;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ImportPackageSpecification
extends VersionConstraint {
    public static final String RESOLUTION_STATIC = "static";
    public static final String RESOLUTION_OPTIONAL = "optional";
    public static final String RESOLUTION_DYNAMIC = "dynamic";

    public String getBundleSymbolicName();

    public VersionRange getBundleVersionRange();

    public Map<String, Object> getAttributes();

    public Map<String, Object> getDirectives();

    public Object getDirective(String var1);
}

