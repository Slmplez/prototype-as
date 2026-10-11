/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ant.core;

import java.net.URL;

public interface IAntClasspathEntry {
    public String getLabel();

    public URL getEntryURL();

    public boolean isEclipseRuntimeRequired();
}

