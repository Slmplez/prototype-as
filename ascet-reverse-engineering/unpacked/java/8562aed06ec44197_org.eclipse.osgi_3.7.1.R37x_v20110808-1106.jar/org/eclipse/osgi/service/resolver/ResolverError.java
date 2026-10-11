/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.service.resolver;

import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.VersionConstraint;

public interface ResolverError {
    public static final int MISSING_IMPORT_PACKAGE = 1;
    public static final int MISSING_REQUIRE_BUNDLE = 2;
    public static final int MISSING_FRAGMENT_HOST = 4;
    public static final int SINGLETON_SELECTION = 8;
    public static final int FRAGMENT_CONFLICT = 16;
    public static final int IMPORT_PACKAGE_USES_CONFLICT = 32;
    public static final int REQUIRE_BUNDLE_USES_CONFLICT = 64;
    public static final int IMPORT_PACKAGE_PERMISSION = 128;
    public static final int EXPORT_PACKAGE_PERMISSION = 256;
    public static final int REQUIRE_BUNDLE_PERMISSION = 512;
    public static final int PROVIDE_BUNDLE_PERMISSION = 1024;
    public static final int HOST_BUNDLE_PERMISSION = 2048;
    public static final int FRAGMENT_BUNDLE_PERMISSION = 4096;
    public static final int PLATFORM_FILTER = 8192;
    public static final int MISSING_EXECUTION_ENVIRONMENT = 16384;
    public static final int MISSING_GENERIC_CAPABILITY = 32768;
    public static final int NO_NATIVECODE_MATCH = 65536;
    public static final int INVALID_NATIVECODE_PATHS = 131072;
    public static final int DISABLED_BUNDLE = 262144;
    public static final int REQUIRE_CAPABILITY_PERMISSION = 524288;
    public static final int PROVIDE_CAPABILITY_PERMISSION = 0x100000;

    public BundleDescription getBundle();

    public int getType();

    public String getData();

    public VersionConstraint getUnsatisfiedConstraint();
}

