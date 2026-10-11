/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.AbstractHandler
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.commands.ParameterizedCommand
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExecutableExtension
 *  org.eclipse.jface.bindings.Trigger
 *  org.eclipse.jface.bindings.TriggerSequence
 *  org.eclipse.jface.bindings.keys.KeyStroke
 *  org.eclipse.jface.bindings.keys.SWTKeySupport
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.swt.events.FocusEvent
 *  org.eclipse.swt.events.FocusListener
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.events.KeyListener
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.MouseMoveListener
 *  org.eclipse.swt.events.TraverseEvent
 *  org.eclipse.swt.events.TraverseListener
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.layout.FillLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.TableColumn
 *  org.eclipse.swt.widgets.TableItem
 */
package org.eclipse.ui.internal;

import org.eclipse.core.commands.AbstractHandler;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.ParameterizedCommand;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExecutableExtension;
import org.eclipse.jface.bindings.Trigger;
import org.eclipse.jface.bindings.TriggerSequence;
import org.eclipse.jface.bindings.keys.KeyStroke;
import org.eclipse.jface.bindings.keys.SWTKeySupport;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.MouseMoveListener;
import org.eclipse.swt.events.TraverseEvent;
import org.eclipse.swt.events.TraverseListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.layout.FillLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableColumn;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.ui.IEditorReference;
import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.contexts.IContextService;
import org.eclipse.ui.handlers.HandlerUtil;
import org.eclipse.ui.internal.PartSite;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.keys.IBindingService;

public abstract class CycleBaseHandler
extends AbstractHandler
implements IExecutableExtension {
    private Object selection;
    protected IWorkbenchWindow window;
    protected boolean gotoDirection;
    private TriggerSequence[] backwardTriggerSequences = null;
    protected ParameterizedCommand commandBackward = null;
    protected ParameterizedCommand commandForward = null;
    private TriggerSequence[] forwardTriggerSequences = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    protected abstract void addItems(Table var1, WorkbenchPage var2);

    protected int getCurrentItemIndex() {
        return 0;
    }

    protected abstract ParameterizedCommand getBackwardCommand();

    protected abstract ParameterizedCommand getForwardCommand();

    public Object execute(ExecutionEvent event) throws ExecutionException {
        this.window = HandlerUtil.getActiveWorkbenchWindowChecked(event);
        IWorkbenchPage page = this.window.getActivePage();
        IWorkbenchPart activePart = page.getActivePart();
        this.getTriggers();
        this.openDialog((WorkbenchPage)page, activePart);
        this.clearTriggers();
        this.activate(page, this.selection);
        return null;
    }

    protected void openDialog(WorkbenchPage page, IWorkbenchPart activePart) {
        Shell shell = null;
        this.selection = null;
        if (activePart != null) {
            shell = activePart.getSite().getShell();
        }
        if (shell == null) {
            shell = this.window.getShell();
        }
        final Shell dialog = new Shell(shell, 0);
        Display display = dialog.getDisplay();
        dialog.setLayout((Layout)new FillLayout());
        final Table table = new Table((Composite)dialog, 65540);
        table.setHeaderVisible(true);
        table.setLinesVisible(true);
        TableColumn tc = new TableColumn(table, 0);
        tc.setResizable(false);
        tc.setText(this.getTableHeader(activePart));
        this.addItems(table, page);
        int tableItemCount = table.getItemCount();
        switch (tableItemCount) {
            case 0: {
                this.cancel(dialog);
                return;
            }
            case 1: {
                table.setSelection(0);
                break;
            }
            default: {
                int i;
                if (this.gotoDirection) {
                    i = this.getCurrentItemIndex() + 1;
                    if (i >= tableItemCount) {
                        i = 0;
                    }
                } else {
                    i = this.getCurrentItemIndex() - 1;
                    if (i < 0) {
                        i = tableItemCount - 1;
                    }
                }
                table.setSelection(i);
            }
        }
        tc.pack();
        table.pack();
        dialog.pack();
        Rectangle tableBounds = table.getBounds();
        tableBounds.height = Math.min(tableBounds.height, table.getItemHeight() * 22);
        table.setBounds(tableBounds);
        dialog.setBounds(dialog.computeTrim(tableBounds.x, tableBounds.y, tableBounds.width, tableBounds.height));
        tc.setWidth(table.getClientArea().width);
        table.setFocus();
        table.addFocusListener(new FocusListener(){

            public void focusGained(FocusEvent e) {
            }

            public void focusLost(FocusEvent e) {
                CycleBaseHandler.this.cancel(dialog);
            }
        });
        table.addMouseMoveListener(new MouseMoveListener(){
            TableItem lastItem = null;

            public void mouseMove(MouseEvent e) {
                if (table.equals(e.getSource())) {
                    TableItem o;
                    if (this.lastItem == null ^ (o = table.getItem(new Point(e.x, e.y))) == null) {
                        table.setCursor(o == null ? null : table.getDisplay().getSystemCursor(21));
                    }
                    if (o instanceof TableItem) {
                        if (!o.equals(this.lastItem)) {
                            this.lastItem = o;
                            table.setSelection(new TableItem[]{this.lastItem});
                        }
                    } else if (o == null) {
                        this.lastItem = null;
                    }
                }
            }
        });
        this.setDialogLocation(dialog, activePart);
        IWorkbench iWorkbench = this.window.getWorkbench();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.contexts.IContextService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IContextService contextService = (IContextService)iWorkbench.getService(clazz);
        try {
            dialog.open();
            this.addMouseListener(table, dialog);
            contextService.registerShell(dialog, 1);
            this.addKeyListener(table, dialog);
            this.addTraverseListener(table);
            while (!dialog.isDisposed()) {
                if (display.readAndDispatch()) continue;
                display.sleep();
            }
        }
        finally {
            if (!dialog.isDisposed()) {
                this.cancel(dialog);
            }
            contextService.unregisterShell(dialog);
        }
    }

    protected void setDialogLocation(Shell dialog, IWorkbenchPart activePart) {
        Display display = dialog.getDisplay();
        Rectangle dialogBounds = dialog.getBounds();
        Rectangle parentBounds = dialog.getParent().getBounds();
        Rectangle monitorBounds = activePart == null ? display.getPrimaryMonitor().getBounds() : ((PartSite)activePart.getSite()).getPane().getControl().getMonitor().getBounds();
        dialogBounds.x = parentBounds.x + (parentBounds.width - dialogBounds.width) / 2;
        dialogBounds.y = parentBounds.y + (parentBounds.height - dialogBounds.height) / 2;
        if (!monitorBounds.contains(dialogBounds.x, dialogBounds.y) || !monitorBounds.contains(dialogBounds.x + dialogBounds.width, dialogBounds.y + dialogBounds.height)) {
            dialogBounds.x = Math.max(0, monitorBounds.x + (monitorBounds.width - dialogBounds.width) / 2);
            dialogBounds.y = Math.max(0, monitorBounds.y + (monitorBounds.height - dialogBounds.height) / 2);
        }
        dialog.setLocation(dialogBounds.x, dialogBounds.y);
    }

    protected void clearTriggers() {
        this.forwardTriggerSequences = null;
        this.backwardTriggerSequences = null;
    }

    protected void getTriggers() {
        this.commandForward = this.getForwardCommand();
        this.commandBackward = this.getBackwardCommand();
        IWorkbench iWorkbench = this.window.getWorkbench();
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.keys.IBindingService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IBindingService bindingService = (IBindingService)iWorkbench.getService(clazz);
        this.forwardTriggerSequences = bindingService.getActiveBindingsFor(this.commandForward);
        this.backwardTriggerSequences = bindingService.getActiveBindingsFor(this.commandBackward);
    }

    protected void addKeyListener(final Table table, final Shell dialog) {
        table.addKeyListener(new KeyListener(){
            private boolean firstKey = true;
            private boolean quickReleaseMode = false;

            public void keyPressed(KeyEvent e) {
                int index;
                int triggersLength;
                Trigger[] triggers;
                TriggerSequence triggerSequence;
                int i;
                int keyCode = e.keyCode;
                char character = e.character;
                int accelerator = SWTKeySupport.convertEventToUnmodifiedAccelerator((KeyEvent)e);
                KeyStroke keyStroke = SWTKeySupport.convertAcceleratorToKeyStroke((int)accelerator);
                boolean acceleratorForward = false;
                boolean acceleratorBackward = false;
                if (CycleBaseHandler.this.commandForward != null && CycleBaseHandler.this.forwardTriggerSequences != null) {
                    int forwardCount = CycleBaseHandler.this.forwardTriggerSequences.length;
                    i = 0;
                    while (i < forwardCount) {
                        triggerSequence = CycleBaseHandler.this.forwardTriggerSequences[i];
                        triggers = triggerSequence.getTriggers();
                        triggersLength = triggers.length;
                        if (triggersLength > 0 && triggers[triggersLength - 1].equals((Object)keyStroke)) {
                            acceleratorForward = true;
                            break;
                        }
                        ++i;
                    }
                }
                if (CycleBaseHandler.this.commandBackward != null && CycleBaseHandler.this.backwardTriggerSequences != null) {
                    int backwardCount = CycleBaseHandler.this.backwardTriggerSequences.length;
                    i = 0;
                    while (i < backwardCount) {
                        triggerSequence = CycleBaseHandler.this.backwardTriggerSequences[i];
                        triggers = triggerSequence.getTriggers();
                        triggersLength = triggers.length;
                        if (triggersLength > 0 && triggers[triggersLength - 1].equals((Object)keyStroke)) {
                            acceleratorBackward = true;
                            break;
                        }
                        ++i;
                    }
                }
                if (character == '\r' || character == '\n') {
                    CycleBaseHandler.this.ok(dialog, table);
                } else if (acceleratorForward) {
                    if (this.firstKey && e.stateMask != 0) {
                        this.quickReleaseMode = true;
                    }
                    index = table.getSelectionIndex();
                    table.setSelection((index + 1) % table.getItemCount());
                } else if (acceleratorBackward) {
                    if (this.firstKey && e.stateMask != 0) {
                        this.quickReleaseMode = true;
                    }
                    table.setSelection((index = table.getSelectionIndex()) >= 1 ? index - 1 : table.getItemCount() - 1);
                } else if (keyCode != 65536 && keyCode != 0x400000 && keyCode != 262144 && keyCode != 131072 && keyCode != 0x1000002 && keyCode != 0x1000001 && keyCode != 0x1000003 && keyCode != 0x1000004) {
                    CycleBaseHandler.this.cancel(dialog);
                }
                this.firstKey = false;
            }

            public void keyReleased(KeyEvent e) {
                int keyCode = e.keyCode;
                int stateMask = e.stateMask;
                IPreferenceStore store = WorkbenchPlugin.getDefault().getPreferenceStore();
                boolean stickyCycle = store.getBoolean("STICKY_CYCLE");
                if (!stickyCycle && (this.firstKey || this.quickReleaseMode) && keyCode == stateMask) {
                    CycleBaseHandler.this.ok(dialog, table);
                }
            }
        });
    }

    protected final void addTraverseListener(Table table) {
        table.addTraverseListener(new TraverseListener(){

            public final void keyTraversed(TraverseEvent event) {
                event.doit = false;
            }
        });
    }

    protected void activate(IWorkbenchPage page, Object selectedItem) {
        if (selectedItem != null) {
            IWorkbenchPart part;
            if (selectedItem instanceof IEditorReference) {
                page.setEditorAreaVisible(true);
            }
            if (selectedItem instanceof IWorkbenchPartReference && (part = ((IWorkbenchPartReference)selectedItem).getPart(true)) != null) {
                page.activate(part);
            }
            if (selectedItem instanceof IPerspectiveDescriptor) {
                IPerspectiveDescriptor persp = (IPerspectiveDescriptor)selectedItem;
                page.setPerspective(persp);
            }
        }
    }

    protected void cancel(Shell dialog) {
        this.selection = null;
        dialog.close();
    }

    protected void ok(Shell dialog, Table table) {
        TableItem[] items = table.getSelection();
        if (items != null && items.length == 1) {
            this.selection = items[0].getData();
        }
        dialog.close();
    }

    protected void addMouseListener(final Table table, final Shell dialog) {
        table.addMouseListener(new MouseListener(){

            public void mouseDoubleClick(MouseEvent e) {
                CycleBaseHandler.this.ok(dialog, table);
            }

            public void mouseDown(MouseEvent e) {
                CycleBaseHandler.this.ok(dialog, table);
            }

            public void mouseUp(MouseEvent e) {
                CycleBaseHandler.this.ok(dialog, table);
            }
        });
    }

    protected abstract String getTableHeader(IWorkbenchPart var1);

    public Object getSelection() {
        return this.selection;
    }

    public IWorkbenchWindow getWindow() {
        return this.window;
    }

    public TriggerSequence[] getBackwardTriggerSequences() {
        return this.backwardTriggerSequences;
    }

    public TriggerSequence[] getForwardTriggerSequences() {
        return this.forwardTriggerSequences;
    }

    public void setInitializationData(IConfigurationElement config, String propertyName, Object data) throws CoreException {
        this.gotoDirection = "true".equals(data);
    }
}

