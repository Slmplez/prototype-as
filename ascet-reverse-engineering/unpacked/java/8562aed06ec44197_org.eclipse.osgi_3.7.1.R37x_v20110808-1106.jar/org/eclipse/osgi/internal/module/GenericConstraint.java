/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.module;

import org.eclipse.osgi.internal.module.GenericCapability;
import org.eclipse.osgi.internal.module.ResolverBundle;
import org.eclipse.osgi.internal.module.ResolverConstraint;
import org.eclipse.osgi.internal.module.VersionSupplier;
import org.eclipse.osgi.service.resolver.GenericSpecification;

public class GenericConstraint
extends ResolverConstraint {
    private boolean supplierHasUses;

    GenericConstraint(ResolverBundle bundle, GenericSpecification constraint) {
        super(bundle, constraint);
    }

    boolean isOptional() {
        return (((GenericSpecification)this.constraint).getResolution() & 1) != 0;
    }

    boolean isMultiple() {
        return !this.supplierHasUses && (((GenericSpecification)this.constraint).getResolution() & 2) != 0;
    }

    public String getNameSpace() {
        return ((GenericSpecification)this.getVersionConstraint()).getType();
    }

    public VersionSupplier[] getMatchingCapabilities() {
        VersionSupplier[] versionSupplierArray;
        if (this.isMultiple()) {
            return this.getPossibleSuppliers();
        }
        VersionSupplier supplier = this.getSelectedSupplier();
        if (supplier == null) {
            versionSupplierArray = null;
        } else {
            VersionSupplier[] versionSupplierArray2 = new VersionSupplier[1];
            versionSupplierArray = versionSupplierArray2;
            versionSupplierArray2[0] = supplier;
        }
        return versionSupplierArray;
    }

    void addPossibleSupplier(VersionSupplier supplier) {
        this.supplierHasUses |= ((GenericCapability)supplier).getUsesDirective() != null;
        super.addPossibleSupplier(supplier);
    }

    void clearPossibleSuppliers() {
        super.clearPossibleSuppliers();
        this.supplierHasUses = false;
    }

    boolean supplierHasUses() {
        return this.supplierHasUses;
    }
}

