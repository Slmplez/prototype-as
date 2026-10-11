/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.core;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;

public class ReferenceInputStream
extends InputStream {
    protected URL reference;

    public ReferenceInputStream(URL reference) {
        this.reference = reference;
    }

    public int read() throws IOException {
        throw new IOException();
    }

    public URL getReference() {
        return this.reference;
    }
}

