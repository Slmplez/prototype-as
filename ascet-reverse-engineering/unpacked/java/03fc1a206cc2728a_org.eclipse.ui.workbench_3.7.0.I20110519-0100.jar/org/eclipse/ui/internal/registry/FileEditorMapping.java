/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.osgi.util.TextProcessor
 */
package org.eclipse.ui.internal.registry;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.osgi.util.TextProcessor;
import org.eclipse.ui.IEditorDescriptor;
import org.eclipse.ui.IFileEditorMapping;
import org.eclipse.ui.activities.WorkbenchActivityHelper;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.registry.EditorDescriptor;

public class FileEditorMapping
implements IFileEditorMapping,
Cloneable {
    private static final String STAR = "*";
    private static final String DOT = ".";
    private String name = "*";
    private String extension;
    private List editors = new ArrayList(1);
    private List deletedEditors = new ArrayList(1);
    private List declaredDefaultEditors = new ArrayList(1);

    public FileEditorMapping(String extension) {
        this(STAR, extension);
    }

    public FileEditorMapping(String name, String extension) {
        if (name == null || name.length() < 1) {
            this.setName(STAR);
        } else {
            this.setName(name);
        }
        if (extension == null) {
            this.setExtension("");
        } else {
            this.setExtension(extension);
        }
    }

    public void addEditor(EditorDescriptor editor) {
        this.editors.add(editor);
        this.deletedEditors.remove(editor);
    }

    public Object clone() {
        try {
            FileEditorMapping clone = (FileEditorMapping)super.clone();
            clone.editors = (List)((ArrayList)this.editors).clone();
            clone.deletedEditors = (List)((ArrayList)this.deletedEditors).clone();
            clone.declaredDefaultEditors = (List)((ArrayList)this.declaredDefaultEditors).clone();
            return clone;
        }
        catch (CloneNotSupportedException cloneNotSupportedException) {
            return null;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FileEditorMapping)) {
            return false;
        }
        FileEditorMapping mapping = (FileEditorMapping)obj;
        if (!this.name.equals(mapping.name)) {
            return false;
        }
        if (!this.extension.equals(mapping.extension)) {
            return false;
        }
        if (!this.compareList(this.editors, mapping.editors)) {
            return false;
        }
        if (!this.compareList(this.declaredDefaultEditors, mapping.declaredDefaultEditors)) {
            return false;
        }
        return this.compareList(this.deletedEditors, mapping.deletedEditors);
    }

    private boolean compareList(List l1, List l2) {
        if (l1.size() != l2.size()) {
            return false;
        }
        Iterator i1 = l1.iterator();
        Iterator i2 = l2.iterator();
        while (i1.hasNext() && i2.hasNext()) {
            Object o1 = i1.next();
            Object o2 = i2.next();
            if (!(o1 == null ? o2 != null : !o1.equals(o2))) continue;
            return false;
        }
        return true;
    }

    public int hashCode() {
        int result = 1;
        result = 31 * result + (this.declaredDefaultEditors == null ? 0 : this.declaredDefaultEditors.hashCode());
        result = 31 * result + (this.deletedEditors == null ? 0 : this.deletedEditors.hashCode());
        result = 31 * result + (this.editors == null ? 0 : this.editors.hashCode());
        result = 31 * result + (this.extension == null ? 0 : this.extension.hashCode());
        result = 31 * result + (this.name == null ? 0 : this.name.hashCode());
        return result;
    }

    public IEditorDescriptor getDefaultEditor() {
        if (this.editors.size() == 0 || WorkbenchActivityHelper.restrictUseOf(this.editors.get(0))) {
            return null;
        }
        return (IEditorDescriptor)this.editors.get(0);
    }

    IEditorDescriptor[] getUnfilteredEditors() {
        return this.editors.toArray(new IEditorDescriptor[this.editors.size()]);
    }

    public IEditorDescriptor[] getEditors() {
        Collection descs = WorkbenchActivityHelper.restrictCollection(this.editors, new ArrayList());
        return descs.toArray(new IEditorDescriptor[descs.size()]);
    }

    public IEditorDescriptor[] getDeletedEditors() {
        IEditorDescriptor[] array = new IEditorDescriptor[this.deletedEditors.size()];
        this.deletedEditors.toArray(array);
        return array;
    }

    public String getExtension() {
        return this.extension;
    }

    public ImageDescriptor getImageDescriptor() {
        IEditorDescriptor editor = this.getDefaultEditor();
        if (editor == null) {
            return WorkbenchImages.getImageDescriptor("IMG_OBJ_FILE");
        }
        return editor.getImageDescriptor();
    }

    public String getLabel() {
        return TextProcessor.process((String)(String.valueOf(this.name) + (this.extension.length() == 0 ? "" : DOT + this.extension)), (String)"*.");
    }

    public String getName() {
        return this.name;
    }

    public void removeEditor(EditorDescriptor editor) {
        this.editors.remove(editor);
        this.deletedEditors.add(editor);
        this.declaredDefaultEditors.remove(editor);
    }

    public void setDefaultEditor(EditorDescriptor editor) {
        this.editors.remove(editor);
        this.editors.add(0, editor);
        this.declaredDefaultEditors.remove(editor);
        this.declaredDefaultEditors.add(0, editor);
    }

    public void setEditorsList(List newEditors) {
        this.editors = newEditors;
        this.declaredDefaultEditors.retainAll(newEditors);
    }

    public void setDeletedEditorsList(List newDeletedEditors) {
        this.deletedEditors = newDeletedEditors;
    }

    public void setExtension(String extension) {
        this.extension = extension;
    }

    public void setName(String name) {
        this.name = name;
    }

    public IEditorDescriptor[] getDeclaredDefaultEditors() {
        Collection descs = WorkbenchActivityHelper.restrictCollection(this.declaredDefaultEditors, new ArrayList());
        return descs.toArray(new IEditorDescriptor[descs.size()]);
    }

    public boolean isDeclaredDefaultEditor(IEditorDescriptor editor) {
        return this.declaredDefaultEditors.contains(editor) && !WorkbenchActivityHelper.restrictUseOf(editor);
    }

    public void setDefaultEditors(List defaultEditors) {
        this.declaredDefaultEditors = defaultEditors;
    }
}

