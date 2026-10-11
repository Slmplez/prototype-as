/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.DirectoryDialog
 */
package org.eclipse.jface.preference;

import java.io.File;
import org.eclipse.jface.preference.StringButtonFieldEditor;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.DirectoryDialog;

public class DirectoryFieldEditor
extends StringButtonFieldEditor {
    private File filterPath = null;

    protected DirectoryFieldEditor() {
    }

    public DirectoryFieldEditor(String name, String labelText, Composite parent) {
        this.init(name, labelText);
        this.setErrorMessage(JFaceResources.getString("DirectoryFieldEditor.errorMessage"));
        this.setChangeButtonText(JFaceResources.getString("openBrowse"));
        this.setValidateStrategy(1);
        this.createControl(parent);
    }

    protected String changePressed() {
        File d;
        File f = new File(this.getTextControl().getText());
        if (!f.exists()) {
            f = null;
        }
        if ((d = this.getDirectory(f)) == null) {
            return null;
        }
        return d.getAbsolutePath();
    }

    protected boolean doCheckState() {
        String fileName = this.getTextControl().getText();
        if ((fileName = fileName.trim()).length() == 0 && this.isEmptyStringAllowed()) {
            return true;
        }
        File file = new File(fileName);
        return file.isDirectory();
    }

    private File getDirectory(File startingDirectory) {
        DirectoryDialog fileDialog = new DirectoryDialog(this.getShell(), 0x10001000);
        if (startingDirectory != null) {
            fileDialog.setFilterPath(startingDirectory.getPath());
        } else if (this.filterPath != null) {
            fileDialog.setFilterPath(this.filterPath.getPath());
        }
        String dir = fileDialog.open();
        if (dir != null && (dir = dir.trim()).length() > 0) {
            return new File(dir);
        }
        return null;
    }

    public void setFilterPath(File path) {
        this.filterPath = path;
    }
}

