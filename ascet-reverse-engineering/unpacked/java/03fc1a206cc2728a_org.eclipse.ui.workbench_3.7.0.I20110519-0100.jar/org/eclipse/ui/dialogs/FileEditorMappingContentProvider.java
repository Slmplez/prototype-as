/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.IStructuredContentProvider
 *  org.eclipse.jface.viewers.Viewer
 */
package org.eclipse.ui.dialogs;

import org.eclipse.jface.viewers.IStructuredContentProvider;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.ui.IFileEditorMapping;

public class FileEditorMappingContentProvider
implements IStructuredContentProvider {
    public static final FileEditorMappingContentProvider INSTANCE = new FileEditorMappingContentProvider();

    private FileEditorMappingContentProvider() {
    }

    public void dispose() {
    }

    public Object[] getElements(Object element) {
        IFileEditorMapping[] array = (IFileEditorMapping[])element;
        return array == null ? new Object[]{} : array;
    }

    public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {
    }
}

