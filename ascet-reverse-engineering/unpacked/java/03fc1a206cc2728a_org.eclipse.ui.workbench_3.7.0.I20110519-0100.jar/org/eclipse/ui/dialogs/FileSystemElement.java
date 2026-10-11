/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui.dialogs;

import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.model.AdaptableList;
import org.eclipse.ui.model.IWorkbenchAdapter;

public class FileSystemElement
implements IAdaptable {
    private String name;
    private Object fileSystemObject;
    private AdaptableList folders = null;
    private AdaptableList files = null;
    private boolean isDirectory = false;
    private FileSystemElement parent;
    private IWorkbenchAdapter workbenchAdapter = new IWorkbenchAdapter(){

        public Object[] getChildren(Object o) {
            return FileSystemElement.this.getFolders().getChildren(o);
        }

        public Object getParent(Object o) {
            return FileSystemElement.this.parent;
        }

        public String getLabel(Object o) {
            return FileSystemElement.this.name;
        }

        public ImageDescriptor getImageDescriptor(Object object) {
            if (FileSystemElement.this.isDirectory()) {
                return WorkbenchImages.getImageDescriptor("IMG_OBJ_FOLDER");
            }
            return WorkbenchPlugin.getDefault().getEditorRegistry().getImageDescriptor(FileSystemElement.this.name);
        }
    };
    static /* synthetic */ Class class$0;

    public FileSystemElement(String name, FileSystemElement parent, boolean isDirectory) {
        this.name = name;
        this.parent = parent;
        this.isDirectory = isDirectory;
        if (parent != null) {
            parent.addChild(this);
        }
    }

    public void addChild(FileSystemElement child) {
        if (child.isDirectory()) {
            if (this.folders == null) {
                this.folders = new AdaptableList(1);
            }
            this.folders.add(child);
        } else {
            if (this.files == null) {
                this.files = new AdaptableList(1);
            }
            this.files.add(child);
        }
    }

    public Object getAdapter(Class adapter) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.model.IWorkbenchAdapter");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (adapter == clazz) {
            return this.workbenchAdapter;
        }
        return Platform.getAdapterManager().getAdapter((Object)this, adapter);
    }

    public String getFileNameExtension() {
        int lastDot = this.name.lastIndexOf(46);
        return lastDot < 0 ? "" : this.name.substring(lastDot + 1);
    }

    public AdaptableList getFiles() {
        if (this.files == null) {
            this.files = new AdaptableList(0);
        }
        return this.files;
    }

    public Object getFileSystemObject() {
        return this.fileSystemObject;
    }

    public AdaptableList getFolders() {
        if (this.folders == null) {
            this.folders = new AdaptableList(0);
        }
        return this.folders;
    }

    public FileSystemElement getParent() {
        return this.parent;
    }

    public boolean isDirectory() {
        return this.isDirectory;
    }

    public void removeFolder(FileSystemElement child) {
        if (this.folders == null) {
            return;
        }
        this.folders.remove(child);
        child.setParent(null);
    }

    public void setFileSystemObject(Object value) {
        this.fileSystemObject = value;
    }

    public void setParent(FileSystemElement element) {
        this.parent = element;
    }

    public String toString() {
        StringBuffer buf = new StringBuffer();
        if (this.isDirectory()) {
            buf.append("Folder(");
        } else {
            buf.append("File(");
        }
        buf.append(this.name).append(")");
        if (!this.isDirectory()) {
            return buf.toString();
        }
        buf.append(" folders: ");
        buf.append(this.folders);
        buf.append(" files: ");
        buf.append(this.files);
        return buf.toString();
    }
}

