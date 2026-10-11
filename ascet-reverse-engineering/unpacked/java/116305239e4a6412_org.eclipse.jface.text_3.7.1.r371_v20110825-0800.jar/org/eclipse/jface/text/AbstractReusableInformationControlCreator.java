/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.jface.text;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.jface.text.IInformationControl;
import org.eclipse.jface.text.IInformationControlCreator;
import org.eclipse.jface.text.IInformationControlCreatorExtension;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Shell;

public abstract class AbstractReusableInformationControlCreator
implements IInformationControlCreator,
IInformationControlCreatorExtension,
DisposeListener {
    private Map fInformationControls = new HashMap();

    protected abstract IInformationControl doCreateInformationControl(Shell var1);

    public IInformationControl createInformationControl(Shell parent) {
        IInformationControl control = (IInformationControl)this.fInformationControls.get(parent);
        if (control == null) {
            control = this.doCreateInformationControl(parent);
            control.addDisposeListener(this);
            this.fInformationControls.put(parent, control);
        }
        return control;
    }

    public void widgetDisposed(DisposeEvent e) {
        Composite parent = null;
        if (e.widget instanceof Shell) {
            parent = ((Shell)e.widget).getParent();
        }
        if (parent instanceof Shell) {
            this.fInformationControls.remove(parent);
        }
    }

    public boolean canReuse(IInformationControl control) {
        return this.fInformationControls.containsValue(control);
    }

    public boolean canReplace(IInformationControlCreator creator) {
        return creator.getClass() == this.getClass();
    }
}

