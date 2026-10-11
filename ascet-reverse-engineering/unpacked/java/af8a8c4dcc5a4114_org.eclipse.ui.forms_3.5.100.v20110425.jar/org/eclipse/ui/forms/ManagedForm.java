/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.swt.widgets.Composite
 */
package org.eclipse.ui.forms;

import java.util.Vector;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.ui.forms.IFormPart;
import org.eclipse.ui.forms.IManagedForm;
import org.eclipse.ui.forms.IMessageManager;
import org.eclipse.ui.forms.IPartSelectionListener;
import org.eclipse.ui.forms.widgets.FormToolkit;
import org.eclipse.ui.forms.widgets.ScrolledForm;

public class ManagedForm
implements IManagedForm {
    private Object input;
    private ScrolledForm form;
    private FormToolkit toolkit;
    private Object container;
    private boolean ownsToolkit;
    private boolean initialized;
    private Vector parts = new Vector();

    public ManagedForm(Composite parent) {
        this.toolkit = new FormToolkit(parent.getDisplay());
        this.ownsToolkit = true;
        this.form = this.toolkit.createScrolledForm(parent);
    }

    public ManagedForm(FormToolkit toolkit, ScrolledForm form) {
        this.form = form;
        this.toolkit = toolkit;
    }

    public void addPart(IFormPart part) {
        this.parts.add(part);
        part.initialize(this);
    }

    public void removePart(IFormPart part) {
        this.parts.remove(part);
    }

    public IFormPart[] getParts() {
        return this.parts.toArray(new IFormPart[this.parts.size()]);
    }

    public FormToolkit getToolkit() {
        return this.toolkit;
    }

    public ScrolledForm getForm() {
        return this.form;
    }

    public void reflow(boolean changed) {
        this.form.reflow(changed);
    }

    public void fireSelectionChanged(IFormPart part, ISelection selection) {
        int i = 0;
        while (i < this.parts.size()) {
            IFormPart cpart = (IFormPart)this.parts.get(i);
            if (!part.equals(cpart) && cpart instanceof IPartSelectionListener) {
                ((IPartSelectionListener)((Object)cpart)).selectionChanged(part, selection);
            }
            ++i;
        }
    }

    public void initialize() {
        if (this.initialized) {
            return;
        }
        int i = 0;
        while (i < this.parts.size()) {
            IFormPart part = (IFormPart)this.parts.get(i);
            part.initialize(this);
            ++i;
        }
        this.initialized = true;
    }

    public void dispose() {
        int i = 0;
        while (i < this.parts.size()) {
            IFormPart part = (IFormPart)this.parts.get(i);
            part.dispose();
            ++i;
        }
        if (this.ownsToolkit) {
            this.toolkit.dispose();
        }
    }

    public void refresh() {
        Thread dt;
        Thread t = Thread.currentThread();
        if (t.equals(dt = this.toolkit.getColors().getDisplay().getThread())) {
            this.doRefresh();
        } else {
            this.toolkit.getColors().getDisplay().asyncExec(new Runnable(){

                public void run() {
                    ManagedForm.this.doRefresh();
                }
            });
        }
    }

    private void doRefresh() {
        int nrefreshed = 0;
        int i = 0;
        while (i < this.parts.size()) {
            IFormPart part = (IFormPart)this.parts.get(i);
            if (part.isStale()) {
                part.refresh();
                ++nrefreshed;
            }
            ++i;
        }
        if (nrefreshed > 0) {
            this.form.reflow(true);
        }
    }

    public void commit(boolean onSave) {
        int i = 0;
        while (i < this.parts.size()) {
            IFormPart part = (IFormPart)this.parts.get(i);
            if (part.isDirty()) {
                part.commit(onSave);
            }
            ++i;
        }
    }

    public boolean setInput(Object input) {
        boolean pageResult = false;
        this.input = input;
        int i = 0;
        while (i < this.parts.size()) {
            IFormPart part = (IFormPart)this.parts.get(i);
            boolean result = part.setFormInput(input);
            if (result) {
                pageResult = true;
            }
            ++i;
        }
        return pageResult;
    }

    public Object getInput() {
        return this.input;
    }

    public void setFocus() {
        if (this.parts.size() > 0) {
            IFormPart part = (IFormPart)this.parts.get(0);
            part.setFocus();
        }
    }

    public boolean isDirty() {
        int i = 0;
        while (i < this.parts.size()) {
            IFormPart part = (IFormPart)this.parts.get(i);
            if (part.isDirty()) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public boolean isStale() {
        int i = 0;
        while (i < this.parts.size()) {
            IFormPart part = (IFormPart)this.parts.get(i);
            if (part.isStale()) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public void dirtyStateChanged() {
    }

    public void staleStateChanged() {
    }

    public Object getContainer() {
        return this.container;
    }

    public void setContainer(Object container) {
        this.container = container;
    }

    public IMessageManager getMessageManager() {
        return this.form.getMessageManager();
    }
}

