/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.registry;

import org.eclipse.core.internal.registry.Extension;
import org.eclipse.core.internal.registry.ExtensionRegistry;

public class ExtensionMulti
extends Extension {
    protected ExtensionMulti(ExtensionRegistry registry, boolean persist) {
        super(registry, persist);
    }

    protected ExtensionMulti(int self, String simpleId, String namespace, int[] children, int extraData, ExtensionRegistry registry, boolean persist) {
        super(self, simpleId, namespace, children, extraData, registry, persist);
    }

    protected String getLabel(String locale) {
        String[] translated = this.registry.translate(new String[]{this.getLabelAsIs()}, this.getContributor(), locale);
        return translated[0];
    }

    protected String getLabel() {
        return this.getLabel(this.getLocale());
    }
}

