/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.PlatformObject
 */
package org.eclipse.pde.internal.core;

import java.io.File;
import java.util.Locale;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.pde.internal.core.IFileAdapterFactory;

public class FileAdapter
extends PlatformObject {
    private File fFile;
    private Object[] fChildren;
    private FileAdapter fParent;
    private String fEditorId;
    private IFileAdapterFactory fFactory;

    public FileAdapter(FileAdapter parent, File file, IFileAdapterFactory factory) {
        this.fFile = file;
        this.fParent = parent;
        this.fFactory = factory;
    }

    public boolean isManifest() {
        String fileName = this.fFile.getName();
        return fileName.equals("plugin.xml") || fileName.equals("fragment.xml") || fileName.equalsIgnoreCase("MANIFEST.MF");
    }

    public boolean isSchema() {
        String fileName = this.fFile.getName().toLowerCase(Locale.ENGLISH);
        return fileName.endsWith(".exsd");
    }

    public FileAdapter getParent() {
        return this.fParent;
    }

    public void setEditorId(String editorId) {
        this.fEditorId = editorId;
    }

    public String getEditorId() {
        return this.fEditorId;
    }

    public File getFile() {
        return this.fFile;
    }

    public boolean isDirectory() {
        return this.fFile.isDirectory();
    }

    public boolean hasChildren() {
        if (!this.fFile.isDirectory()) {
            return false;
        }
        if (this.fChildren == null) {
            this.createChildren();
        }
        return this.fChildren.length > 0;
    }

    public Object[] getChildren() {
        if (this.fFile.isDirectory() && this.fChildren == null) {
            this.createChildren();
        }
        return this.fChildren != null ? this.fChildren : new Object[]{};
    }

    private void createChildren() {
        File[] files = this.fFile.listFiles();
        this.fChildren = new Object[files.length];
        int i = 0;
        while (i < files.length) {
            this.fChildren[i] = this.fFactory == null ? new FileAdapter(this, files[i], null) : this.fFactory.createAdapterChild(this, files[i]);
            ++i;
        }
    }
}

