/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.commands.IExecutionListener
 *  org.eclipse.core.commands.NotHandledException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.text.ITextViewer
 *  org.eclipse.swt.SWT
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.custom.VerifyKeyListener
 *  org.eclipse.swt.events.FocusEvent
 *  org.eclipse.swt.events.FocusListener
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.VerifyEvent
 *  org.eclipse.ui.IWorkbench
 *  org.eclipse.ui.PlatformUI
 *  org.eclipse.ui.commands.ICommandService
 */
package org.eclipse.ui.internal.texteditor;

import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.IExecutionListener;
import org.eclipse.core.commands.NotHandledException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.swt.SWT;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.custom.VerifyKeyListener;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.VerifyEvent;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.commands.ICommandService;
import org.eclipse.ui.internal.texteditor.ICompoundEditListener;
import org.eclipse.ui.internal.texteditor.TextEditorPlugin;

public final class CompoundEditExitStrategy {
    private final String[] fCommandIds;
    private final EventListener fEventListener = new EventListener();
    private final ListenerList fListenerList = new ListenerList(1);
    private ITextViewer fViewer;
    private StyledText fWidgetEventSource;
    static /* synthetic */ Class class$0;

    public CompoundEditExitStrategy(String commandId) {
        if (commandId == null) {
            throw new NullPointerException("commandId");
        }
        this.fCommandIds = new String[]{commandId};
    }

    public CompoundEditExitStrategy(String[] commandIds) {
        int i = 0;
        while (i < commandIds.length) {
            if (commandIds[i] == null) {
                throw new NullPointerException("commandIds[" + i + "]");
            }
            ++i;
        }
        this.fCommandIds = new String[commandIds.length];
        System.arraycopy(commandIds, 0, this.fCommandIds, 0, commandIds.length);
    }

    public void arm(ITextViewer viewer) {
        this.disarm();
        if (viewer == null) {
            throw new NullPointerException("editor");
        }
        this.fViewer = viewer;
        this.addListeners(this.fViewer);
    }

    public void disarm() {
        if (this.isInstalled()) {
            this.removeListeners();
            this.fViewer = null;
        }
    }

    private void addListeners(ITextViewer viewer) {
        ICommandService commandService;
        this.fWidgetEventSource = viewer.getTextWidget();
        if (this.fWidgetEventSource != null) {
            this.fWidgetEventSource.addVerifyKeyListener((VerifyKeyListener)this.fEventListener);
            this.fWidgetEventSource.addMouseListener((MouseListener)this.fEventListener);
            this.fWidgetEventSource.addFocusListener((FocusListener)this.fEventListener);
        }
        IWorkbench iWorkbench = PlatformUI.getWorkbench();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.commands.ICommandService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((commandService = (ICommandService)iWorkbench.getAdapter((Class)clazz)) != null) {
            commandService.addExecutionListener((IExecutionListener)this.fEventListener);
        }
    }

    private void removeListeners() {
        ICommandService commandService;
        IWorkbench iWorkbench = PlatformUI.getWorkbench();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.commands.ICommandService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((commandService = (ICommandService)iWorkbench.getAdapter((Class)clazz)) != null) {
            commandService.removeExecutionListener((IExecutionListener)this.fEventListener);
        }
        if (this.fWidgetEventSource != null) {
            this.fWidgetEventSource.removeFocusListener((FocusListener)this.fEventListener);
            this.fWidgetEventSource.removeMouseListener((MouseListener)this.fEventListener);
            this.fWidgetEventSource.removeVerifyKeyListener((VerifyKeyListener)this.fEventListener);
            this.fWidgetEventSource = null;
        }
    }

    private boolean isInstalled() {
        return this.fViewer != null;
    }

    private void fireEndCompoundEdit() {
        this.disarm();
        Object[] listeners = this.fListenerList.getListeners();
        int i = 0;
        while (i < listeners.length) {
            ICompoundEditListener listener = (ICompoundEditListener)listeners[i];
            try {
                listener.endCompoundEdit();
            }
            catch (Exception e) {
                Status status = new Status(4, "org.eclipse.ui.workbench.texteditor", 0, "listener notification failed", (Throwable)e);
                TextEditorPlugin.getDefault().getLog().log((IStatus)status);
            }
            ++i;
        }
    }

    public void addCompoundListener(ICompoundEditListener listener) {
        this.fListenerList.add((Object)listener);
    }

    public void removeCompoundListener(ICompoundEditListener listener) {
        this.fListenerList.remove((Object)listener);
    }

    private final class EventListener
    implements MouseListener,
    FocusListener,
    VerifyKeyListener,
    IExecutionListener {
        private EventListener() {
        }

        public void mouseDoubleClick(MouseEvent e) {
            CompoundEditExitStrategy.this.fireEndCompoundEdit();
        }

        public void mouseDown(MouseEvent e) {
            CompoundEditExitStrategy.this.fireEndCompoundEdit();
        }

        public void mouseUp(MouseEvent e) {
        }

        public void focusGained(FocusEvent e) {
        }

        public void focusLost(FocusEvent e) {
            CompoundEditExitStrategy.this.fireEndCompoundEdit();
        }

        public void notHandled(String commandId, NotHandledException exception) {
        }

        public void postExecuteFailure(String commandId, ExecutionException exception) {
        }

        public void postExecuteSuccess(String commandId, Object returnValue) {
        }

        public void preExecute(String commandId, ExecutionEvent event) {
            int i = 0;
            while (i < CompoundEditExitStrategy.this.fCommandIds.length) {
                if (commandId.equals(CompoundEditExitStrategy.this.fCommandIds[i])) {
                    return;
                }
                ++i;
            }
            CompoundEditExitStrategy.this.fireEndCompoundEdit();
        }

        public void verifyKey(VerifyEvent event) {
            int maskWithoutShift = SWT.MODIFIER_MASK & 0xFFFDFFFF;
            if ((event.keyCode & SWT.MODIFIER_MASK) == 0 && (event.stateMask & maskWithoutShift) == 0) {
                CompoundEditExitStrategy.this.fireEndCompoundEdit();
            }
        }
    }
}

