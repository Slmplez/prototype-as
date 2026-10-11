/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.dialogs.IPageChangedListener
 *  org.eclipse.jface.dialogs.PageChangedEvent
 *  org.eclipse.jface.text.IFindReplaceTarget
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.ui.IPartListener2
 *  org.eclipse.ui.IPartService
 *  org.eclipse.ui.IWorkbenchPart
 *  org.eclipse.ui.IWorkbenchPartReference
 *  org.eclipse.ui.IWorkbenchPartSite
 *  org.eclipse.ui.IWorkbenchWindow
 */
package org.eclipse.ui.texteditor;

import java.util.ResourceBundle;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.dialogs.IPageChangedListener;
import org.eclipse.jface.dialogs.PageChangedEvent;
import org.eclipse.jface.text.IFindReplaceTarget;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IPartListener2;
import org.eclipse.ui.IPartService;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.IWorkbenchPartSite;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.texteditor.FindReplaceDialog;
import org.eclipse.ui.texteditor.ITextEditorExtension2;
import org.eclipse.ui.texteditor.IUpdate;
import org.eclipse.ui.texteditor.ResourceAction;

public class FindReplaceAction
extends ResourceAction
implements IUpdate {
    private static FindReplaceDialogStub fgFindReplaceDialogStub;
    private static FindReplaceDialogStub fgFindReplaceDialogStubShell;
    private IFindReplaceTarget fTarget;
    private IWorkbenchPart fWorkbenchPart;
    private IWorkbenchWindow fWorkbenchWindow;
    private Shell fShell;
    static /* synthetic */ Class class$0;

    public FindReplaceAction(ResourceBundle bundle, String prefix, IWorkbenchPart workbenchPart) {
        super(bundle, prefix);
        Assert.isLegal((workbenchPart != null ? 1 : 0) != 0);
        this.fWorkbenchPart = workbenchPart;
        this.update();
    }

    public FindReplaceAction(ResourceBundle bundle, String prefix, Shell shell, IFindReplaceTarget target) {
        super(bundle, prefix);
        Assert.isLegal((target != null && shell != null ? 1 : 0) != 0);
        this.fTarget = target;
        this.fShell = shell;
        this.update();
    }

    public FindReplaceAction(ResourceBundle bundle, String prefix, IWorkbenchWindow workbenchWindow) {
        super(bundle, prefix);
        this.fWorkbenchWindow = workbenchWindow;
        this.update();
    }

    public void run() {
        FindReplaceDialog dialog;
        boolean isEditable;
        if (this.fTarget == null) {
            return;
        }
        if (this.fShell == null) {
            if (fgFindReplaceDialogStub != null) {
                Shell shell = this.fWorkbenchPart.getSite().getShell();
                fgFindReplaceDialogStub.checkShell(shell);
            }
            if (fgFindReplaceDialogStub == null) {
                fgFindReplaceDialogStub = new FindReplaceDialogStub(this.fWorkbenchPart.getSite());
            }
            isEditable = this.fWorkbenchPart instanceof ITextEditorExtension2 ? ((ITextEditorExtension2)this.fWorkbenchPart).isEditorInputModifiable() : this.fTarget.isEditable();
            dialog = fgFindReplaceDialogStub.getDialog();
        } else {
            if (fgFindReplaceDialogStubShell != null) {
                fgFindReplaceDialogStubShell.checkShell(this.fShell);
            }
            if (fgFindReplaceDialogStubShell == null) {
                fgFindReplaceDialogStubShell = new FindReplaceDialogStub(this.fShell);
            }
            isEditable = this.fTarget.isEditable();
            dialog = fgFindReplaceDialogStubShell.getDialog();
        }
        dialog.updateTarget(this.fTarget, isEditable, true);
        dialog.open();
    }

    public void update() {
        if (this.fShell == null) {
            if (this.fWorkbenchPart == null && this.fWorkbenchWindow != null) {
                this.fWorkbenchPart = this.fWorkbenchWindow.getPartService().getActivePart();
            }
            if (this.fWorkbenchPart != null) {
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("org.eclipse.jface.text.IFindReplaceTarget");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                this.fTarget = (IFindReplaceTarget)this.fWorkbenchPart.getAdapter((Class)clazz);
            } else {
                this.fTarget = null;
            }
        }
        this.setEnabled(this.fTarget != null && this.fTarget.canPerformFind());
    }

    static class FindReplaceDialogStub
    implements IPartListener2,
    IPageChangedListener,
    DisposeListener {
        private IWorkbenchPart fPart;
        private IWorkbenchPart fPreviousPart;
        private IFindReplaceTarget fPreviousTarget;
        private IWorkbenchWindow fWindow;
        private FindReplaceDialog fDialog;

        public FindReplaceDialogStub(IWorkbenchPartSite site) {
            this(site.getShell());
            this.fWindow = site.getWorkbenchWindow();
            IPartService service = this.fWindow.getPartService();
            service.addPartListener((IPartListener2)this);
            this.partActivated(service.getActivePart());
        }

        public FindReplaceDialogStub(Shell shell) {
            this.fDialog = new FindReplaceDialog(shell);
            this.fDialog.create();
            this.fDialog.getShell().addDisposeListener((DisposeListener)this);
        }

        public FindReplaceDialog getDialog() {
            return this.fDialog;
        }

        private void partActivated(IWorkbenchPart part) {
            IFindReplaceTarget iFindReplaceTarget;
            if (part == null) {
                iFindReplaceTarget = null;
            } else {
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("org.eclipse.jface.text.IFindReplaceTarget");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                iFindReplaceTarget = (IFindReplaceTarget)part.getAdapter((Class)clazz);
            }
            IFindReplaceTarget target = iFindReplaceTarget;
            this.fPreviousPart = this.fPart;
            IWorkbenchPart iWorkbenchPart = this.fPart = target == null ? null : part;
            if (this.fPreviousTarget != target) {
                this.fPreviousTarget = target;
                if (this.fDialog != null) {
                    boolean isEditable = false;
                    if (this.fPart instanceof ITextEditorExtension2) {
                        ITextEditorExtension2 extension = (ITextEditorExtension2)this.fPart;
                        isEditable = extension.isEditorInputModifiable();
                    } else if (target != null) {
                        isEditable = target.isEditable();
                    }
                    this.fDialog.updateTarget(target, isEditable, false);
                }
            }
        }

        public void partActivated(IWorkbenchPartReference partRef) {
            this.partActivated(partRef.getPart(true));
        }

        public void pageChanged(PageChangedEvent event) {
            if (event.getSource() instanceof IWorkbenchPart) {
                this.partActivated((IWorkbenchPart)event.getSource());
            }
        }

        public void partClosed(IWorkbenchPartReference partRef) {
            IWorkbenchPart part = partRef.getPart(true);
            if (part == this.fPreviousPart) {
                this.fPreviousPart = null;
                this.fPreviousTarget = null;
            }
            if (part == this.fPart) {
                this.partActivated((IWorkbenchPart)null);
            }
        }

        public void widgetDisposed(DisposeEvent event) {
            if (fgFindReplaceDialogStub == this) {
                fgFindReplaceDialogStub = null;
            }
            if (fgFindReplaceDialogStubShell == this) {
                fgFindReplaceDialogStubShell = null;
            }
            if (this.fWindow != null) {
                this.fWindow.getPartService().removePartListener((IPartListener2)this);
                this.fWindow = null;
            }
            this.fDialog = null;
            this.fPart = null;
            this.fPreviousPart = null;
            this.fPreviousTarget = null;
        }

        public void partOpened(IWorkbenchPartReference partRef) {
        }

        public void partDeactivated(IWorkbenchPartReference partRef) {
        }

        public void partBroughtToTop(IWorkbenchPartReference partRef) {
        }

        public void partHidden(IWorkbenchPartReference partRef) {
        }

        public void partInputChanged(IWorkbenchPartReference partRef) {
        }

        public void partVisible(IWorkbenchPartReference partRef) {
        }

        public void checkShell(Shell shell) {
            if (this.fDialog != null && shell != this.fDialog.getParentShell()) {
                if (fgFindReplaceDialogStub == this) {
                    fgFindReplaceDialogStub = null;
                }
                if (fgFindReplaceDialogStubShell == this) {
                    fgFindReplaceDialogStubShell = null;
                }
                this.fDialog.close();
            }
        }
    }
}

