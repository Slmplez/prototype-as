/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.resources;

import java.util.EventListener;
import org.eclipse.core.resources.IResourceChangeEvent;

public interface IResourceChangeListener
extends EventListener {
    public void resourceChanged(IResourceChangeEvent var1);
}

