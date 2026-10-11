/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.text.bundle;

import org.eclipse.pde.internal.core.text.bundle.ManifestHeader;
import org.eclipse.pde.internal.core.text.bundle.PDEManifestElement;

public class ExecutionEnvironment
extends PDEManifestElement {
    private static final long serialVersionUID = 1L;

    public ExecutionEnvironment(ManifestHeader header, String value) {
        super(header, value);
    }

    public String getName() {
        return this.getValue();
    }

    public String toString() {
        return this.getName();
    }
}

