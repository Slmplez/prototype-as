/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.module;

import org.eclipse.osgi.internal.module.ResolverBundle;
import org.eclipse.osgi.internal.module.VersionSupplier;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.VersionConstraint;
import org.osgi.framework.wiring.BundleRequirement;

public abstract class ResolverConstraint {
    protected final ResolverBundle bundle;
    protected VersionConstraint constraint;
    private BundleRequirement requrement;
    private VersionSupplier[] possibleSuppliers;
    private int selectedSupplierIndex = 0;

    ResolverConstraint(ResolverBundle bundle, VersionConstraint constraint) {
        this.bundle = bundle;
        this.constraint = constraint;
        this.requrement = constraint.getRequirement();
    }

    ResolverBundle getBundle() {
        return this.bundle;
    }

    BundleDescription getBundleDescription() {
        return this.bundle.getBundleDescription();
    }

    boolean isFromFragment() {
        return this.constraint.getBundle().getHost() != null;
    }

    boolean isSatisfiedBy(VersionSupplier vs) {
        if (vs.getResolverBundle().isUninstalled() || !this.bundle.getResolver().getPermissionChecker().checkPermission(this.constraint, vs.getBaseDescription())) {
            return false;
        }
        return vs.getSubstitute() == null && this.constraint.isSatisfiedBy(vs.getBaseDescription());
    }

    VersionConstraint getVersionConstraint() {
        return this.constraint;
    }

    public String getName() {
        return this.constraint.getName();
    }

    public String toString() {
        return this.constraint.toString();
    }

    abstract boolean isOptional();

    void addPossibleSupplier(VersionSupplier supplier) {
        if (supplier == null) {
            return;
        }
        if (this.possibleSuppliers == null) {
            this.possibleSuppliers = new VersionSupplier[]{supplier};
            return;
        }
        VersionSupplier[] newSuppliers = new VersionSupplier[this.possibleSuppliers.length + 1];
        System.arraycopy(this.possibleSuppliers, 0, newSuppliers, 0, this.possibleSuppliers.length);
        newSuppliers[this.possibleSuppliers.length] = supplier;
        this.possibleSuppliers = newSuppliers;
    }

    public void removePossibleSupplier(VersionSupplier supplier) {
        if (this.possibleSuppliers == null || supplier == null) {
            return;
        }
        int index = -1;
        int i = 0;
        while (i < this.possibleSuppliers.length) {
            if (this.possibleSuppliers[i] == supplier) {
                index = i;
                break;
            }
            ++i;
        }
        if (index >= 0) {
            if (this.possibleSuppliers.length == 1) {
                this.possibleSuppliers = null;
                return;
            }
            VersionSupplier[] newSuppliers = new VersionSupplier[this.possibleSuppliers.length - 1];
            System.arraycopy(this.possibleSuppliers, 0, newSuppliers, 0, index);
            if (index < this.possibleSuppliers.length - 1) {
                System.arraycopy(this.possibleSuppliers, index + 1, newSuppliers, index, this.possibleSuppliers.length - index - 1);
            }
            this.possibleSuppliers = newSuppliers;
        }
    }

    int getNumPossibleSuppliers() {
        if (this.possibleSuppliers == null) {
            return 0;
        }
        return this.possibleSuppliers.length;
    }

    boolean selectNextSupplier() {
        if (this.possibleSuppliers == null || this.selectedSupplierIndex >= this.possibleSuppliers.length) {
            return false;
        }
        ++this.selectedSupplierIndex;
        return this.selectedSupplierIndex < this.possibleSuppliers.length;
    }

    VersionSupplier getSelectedSupplier() {
        if (this.possibleSuppliers == null || this.selectedSupplierIndex >= this.possibleSuppliers.length) {
            return null;
        }
        return this.possibleSuppliers[this.selectedSupplierIndex];
    }

    void setSelectedSupplier(int selectedSupplier) {
        this.selectedSupplierIndex = selectedSupplier;
    }

    int getSelectedSupplierIndex() {
        return this.selectedSupplierIndex;
    }

    VersionSupplier[] getPossibleSuppliers() {
        return this.possibleSuppliers;
    }

    void clearPossibleSuppliers() {
        this.possibleSuppliers = null;
        this.selectedSupplierIndex = 0;
    }

    void setVersionConstraint(VersionConstraint constraint) {
        this.constraint = constraint;
        this.requrement = constraint.getRequirement();
    }

    BundleRequirement getRequirement() {
        return this.requrement;
    }
}

