/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.content.IContentDescription
 */
package org.eclipse.jdt.internal.core;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.content.IContentDescription;
import org.eclipse.jdt.core.BufferChangedEvent;
import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.IBufferChangedListener;
import org.eclipse.jdt.core.IOpenable;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.util.Util;

public class Buffer
implements IBuffer {
    protected IFile file;
    protected int flags;
    protected char[] contents;
    protected ArrayList changeListeners;
    protected IOpenable owner;
    protected int gapStart = -1;
    protected int gapEnd = -1;
    protected Object lock = new Object();
    protected static final int F_HAS_UNSAVED_CHANGES = 1;
    protected static final int F_IS_READ_ONLY = 2;
    protected static final int F_IS_CLOSED = 4;

    protected Buffer(IFile file, IOpenable owner, boolean readOnly) {
        this.file = file;
        this.owner = owner;
        if (file == null) {
            this.setReadOnly(readOnly);
        }
    }

    public synchronized void addBufferChangedListener(IBufferChangedListener listener) {
        if (this.changeListeners == null) {
            this.changeListeners = new ArrayList(5);
        }
        if (!this.changeListeners.contains(listener)) {
            this.changeListeners.add(listener);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void append(char[] text) {
        if (!this.isReadOnly()) {
            if (text == null || text.length == 0) {
                return;
            }
            int length = this.getLength();
            Object object = this.lock;
            synchronized (object) {
                if (this.contents == null) {
                    return;
                }
                this.moveAndResizeGap(length, text.length);
                System.arraycopy(text, 0, this.contents, length, text.length);
                this.gapStart += text.length;
                this.flags |= 1;
            }
            this.notifyChanged(new BufferChangedEvent(this, length, 0, new String(text)));
        }
    }

    public void append(String text) {
        if (text == null) {
            return;
        }
        this.append(text.toCharArray());
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void close() {
        BufferChangedEvent event = null;
        Object object = this.lock;
        synchronized (object) {
            if (this.isClosed()) {
                return;
            }
            event = new BufferChangedEvent(this, 0, 0, null);
            this.contents = null;
            this.flags |= 4;
        }
        this.notifyChanged(event);
        object = this;
        synchronized (object) {
            this.changeListeners = null;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public char getChar(int position) {
        Object object = this.lock;
        synchronized (object) {
            block5: {
                if (this.contents != null) break block5;
                return '\u0000';
            }
            if (position < this.gapStart) {
                return this.contents[position];
            }
            int gapLength = this.gapEnd - this.gapStart;
            return this.contents[position + gapLength];
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public char[] getCharacters() {
        Object object = this.lock;
        synchronized (object) {
            block5: {
                if (this.contents != null) break block5;
                return null;
            }
            if (this.gapStart < 0) {
                return this.contents;
            }
            int length = this.contents.length;
            char[] newContents = new char[length - this.gapEnd + this.gapStart];
            System.arraycopy(this.contents, 0, newContents, 0, this.gapStart);
            System.arraycopy(this.contents, this.gapEnd, newContents, this.gapStart, length - this.gapEnd);
            return newContents;
        }
    }

    public String getContents() {
        char[] chars = this.getCharacters();
        if (chars == null) {
            return null;
        }
        return new String(chars);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public int getLength() {
        Object object = this.lock;
        synchronized (object) {
            block4: {
                if (this.contents != null) break block4;
                return -1;
            }
            int length = this.gapEnd - this.gapStart;
            return this.contents.length - length;
        }
    }

    public IOpenable getOwner() {
        return this.owner;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public String getText(int offset, int length) {
        Object object = this.lock;
        synchronized (object) {
            block6: {
                if (this.contents != null) break block6;
                return "";
            }
            if (offset + length < this.gapStart) {
                return new String(this.contents, offset, length);
            }
            if (this.gapStart < offset) {
                int gapLength = this.gapEnd - this.gapStart;
                return new String(this.contents, offset + gapLength, length);
            }
            StringBuffer buf = new StringBuffer();
            buf.append(this.contents, offset, this.gapStart - offset);
            buf.append(this.contents, this.gapEnd, offset + length - this.gapStart);
            return buf.toString();
        }
    }

    public IResource getUnderlyingResource() {
        return this.file;
    }

    public boolean hasUnsavedChanges() {
        return (this.flags & 1) != 0;
    }

    public boolean isClosed() {
        return (this.flags & 4) != 0;
    }

    public boolean isReadOnly() {
        return (this.flags & 2) != 0;
    }

    protected void moveAndResizeGap(int position, int size) {
        char[] content = null;
        int oldSize = this.gapEnd - this.gapStart;
        if (size < 0) {
            if (oldSize > 0) {
                content = new char[this.contents.length - oldSize];
                System.arraycopy(this.contents, 0, content, 0, this.gapStart);
                System.arraycopy(this.contents, this.gapEnd, content, this.gapStart, content.length - this.gapStart);
                this.contents = content;
            }
            this.gapStart = this.gapEnd = position;
            return;
        }
        content = new char[this.contents.length + (size - oldSize)];
        int newGapStart = position;
        int newGapEnd = newGapStart + size;
        if (oldSize == 0) {
            System.arraycopy(this.contents, 0, content, 0, newGapStart);
            System.arraycopy(this.contents, newGapStart, content, newGapEnd, content.length - newGapEnd);
        } else if (newGapStart < this.gapStart) {
            int delta = this.gapStart - newGapStart;
            System.arraycopy(this.contents, 0, content, 0, newGapStart);
            System.arraycopy(this.contents, newGapStart, content, newGapEnd, delta);
            System.arraycopy(this.contents, this.gapEnd, content, newGapEnd + delta, this.contents.length - this.gapEnd);
        } else {
            int delta = newGapStart - this.gapStart;
            System.arraycopy(this.contents, 0, content, 0, this.gapStart);
            System.arraycopy(this.contents, this.gapEnd, content, this.gapStart, delta);
            System.arraycopy(this.contents, this.gapEnd + delta, content, newGapEnd, content.length - newGapEnd);
        }
        this.contents = content;
        this.gapStart = newGapStart;
        this.gapEnd = newGapEnd;
    }

    protected void notifyChanged(final BufferChangedEvent event) {
        ArrayList listeners = this.changeListeners;
        if (listeners != null) {
            int i = 0;
            int size = listeners.size();
            while (i < size) {
                final IBufferChangedListener listener = (IBufferChangedListener)listeners.get(i);
                SafeRunner.run((ISafeRunnable)new ISafeRunnable(){

                    public void handleException(Throwable exception) {
                        Util.log(exception, "Exception occurred in listener of buffer change notification");
                    }

                    public void run() throws Exception {
                        listener.bufferChanged(event);
                    }
                });
                ++i;
            }
        }
    }

    public synchronized void removeBufferChangedListener(IBufferChangedListener listener) {
        if (this.changeListeners != null) {
            this.changeListeners.remove(listener);
            if (this.changeListeners.size() == 0) {
                this.changeListeners = null;
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void replace(int position, int length, char[] text) {
        if (!this.isReadOnly()) {
            int textLength = text == null ? 0 : text.length;
            Object object = this.lock;
            synchronized (object) {
                if (this.contents == null) {
                    return;
                }
                this.moveAndResizeGap(position + length, textLength - length);
                int min = Math.min(textLength, length);
                if (min > 0) {
                    System.arraycopy(text, 0, this.contents, position, min);
                }
                if (length > textLength) {
                    this.gapStart -= length - textLength;
                } else if (textLength > length) {
                    this.gapStart += textLength - length;
                    System.arraycopy(text, 0, this.contents, position, textLength);
                }
                this.flags |= 1;
            }
            String string = null;
            if (textLength > 0) {
                string = new String(text);
            }
            this.notifyChanged(new BufferChangedEvent(this, position, length, string));
        }
    }

    public void replace(int position, int length, String text) {
        this.replace(position, length, text == null ? null : text.toCharArray());
    }

    public void save(IProgressMonitor progress, boolean force) throws JavaModelException {
        if (this.isReadOnly() || this.file == null) {
            return;
        }
        if (!this.hasUnsavedChanges()) {
            return;
        }
        try {
            byte[] bytes;
            String stringContents = this.getContents();
            if (stringContents == null) {
                return;
            }
            String encoding = null;
            try {
                encoding = this.file.getCharset();
            }
            catch (CoreException coreException) {}
            byte[] byArray = bytes = encoding == null ? stringContents.getBytes() : stringContents.getBytes(encoding);
            if (encoding != null && encoding.equals("UTF-8")) {
                IContentDescription description;
                try {
                    description = this.file.getContentDescription();
                }
                catch (CoreException e) {
                    if (e.getStatus().getCode() != 368) {
                        throw e;
                    }
                    description = null;
                }
                if (description != null && description.getProperty(IContentDescription.BYTE_ORDER_MARK) != null) {
                    int bomLength = IContentDescription.BOM_UTF_8.length;
                    byte[] bytesWithBOM = new byte[bytes.length + bomLength];
                    System.arraycopy(IContentDescription.BOM_UTF_8, 0, bytesWithBOM, 0, bomLength);
                    System.arraycopy(bytes, 0, bytesWithBOM, bomLength, bytes.length);
                    bytes = bytesWithBOM;
                }
            }
            ByteArrayInputStream stream = new ByteArrayInputStream(bytes);
            if (this.file.exists()) {
                this.file.setContents((InputStream)stream, force ? 3 : 2, null);
            } else {
                this.file.create((InputStream)stream, force, null);
            }
        }
        catch (IOException e) {
            throw new JavaModelException(e, 985);
        }
        catch (CoreException e) {
            throw new JavaModelException(e);
        }
        this.flags &= 0xFFFFFFFE;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void setContents(char[] newContents) {
        if (this.contents == null) {
            Object object = this.lock;
            synchronized (object) {
                this.contents = newContents;
                this.flags &= 0xFFFFFFFE;
            }
            return;
        }
        if (!this.isReadOnly()) {
            String string = null;
            if (newContents != null) {
                string = new String(newContents);
            }
            Object object = this.lock;
            synchronized (object) {
                if (this.contents == null) {
                    return;
                }
                this.contents = newContents;
                this.flags |= 1;
                this.gapStart = -1;
                this.gapEnd = -1;
            }
            BufferChangedEvent event = new BufferChangedEvent(this, 0, this.getLength(), string);
            this.notifyChanged(event);
        }
    }

    public void setContents(String newContents) {
        this.setContents(newContents.toCharArray());
    }

    protected void setReadOnly(boolean readOnly) {
        this.flags = readOnly ? (this.flags |= 2) : (this.flags &= 0xFFFFFFFD);
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("Owner: " + ((JavaElement)((Object)this.owner)).toStringWithAncestors());
        buffer.append("\nHas unsaved changes: " + this.hasUnsavedChanges());
        buffer.append("\nIs readonly: " + this.isReadOnly());
        buffer.append("\nIs closed: " + this.isClosed());
        buffer.append("\nContents:\n");
        char[] charContents = this.getCharacters();
        if (charContents == null) {
            buffer.append("<null>");
        } else {
            int length = charContents.length;
            int i = 0;
            while (i < length) {
                char c = charContents[i];
                switch (c) {
                    case '\n': {
                        buffer.append("\\n\n");
                        break;
                    }
                    case '\r': {
                        if (i < length - 1 && this.contents[i + 1] == '\n') {
                            buffer.append("\\r\\n\n");
                            ++i;
                            break;
                        }
                        buffer.append("\\r\n");
                        break;
                    }
                    default: {
                        buffer.append(c);
                    }
                }
                ++i;
            }
        }
        return buffer.toString();
    }
}

