/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.core.resources.IFile;
import org.eclipse.jdt.core.IOpenable;
import org.eclipse.jdt.internal.core.Buffer;

public class NullBuffer
extends Buffer {
    public NullBuffer(IFile file, IOpenable owner, boolean readOnly) {
        super(file, owner, readOnly);
    }
}

