/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.service.resolver;

import org.eclipse.osgi.service.resolver.BundleDescription;

public final class DisabledInfo {
    private final String policyName;
    private final String message;
    private final BundleDescription bundle;

    public DisabledInfo(String policyName, String message, BundleDescription bundle) {
        if (policyName == null || bundle == null) {
            throw new IllegalArgumentException();
        }
        this.policyName = policyName;
        this.message = message;
        this.bundle = bundle;
    }

    public String getPolicyName() {
        return this.policyName;
    }

    public String getMessage() {
        return this.message;
    }

    public BundleDescription getBundle() {
        return this.bundle;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof DisabledInfo)) {
            return false;
        }
        DisabledInfo other = (DisabledInfo)obj;
        return this.getBundle() == other.getBundle() && this.getPolicyName().equals(other.getPolicyName()) && (this.getMessage() == null ? other.getMessage() == null : this.getMessage().equals(other.getMessage()));
    }

    public int hashCode() {
        int result = 1;
        result = 31 * result + (this.bundle == null ? 0 : this.bundle.hashCode());
        result = 31 * result + (this.policyName == null ? 0 : this.policyName.hashCode());
        result = 31 * result + (this.message == null ? 0 : this.message.hashCode());
        return result;
    }
}

