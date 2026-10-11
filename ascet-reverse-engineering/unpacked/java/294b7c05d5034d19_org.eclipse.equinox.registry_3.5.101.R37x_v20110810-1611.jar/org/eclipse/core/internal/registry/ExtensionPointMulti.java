/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.registry;

import org.eclipse.core.internal.registry.ExtensionPoint;
import org.eclipse.core.internal.registry.ExtensionRegistry;

public class ExtensionPointMulti
extends ExtensionPoint {
    protected ExtensionPointMulti(ExtensionRegistry registry, boolean persist) {
        super(registry, persist);
    }

    protected ExtensionPointMulti(int self, int[] children, int dataOffset, ExtensionRegistry registry, boolean persist) {
        super(self, children, dataOffset, registry, persist);
    }

    protected String getLabel(String locale) {
        String[] translated = this.registry.translate(new String[]{this.getLabelAsIs()}, this.getContributor(), locale);
        return translated[0];
    }

    protected String getLabel() {
        return this.getLabel(this.getLocale());
    }
}

