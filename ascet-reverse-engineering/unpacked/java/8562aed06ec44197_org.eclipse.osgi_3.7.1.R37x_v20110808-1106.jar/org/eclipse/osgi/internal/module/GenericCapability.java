/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.module;

import org.eclipse.osgi.internal.module.ResolverBundle;
import org.eclipse.osgi.internal.module.VersionSupplier;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.GenericDescription;
import org.eclipse.osgi.util.ManifestElement;

public class GenericCapability
extends VersionSupplier {
    final ResolverBundle resolverBundle;
    final String[] uses;

    GenericCapability(ResolverBundle resolverBundle, GenericDescription base) {
        super(base);
        this.resolverBundle = resolverBundle;
        String usesDirective = base.getDeclaredDirectives().get("uses");
        this.uses = ManifestElement.getArrayFromList(usesDirective);
    }

    public BundleDescription getBundleDescription() {
        return this.getBaseDescription().getSupplier();
    }

    GenericDescription getGenericDescription() {
        return (GenericDescription)this.getBaseDescription();
    }

    public ResolverBundle getResolverBundle() {
        return this.resolverBundle;
    }

    String[] getUsesDirective() {
        return this.uses;
    }
}

