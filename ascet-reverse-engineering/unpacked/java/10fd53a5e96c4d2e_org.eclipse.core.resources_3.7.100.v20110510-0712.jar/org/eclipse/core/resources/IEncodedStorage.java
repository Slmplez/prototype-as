/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.core.resources;

import org.eclipse.core.resources.IStorage;
import org.eclipse.core.runtime.CoreException;

public interface IEncodedStorage
extends IStorage {
    public String getCharset() throws CoreException;
}

