/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.publisher.AbstractAdvice
 */
package org.eclipse.equinox.p2.publisher.eclipse;

import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.publisher.AbstractAdvice;
import org.eclipse.equinox.p2.publisher.eclipse.IBundleShapeAdvice;

public class BundleShapeAdvice
extends AbstractAdvice
implements IBundleShapeAdvice {
    private String shape;
    private Version version;
    private String id;

    public BundleShapeAdvice(String id, Version version, String shape) {
        this.id = id;
        this.version = version;
        this.shape = shape;
    }

    protected String getId() {
        return this.id;
    }

    protected Version getVersion() {
        return this.version;
    }

    public String getShape() {
        return this.shape;
    }
}

