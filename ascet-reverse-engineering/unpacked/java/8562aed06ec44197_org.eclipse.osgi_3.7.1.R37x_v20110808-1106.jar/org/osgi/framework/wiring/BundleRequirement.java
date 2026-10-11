/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.framework.wiring;

import java.util.Map;
import org.osgi.framework.wiring.BundleCapability;
import org.osgi.framework.wiring.BundleRevision;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface BundleRequirement {
    public String getNamespace();

    public Map<String, String> getDirectives();

    public Map<String, Object> getAttributes();

    public BundleRevision getRevision();

    public boolean matches(BundleCapability var1);
}

