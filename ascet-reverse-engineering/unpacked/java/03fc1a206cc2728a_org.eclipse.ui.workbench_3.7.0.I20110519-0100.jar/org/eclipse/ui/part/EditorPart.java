/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.ui.part;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.ui.IEditorInput;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IEditorSite;
import org.eclipse.ui.IPropertyListener;
import org.eclipse.ui.IWorkbenchPartSite;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.part.WorkbenchPart;

public abstract class EditorPart
extends WorkbenchPart
implements IEditorPart {
    private IEditorInput editorInput = null;
    private IPropertyListener compatibilityTitleListener = new IPropertyListener(){

        public void propertyChanged(Object source, int propId) {
            if (propId == 1) {
                EditorPart.this.setDefaultPartName();
            }
        }
    };

    protected EditorPart() {
        this.addPropertyListener(this.compatibilityTitleListener);
    }

    public abstract void doSave(IProgressMonitor var1);

    public abstract void doSaveAs();

    public IEditorInput getEditorInput() {
        return this.editorInput;
    }

    public IEditorSite getEditorSite() {
        return (IEditorSite)this.getSite();
    }

    public String getTitleToolTip() {
        if (this.editorInput == null) {
            return super.getTitleToolTip();
        }
        return this.editorInput.getToolTipText();
    }

    public abstract void init(IEditorSite var1, IEditorInput var2) throws PartInitException;

    public abstract boolean isDirty();

    public abstract boolean isSaveAsAllowed();

    public boolean isSaveOnCloseNeeded() {
        return this.isDirty();
    }

    protected void setInput(IEditorInput input) {
        Assert.isLegal((input != null ? 1 : 0) != 0);
        this.editorInput = input;
    }

    protected void setInputWithNotify(IEditorInput input) {
        Assert.isLegal((input != null ? 1 : 0) != 0);
        this.editorInput = input;
        this.firePropertyChange(258);
    }

    protected void setContentDescription(String description) {
        if (this.compatibilityTitleListener != null) {
            this.removePropertyListener(this.compatibilityTitleListener);
            this.compatibilityTitleListener = null;
        }
        super.setContentDescription(description);
    }

    protected void setPartName(String partName) {
        if (this.compatibilityTitleListener != null) {
            this.removePropertyListener(this.compatibilityTitleListener);
            this.compatibilityTitleListener = null;
        }
        super.setPartName(partName);
    }

    public void setInitializationData(IConfigurationElement cfig, String propertyName, Object data) {
        super.setInitializationData(cfig, propertyName, data);
        this.setDefaultPartName();
    }

    private void setDefaultPartName() {
        if (this.compatibilityTitleListener == null) {
            return;
        }
        this.internalSetPartName(this.getTitle());
    }

    void setDefaultTitle() {
        this.setTitle(this.getPartName());
    }

    protected final void checkSite(IWorkbenchPartSite site) {
        super.checkSite(site);
        Assert.isTrue((boolean)(site instanceof IEditorSite), (String)"The site for an editor must be an IEditorSite");
    }
}

