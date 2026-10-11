/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.framework.wiring;

import java.util.List;
import org.osgi.framework.BundleReference;
import org.osgi.framework.Version;
import org.osgi.framework.wiring.BundleCapability;
import org.osgi.framework.wiring.BundleRequirement;
import org.osgi.framework.wiring.BundleWiring;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface BundleRevision
extends BundleReference {
    public static final String PACKAGE_NAMESPACE = "osgi.wiring.package";
    public static final String BUNDLE_NAMESPACE = "osgi.wiring.bundle";
    public static final String HOST_NAMESPACE = "osgi.wiring.host";
    public static final int TYPE_FRAGMENT = 1;

    public String getSymbolicName();

    public Version getVersion();

    public List<BundleCapability> getDeclaredCapabilities(String var1);

    public List<BundleRequirement> getDeclaredRequirements(String var1);

    public int getTypes();

    public BundleWiring getWiring();
}

