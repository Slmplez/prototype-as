/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.DirectoryDialog
 */
package org.eclipse.jface.preference;

import java.io.File;
import java.util.ArrayList;
import java.util.StringTokenizer;
import org.eclipse.jface.preference.ListEditor;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.DirectoryDialog;

public class PathEditor
extends ListEditor {
    private String lastPath;
    private String dirChooserLabelText;

    protected PathEditor() {
    }

    public PathEditor(String name, String labelText, String dirChooserLabelText, Composite parent) {
        this.init(name, labelText);
        this.dirChooserLabelText = dirChooserLabelText;
        this.createControl(parent);
    }

    protected String createList(String[] items) {
        StringBuffer path = new StringBuffer("");
        int i = 0;
        while (i < items.length) {
            path.append(items[i]);
            path.append(File.pathSeparator);
            ++i;
        }
        return path.toString();
    }

    protected String getNewInputObject() {
        String dir;
        DirectoryDialog dialog = new DirectoryDialog(this.getShell(), 0x10000000);
        if (this.dirChooserLabelText != null) {
            dialog.setMessage(this.dirChooserLabelText);
        }
        if (this.lastPath != null && new File(this.lastPath).exists()) {
            dialog.setFilterPath(this.lastPath);
        }
        if ((dir = dialog.open()) != null) {
            if ((dir = dir.trim()).length() == 0) {
                return null;
            }
            this.lastPath = dir;
        }
        return dir;
    }

    protected String[] parseString(String stringList) {
        StringTokenizer st = new StringTokenizer(stringList, String.valueOf(File.pathSeparator) + "\n\r");
        ArrayList<Object> v = new ArrayList<Object>();
        while (st.hasMoreElements()) {
            v.add(st.nextElement());
        }
        return v.toArray(new String[v.size()]);
    }
}

