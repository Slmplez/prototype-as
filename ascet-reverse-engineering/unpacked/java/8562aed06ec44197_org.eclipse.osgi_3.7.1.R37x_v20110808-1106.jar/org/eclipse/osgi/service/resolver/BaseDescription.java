/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.service.resolver;

import java.util.Map;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.osgi.framework.Version;
import org.osgi.framework.wiring.BundleCapability;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface BaseDescription {
    public String getName();

    public Version getVersion();

    public BundleDescription getSupplier();

    public Map<String, String> getDeclaredDirectives();

    public Map<String, Object> getDeclaredAttributes();

    public BundleCapability getCapability();
}

