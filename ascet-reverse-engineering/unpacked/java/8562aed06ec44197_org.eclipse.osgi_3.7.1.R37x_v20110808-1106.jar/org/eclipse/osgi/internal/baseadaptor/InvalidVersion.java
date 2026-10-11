/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.baseadaptor;

import org.osgi.framework.Version;

public class InvalidVersion
extends Version {
    private String invalidVersion;

    public InvalidVersion(String badVersion) {
        super(0, 0, 0, null);
        this.invalidVersion = badVersion;
    }

    public String getInvalidVersion() {
        return this.invalidVersion;
    }

    public String toString() {
        return this.invalidVersion;
    }
}

