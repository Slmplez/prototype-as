/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.handlers;

import org.eclipse.ui.IPartListener;
import org.eclipse.ui.IPropertyListener;
import org.eclipse.ui.ISaveablePart;
import org.eclipse.ui.IWindowListener;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.internal.Workbench;
import org.eclipse.ui.services.IEvaluationService;

public class DirtyStateTracker
implements IPartListener,
IWindowListener,
IPropertyListener {
    private final IWorkbench workbench = Workbench.getInstance();
    static /* synthetic */ Class class$0;

    public DirtyStateTracker() {
        this.workbench.addWindowListener(this);
        IWorkbenchWindow window = this.workbench.getActiveWorkbenchWindow();
        this.register(window);
    }

    public void update() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.services.IEvaluationService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IEvaluationService service = (IEvaluationService)this.workbench.getService(clazz);
        service.requestEvaluation("activePart");
    }

    private void register(IWorkbenchWindow window) {
        if (window == null) {
            return;
        }
        window.getPartService().addPartListener(this);
    }

    public void partActivated(IWorkbenchPart part) {
        if (part instanceof ISaveablePart) {
            part.addPropertyListener(this);
        }
    }

    public void partBroughtToTop(IWorkbenchPart part) {
    }

    public void partClosed(IWorkbenchPart part) {
        if (part instanceof ISaveablePart) {
            part.removePropertyListener(this);
        }
    }

    public void partDeactivated(IWorkbenchPart part) {
    }

    public void partOpened(IWorkbenchPart part) {
        if (part instanceof ISaveablePart) {
            part.addPropertyListener(this);
        }
    }

    public void windowActivated(IWorkbenchWindow window) {
        this.register(window);
    }

    public void windowDeactivated(IWorkbenchWindow window) {
    }

    public void windowClosed(IWorkbenchWindow window) {
        window.getPartService().removePartListener(this);
    }

    public void windowOpened(IWorkbenchWindow window) {
        this.register(window);
    }

    public void propertyChanged(Object source, int propID) {
        if (source instanceof ISaveablePart && propID == 257) {
            this.update();
        }
    }
}

