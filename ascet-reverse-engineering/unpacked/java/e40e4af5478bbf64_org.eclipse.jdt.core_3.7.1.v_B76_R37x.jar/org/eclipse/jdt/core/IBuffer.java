/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.text.edits.TextEdit
 *  org.eclipse.text.edits.UndoEdit
 */
package org.eclipse.jdt.core;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IBufferChangedListener;
import org.eclipse.jdt.core.IOpenable;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.text.edits.TextEdit;
import org.eclipse.text.edits.UndoEdit;

public interface IBuffer {
    public void addBufferChangedListener(IBufferChangedListener var1);

    public void append(char[] var1);

    public void append(String var1);

    public void close();

    public char getChar(int var1);

    public char[] getCharacters();

    public String getContents();

    public int getLength();

    public IOpenable getOwner();

    public String getText(int var1, int var2) throws IndexOutOfBoundsException;

    public IResource getUnderlyingResource();

    public boolean hasUnsavedChanges();

    public boolean isClosed();

    public boolean isReadOnly();

    public void removeBufferChangedListener(IBufferChangedListener var1);

    public void replace(int var1, int var2, char[] var3);

    public void replace(int var1, int var2, String var3);

    public void save(IProgressMonitor var1, boolean var2) throws JavaModelException;

    public void setContents(char[] var1);

    public void setContents(String var1);

    public static interface ITextEditCapability {
        public UndoEdit applyTextEdit(TextEdit var1, IProgressMonitor var2) throws JavaModelException;
    }
}

