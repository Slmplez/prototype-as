/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.ITableLabelProvider
 *  org.eclipse.jface.viewers.LabelProvider
 *  org.eclipse.osgi.util.TextProcessor
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.ui.dialogs;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jface.viewers.ITableLabelProvider;
import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.osgi.util.TextProcessor;
import org.eclipse.swt.graphics.Image;
import org.eclipse.ui.IFileEditorMapping;

public class FileEditorMappingLabelProvider
extends LabelProvider
implements ITableLabelProvider {
    public static final FileEditorMappingLabelProvider INSTANCE = new FileEditorMappingLabelProvider();
    private List imagesToDispose = new ArrayList();

    private FileEditorMappingLabelProvider() {
    }

    public void dispose() {
        super.dispose();
        Iterator e = this.imagesToDispose.iterator();
        while (e.hasNext()) {
            ((Image)e.next()).dispose();
        }
        this.imagesToDispose.clear();
    }

    public Image getColumnImage(Object element, int row) {
        return this.getImage(element);
    }

    public String getColumnText(Object element, int row) {
        return this.getText(element);
    }

    public Image getImage(Object element) {
        if (element instanceof IFileEditorMapping) {
            Image image = ((IFileEditorMapping)element).getImageDescriptor().createImage();
            this.imagesToDispose.add(image);
            return image;
        }
        return null;
    }

    public String getText(Object element) {
        if (element instanceof IFileEditorMapping) {
            return TextProcessor.process((String)((IFileEditorMapping)element).getLabel(), (String)"*.");
        }
        return null;
    }
}

