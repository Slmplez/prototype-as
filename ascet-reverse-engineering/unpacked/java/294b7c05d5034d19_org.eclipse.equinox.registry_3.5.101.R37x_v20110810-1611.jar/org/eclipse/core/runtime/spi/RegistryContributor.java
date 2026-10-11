/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.spi;

import org.eclipse.core.runtime.IContributor;

public final class RegistryContributor
implements IContributor {
    private String actualContributorId;
    private String actualContributorName;
    private String hostId;
    private String hostName;

    public RegistryContributor(String actualId, String actualName, String hostId, String hostName) {
        this.actualContributorId = actualId;
        this.actualContributorName = actualName;
        if (hostId != null) {
            this.hostId = hostId;
            this.hostName = hostName;
        } else {
            this.hostId = actualId;
            this.hostName = actualName;
        }
    }

    public String getActualId() {
        return this.actualContributorId;
    }

    public String getActualName() {
        return this.actualContributorName;
    }

    public String getId() {
        return this.hostId;
    }

    public String getName() {
        return this.hostName;
    }

    public String toString() {
        return String.valueOf(this.actualContributorName) + "[" + this.actualContributorId + "]";
    }
}

