/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.FileDialog
 */
package org.eclipse.jface.preference;

import java.io.File;
import org.eclipse.jface.preference.StringButtonFieldEditor;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.FileDialog;

public class FileFieldEditor
extends StringButtonFieldEditor {
    private String[] extensions = null;
    private File filterPath = null;
    private boolean enforceAbsolute = false;

    protected FileFieldEditor() {
    }

    public FileFieldEditor(String name, String labelText, Composite parent) {
        this(name, labelText, false, parent);
    }

    public FileFieldEditor(String name, String labelText, boolean enforceAbsolute, Composite parent) {
        this(name, labelText, enforceAbsolute, 1, parent);
    }

    public FileFieldEditor(String name, String labelText, boolean enforceAbsolute, int validationStrategy, Composite parent) {
        this.init(name, labelText);
        this.enforceAbsolute = enforceAbsolute;
        this.setErrorMessage(JFaceResources.getString("FileFieldEditor.errorMessage"));
        this.setChangeButtonText(JFaceResources.getString("openBrowse"));
        this.setValidateStrategy(validationStrategy);
        this.createControl(parent);
    }

    protected String changePressed() {
        File d;
        File f = new File(this.getTextControl().getText());
        if (!f.exists()) {
            f = null;
        }
        if ((d = this.getFile(f)) == null) {
            return null;
        }
        return d.getAbsolutePath();
    }

    protected boolean checkState() {
        String msg = null;
        String path = this.getTextControl().getText();
        path = path != null ? path.trim() : "";
        if (path.length() == 0) {
            if (!this.isEmptyStringAllowed()) {
                msg = this.getErrorMessage();
            }
        } else {
            File file = new File(path);
            if (file.isFile()) {
                if (this.enforceAbsolute && !file.isAbsolute()) {
                    msg = JFaceResources.getString("FileFieldEditor.errorMessage2");
                }
            } else {
                msg = this.getErrorMessage();
            }
        }
        if (msg != null) {
            this.showErrorMessage(msg);
            return false;
        }
        if (this.doCheckState()) {
            this.clearErrorMessage();
            return true;
        }
        msg = this.getErrorMessage();
        if (msg != null) {
            this.showErrorMessage(msg);
        }
        return false;
    }

    private File getFile(File startingDirectory) {
        String file;
        FileDialog dialog = new FileDialog(this.getShell(), 0x10001000);
        if (startingDirectory != null) {
            dialog.setFileName(startingDirectory.getPath());
        } else if (this.filterPath != null) {
            dialog.setFilterPath(this.filterPath.getPath());
        }
        if (this.extensions != null) {
            dialog.setFilterExtensions(this.extensions);
        }
        if ((file = dialog.open()) != null && (file = file.trim()).length() > 0) {
            return new File(file);
        }
        return null;
    }

    public void setFileExtensions(String[] extensions) {
        this.extensions = extensions;
    }

    public void setFilterPath(File path) {
        this.filterPath = path;
    }
}

