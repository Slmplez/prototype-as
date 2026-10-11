/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.IMenuListener
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.text.source.IVerticalRulerInfo
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.ui.IEditorActionDelegate
 *  org.eclipse.ui.IEditorPart
 *  org.eclipse.ui.actions.ActionDelegate
 */
package org.eclipse.ui.texteditor;

import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IMenuListener;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.text.source.IVerticalRulerInfo;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.ui.IEditorActionDelegate;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.actions.ActionDelegate;
import org.eclipse.ui.texteditor.ITextEditor;
import org.eclipse.ui.texteditor.ITextEditorExtension;
import org.eclipse.ui.texteditor.IUpdate;

public abstract class AbstractRulerActionDelegate
extends ActionDelegate
implements IEditorActionDelegate,
MouseListener,
IMenuListener {
    private ITextEditor fEditor;
    private IAction fCallerAction;
    private IAction fAction;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    protected abstract IAction createAction(ITextEditor var1, IVerticalRulerInfo var2);

    public void setActiveEditor(IAction callerAction, IEditorPart targetEditor) {
        Object object;
        Control control;
        IVerticalRulerInfo rulerInfo;
        if (this.fEditor != null) {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.jface.text.source.IVerticalRulerInfo");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((rulerInfo = (IVerticalRulerInfo)this.fEditor.getAdapter(clazz)) != null && (control = rulerInfo.getControl()) != null && !control.isDisposed()) {
                control.removeMouseListener((MouseListener)this);
            }
            if (this.fEditor instanceof ITextEditorExtension) {
                ((ITextEditorExtension)((Object)this.fEditor)).removeRulerContextMenuListener(this);
            }
        }
        if (targetEditor == null) {
            object = null;
        } else {
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("org.eclipse.ui.texteditor.ITextEditor");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            object = targetEditor.getAdapter((Class)clazz);
        }
        this.fEditor = (ITextEditor)object;
        this.fCallerAction = callerAction;
        this.fAction = null;
        if (this.fEditor != null) {
            Class<?> clazz;
            if (this.fEditor instanceof ITextEditorExtension) {
                ((ITextEditorExtension)((Object)this.fEditor)).addRulerContextMenuListener(this);
            }
            if ((clazz = class$0) == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.jface.text.source.IVerticalRulerInfo");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((rulerInfo = (IVerticalRulerInfo)this.fEditor.getAdapter(clazz)) != null) {
                this.fAction = this.createAction(this.fEditor, rulerInfo);
                this.update();
                control = rulerInfo.getControl();
                if (control != null && !control.isDisposed()) {
                    control.addMouseListener((MouseListener)this);
                }
            }
        }
    }

    public void run(IAction callerAction) {
        if (this.fAction != null) {
            this.fAction.run();
        }
    }

    public void runWithEvent(IAction action, Event event) {
        if (this.fAction != null) {
            this.fAction.runWithEvent(event);
        }
    }

    public void selectionChanged(IAction action, ISelection selection) {
    }

    private void update() {
        if (this.fAction instanceof IUpdate) {
            ((IUpdate)this.fAction).update();
            if (this.fCallerAction != null) {
                this.fCallerAction.setText(this.fAction.getText());
                this.fCallerAction.setEnabled(this.fAction.isEnabled());
            }
        }
    }

    public void menuAboutToShow(IMenuManager manager) {
        this.update();
    }

    public void mouseDoubleClick(MouseEvent e) {
    }

    public void mouseDown(MouseEvent e) {
        this.update();
    }

    public void mouseUp(MouseEvent e) {
    }
}

