/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.resolver;

import org.eclipse.osgi.internal.resolver.BundleDescriptionImpl;
import org.eclipse.osgi.internal.resolver.StateMsg;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.ResolverError;
import org.eclipse.osgi.service.resolver.VersionConstraint;
import org.eclipse.osgi.util.NLS;

public final class ResolverErrorImpl
implements ResolverError {
    private final BundleDescriptionImpl bundle;
    private final int type;
    private final String data;
    private final VersionConstraint unsatisfied;

    public ResolverErrorImpl(BundleDescriptionImpl bundle, int type, String data, VersionConstraint unsatisfied) {
        this.bundle = bundle;
        this.data = data;
        this.type = type;
        this.unsatisfied = unsatisfied;
    }

    public BundleDescription getBundle() {
        return this.bundle;
    }

    public int getType() {
        return this.type;
    }

    public String getData() {
        return this.data;
    }

    public VersionConstraint getUnsatisfiedConstraint() {
        return this.unsatisfied;
    }

    public String toString() {
        switch (this.getType()) {
            case 128: 
            case 256: 
            case 512: 
            case 1024: 
            case 2048: 
            case 4096: 
            case 524288: 
            case 0x100000: {
                return NLS.bind(StateMsg.RES_ERROR_MISSING_PERMISSION, this.getData());
            }
            case 1: 
            case 2: 
            case 4: 
            case 16384: 
            case 32768: {
                return NLS.bind(StateMsg.RES_ERROR_MISSING_CONSTRAINT, this.getData());
            }
            case 16: {
                return NLS.bind(StateMsg.RES_ERROR_FRAGMENT_CONFLICT, this.getData());
            }
            case 32: 
            case 64: {
                return NLS.bind(StateMsg.RES_ERROR_USES_CONFLICT, this.getData());
            }
            case 8: {
                return NLS.bind(StateMsg.RES_ERROR_SINGLETON_CONFLICT, this.getData());
            }
            case 8192: {
                return NLS.bind(StateMsg.RES_ERROR_PLATFORM_FILTER, this.getData());
            }
            case 65536: {
                return NLS.bind(StateMsg.RES_ERROR_NO_NATIVECODE_MATCH, this.getData());
            }
            case 131072: {
                return NLS.bind(StateMsg.RES_ERROR_NATIVECODE_PATH_INVALID, this.getData());
            }
            case 262144: {
                return NLS.bind(StateMsg.RES_ERROR_DISABLEDBUNDLE, this.getData());
            }
        }
        return StateMsg.RES_ERROR_UNKNOWN;
    }
}

