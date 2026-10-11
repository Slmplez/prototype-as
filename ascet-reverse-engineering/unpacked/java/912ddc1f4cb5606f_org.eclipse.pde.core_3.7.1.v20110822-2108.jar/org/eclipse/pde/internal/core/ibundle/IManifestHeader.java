/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.ibundle;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.core.text.IDocumentKey;

public interface IManifestHeader
extends IDocumentKey {
    public String getKey();

    public String getValue();

    public void setKey(String var1) throws CoreException;

    public void setValue(String var1);

    public void update();

    public void update(boolean var1);
}

