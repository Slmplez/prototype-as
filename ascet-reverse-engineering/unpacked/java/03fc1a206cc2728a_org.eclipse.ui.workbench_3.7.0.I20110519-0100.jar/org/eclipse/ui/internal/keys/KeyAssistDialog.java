/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.Command
 *  org.eclipse.core.commands.ParameterizedCommand
 *  org.eclipse.core.commands.common.CommandException
 *  org.eclipse.core.commands.common.NotDefinedException
 *  org.eclipse.jface.bindings.Binding
 *  org.eclipse.jface.bindings.TriggerSequence
 *  org.eclipse.jface.bindings.keys.KeySequence
 *  org.eclipse.jface.bindings.keys.KeyStroke
 *  org.eclipse.jface.dialogs.Dialog
 *  org.eclipse.jface.dialogs.PopupDialog
 *  org.eclipse.jface.preference.PreferenceDialog
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.TableColumn
 *  org.eclipse.swt.widgets.TableItem
 */
package org.eclipse.ui.internal.keys;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;
import org.eclipse.core.commands.Command;
import org.eclipse.core.commands.ParameterizedCommand;
import org.eclipse.core.commands.common.CommandException;
import org.eclipse.core.commands.common.NotDefinedException;
import org.eclipse.jface.bindings.Binding;
import org.eclipse.jface.bindings.TriggerSequence;
import org.eclipse.jface.bindings.keys.KeySequence;
import org.eclipse.jface.bindings.keys.KeyStroke;
import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.dialogs.PopupDialog;
import org.eclipse.jface.preference.PreferenceDialog;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableColumn;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.activities.IActivityManager;
import org.eclipse.ui.commands.ICommandService;
import org.eclipse.ui.contexts.IContextService;
import org.eclipse.ui.dialogs.PreferencesUtil;
import org.eclipse.ui.internal.keys.KeyAssistMessages;
import org.eclipse.ui.internal.keys.KeyBindingState;
import org.eclipse.ui.internal.keys.WorkbenchKeyboard;
import org.eclipse.ui.keys.IBindingService;

final class KeyAssistDialog
extends PopupDialog {
    private static final String BINDING_KEY = "Binding.bindings.jface.eclipse.org";
    private static final int NO_REMEMBERED_WIDTH = -1;
    private final IActivityManager activityManager;
    private final IBindingService bindingService;
    private Binding binding = null;
    private final List bindings = new ArrayList();
    private final ICommandService commandService;
    private Table completionsTable = null;
    private boolean hasRememberedState = false;
    private final KeyBindingState keyBindingState;
    private int previousWidth = -1;
    private final WorkbenchKeyboard workbenchKeyboard;
    private SortedMap conflictMatches;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    KeyAssistDialog(IWorkbench workbench, WorkbenchKeyboard associatedKeyboard, KeyBindingState associatedState) {
        super(null, 4, true, false, false, false, null, null);
        this.activityManager = workbench.getActivitySupport().getActivityManager();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.keys.IBindingService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.bindingService = (IBindingService)workbench.getService(clazz);
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.ui.commands.ICommandService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.commandService = (ICommandService)workbench.getService(clazz2);
        this.keyBindingState = associatedState;
        this.workbenchKeyboard = associatedKeyboard;
        this.setInfoText(this.getKeySequenceString());
    }

    final void clearRememberedState() {
        this.previousWidth = -1;
        this.binding = null;
        this.hasRememberedState = false;
    }

    public final boolean close() {
        return this.close(false);
    }

    public final boolean close(boolean rememberState) {
        return this.close(rememberState, true);
    }

    private final boolean close(boolean rememberState, boolean resetState) {
        Shell shell = this.getShell();
        if (rememberState) {
            Binding bindingToRemember;
            int widthToRemember = shell != null && !shell.isDisposed() ? this.getShell().getSize().x : -1;
            if (this.completionsTable != null && !this.completionsTable.isDisposed()) {
                int selectedIndex = this.completionsTable.getSelectionIndex();
                if (selectedIndex != -1) {
                    TableItem selectedItem = this.completionsTable.getItem(selectedIndex);
                    bindingToRemember = (Binding)selectedItem.getData(BINDING_KEY);
                } else {
                    bindingToRemember = null;
                }
            } else {
                bindingToRemember = null;
            }
            this.rememberState(widthToRemember, bindingToRemember);
            this.completionsTable = null;
        }
        if (resetState) {
            this.keyBindingState.reset();
        }
        return super.close();
    }

    private final void configureLocation(Point size) {
        int yCoord;
        int xCoord;
        Shell shell = this.getShell();
        Shell workbenchWindowShell = this.keyBindingState.getAssociatedWindow().getShell();
        if (workbenchWindowShell != null) {
            Rectangle workbenchWindowBounds = workbenchWindowShell.getBounds();
            xCoord = workbenchWindowBounds.x + workbenchWindowBounds.width - size.x - 10;
            yCoord = workbenchWindowBounds.y + workbenchWindowBounds.height - size.y - 10;
        } else {
            xCoord = 0;
            yCoord = 0;
        }
        Rectangle bounds = new Rectangle(xCoord, yCoord, size.x, size.y);
        shell.setBounds(this.getConstrainedShellBounds(bounds));
    }

    private final Point configureSize() {
        Shell workbenchWindowShell;
        Shell shell = this.getShell();
        shell.pack();
        Point size = shell.getSize();
        if (this.previousWidth != -1 && this.previousWidth > size.x) {
            size.x = this.previousWidth;
        }
        if ((workbenchWindowShell = this.keyBindingState.getAssociatedWindow().getShell()) != null) {
            Point workbenchWindowSize = workbenchWindowShell.getSize();
            int maxWidth = workbenchWindowSize.x * 2 / 5;
            int maxHeight = workbenchWindowSize.y / 2;
            if (size.x > maxWidth) {
                size.x = maxWidth;
            }
            if (size.y > maxHeight) {
                size.y = maxHeight;
            }
        }
        shell.setSize(size);
        return size;
    }

    private String getKeySequenceString() {
        Command command = this.commandService.getCommand("org.eclipse.ui.window.showKeyAssist");
        TriggerSequence[] keyBindings = this.bindingService.getActiveBindingsFor(new ParameterizedCommand(command, null));
        int keyBindingsCount = keyBindings.length;
        KeySequence currentState = this.keyBindingState.getCurrentSequence();
        int prefixSize = currentState.getKeyStrokes().length;
        KeySequence keySequence = null;
        int i = 0;
        while (i < keyBindingsCount) {
            keySequence = (KeySequence)keyBindings[i];
            if (prefixSize <= 0) break;
            if (keySequence.startsWith((TriggerSequence)currentState, false)) {
                KeyStroke[] oldKeyStrokes = keySequence.getKeyStrokes();
                int newSize = oldKeyStrokes.length - prefixSize;
                KeyStroke[] newKeyStrokes = new KeyStroke[newSize];
                System.arraycopy(oldKeyStrokes, prefixSize, newKeyStrokes, 0, newSize);
                keySequence = KeySequence.getInstance((KeyStroke[])newKeyStrokes);
                break;
            }
            keySequence = null;
            ++i;
        }
        if (keySequence == null) {
            return null;
        }
        return NLS.bind((String)KeyAssistMessages.openPreferencePage, (Object)keySequence.format());
    }

    protected final Control createDialogArea(Composite parent) {
        SortedMap partialMatches;
        this.registerShellType();
        Composite composite = new Composite(parent, 0);
        GridLayout compositeLayout = new GridLayout();
        compositeLayout.marginHeight = 0;
        compositeLayout.marginWidth = 0;
        composite.setLayout((Layout)compositeLayout);
        composite.setLayoutData((Object)new GridData(1808));
        composite.setBackground(parent.getBackground());
        if (this.conflictMatches != null) {
            partialMatches = this.conflictMatches;
            this.conflictMatches = null;
        } else {
            partialMatches = this.getPartialMatches();
        }
        if (partialMatches.isEmpty()) {
            this.createEmptyDialogArea(composite);
        } else {
            this.createTableDialogArea(composite, partialMatches);
        }
        return composite;
    }

    private final void createEmptyDialogArea(Composite parent) {
        Label noMatchesLabel = new Label(parent, 0);
        noMatchesLabel.setText(KeyAssistMessages.NoMatches_Message);
        noMatchesLabel.setLayoutData((Object)new GridData(1808));
        noMatchesLabel.setBackground(parent.getBackground());
    }

    private final void createTableDialogArea(Composite parent, SortedMap partialMatches) {
        this.completionsTable = new Table(parent, 65540);
        GridData gridData = new GridData(1808);
        this.completionsTable.setLayoutData((Object)gridData);
        this.completionsTable.setBackground(parent.getBackground());
        this.completionsTable.setLinesVisible(true);
        this.bindings.clear();
        TableColumn columnCommandName = new TableColumn(this.completionsTable, 16384, 0);
        TableColumn columnKeySequence = new TableColumn(this.completionsTable, 16384, 1);
        Iterator itemsItr = partialMatches.entrySet().iterator();
        while (itemsItr.hasNext()) {
            Map.Entry entry = itemsItr.next();
            String sequence = (String)entry.getValue();
            Binding binding = (Binding)entry.getKey();
            ParameterizedCommand command = binding.getParameterizedCommand();
            try {
                String[] text = new String[]{command.getName(), sequence};
                TableItem item = new TableItem(this.completionsTable, 0);
                item.setText(text);
                item.setData(BINDING_KEY, (Object)binding);
                this.bindings.add(binding);
            }
            catch (NotDefinedException notDefinedException) {}
        }
        Dialog.applyDialogFont((Control)parent);
        columnKeySequence.pack();
        if (this.previousWidth != -1) {
            columnKeySequence.setWidth(this.previousWidth);
        }
        columnCommandName.pack();
        if (this.completionsTable.getItems().length > 0) {
            this.completionsTable.setSelection(0);
        }
        this.completionsTable.addListener(14, new Listener(){

            public final void handleEvent(Event event) {
                KeyAssistDialog.this.executeKeyBinding(event);
            }
        });
    }

    private final void editKeyBinding() {
        PreferenceDialog dialog = PreferencesUtil.createPreferenceDialogOn(this.getShell(), "org.eclipse.ui.preferencePages.Keys", null, this.binding);
        this.clearRememberedState();
        dialog.open();
    }

    private final void executeKeyBinding(Event trigger) {
        int selectionIndex = this.completionsTable.getSelectionIndex();
        if (selectionIndex >= 0) {
            Binding binding = (Binding)this.bindings.get(selectionIndex);
            try {
                this.workbenchKeyboard.updateShellKludge(null);
                this.workbenchKeyboard.executeCommand(binding, trigger);
            }
            catch (CommandException e) {
                this.workbenchKeyboard.logException(e, binding.getParameterizedCommand());
            }
        }
    }

    private final SortedMap getPartialMatches() {
        Map partialMatches = this.bindingService.getPartialMatches((TriggerSequence)this.keyBindingState.getCurrentSequence());
        TreeMap<Binding, String> sortedMatches = new TreeMap<Binding, String>(new Comparator(){

            public final int compare(Object a, Object b) {
                Binding bindingA = (Binding)a;
                Binding bindingB = (Binding)b;
                ParameterizedCommand commandA = bindingA.getParameterizedCommand();
                ParameterizedCommand commandB = bindingB.getParameterizedCommand();
                try {
                    return commandA.getName().compareTo(commandB.getName());
                }
                catch (NotDefinedException notDefinedException) {
                    return 0;
                }
            }
        });
        Iterator partialMatchItr = partialMatches.entrySet().iterator();
        while (partialMatchItr.hasNext()) {
            Map.Entry entry = partialMatchItr.next();
            Binding binding = (Binding)entry.getValue();
            Command command = binding.getParameterizedCommand().getCommand();
            if (!command.isDefined() || !this.activityManager.getIdentifier(command.getId()).isEnabled()) continue;
            TriggerSequence bestActiveBindingFor = this.bindingService.getBestActiveBindingFor(binding.getParameterizedCommand());
            sortedMatches.put(binding, bestActiveBindingFor == null ? null : bestActiveBindingFor.format());
        }
        return sortedMatches;
    }

    private final boolean hasRememberedState() {
        return this.hasRememberedState;
    }

    public final int open() {
        if (this.hasRememberedState()) {
            this.editKeyBinding();
            this.clearRememberedState();
            return 0;
        }
        Shell shell = this.getShell();
        if (shell != null) {
            this.close(false, false);
        }
        this.create();
        Point size = this.configureSize();
        this.configureLocation(size);
        return super.open();
    }

    public final int open(Collection bindings) {
        this.conflictMatches = new TreeMap(new Comparator(){

            public final int compare(Object a, Object b) {
                Binding bindingA = (Binding)a;
                Binding bindingB = (Binding)b;
                ParameterizedCommand commandA = bindingA.getParameterizedCommand();
                ParameterizedCommand commandB = bindingB.getParameterizedCommand();
                try {
                    return commandA.getName().compareTo(commandB.getName());
                }
                catch (NotDefinedException notDefinedException) {
                    return 0;
                }
            }
        });
        Iterator i = bindings.iterator();
        while (i.hasNext()) {
            Binding b;
            TriggerSequence bestActiveBindingFor = this.bindingService.getBestActiveBindingFor((b = (Binding)i.next()).getParameterizedCommand());
            this.conflictMatches.put(b, bestActiveBindingFor == null ? null : bestActiveBindingFor.format());
        }
        Shell shell = this.getShell();
        if (shell != null) {
            this.close(false, false);
        }
        this.create();
        Point size = this.configureSize();
        this.configureLocation(size);
        return super.open();
    }

    private final void registerShellType() {
        Shell shell = this.getShell();
        IWorkbench iWorkbench = this.keyBindingState.getAssociatedWindow().getWorkbench();
        Class<?> clazz = class$2;
        if (clazz == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.ui.contexts.IContextService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IContextService contextService = (IContextService)iWorkbench.getService(clazz);
        contextService.registerShell(shell, contextService.getShellType((Shell)shell.getParent()));
    }

    private final void rememberState(int previousWidth, Binding binding) {
        this.previousWidth = previousWidth;
        this.binding = binding;
        this.hasRememberedState = true;
    }

    protected final void setParentShell(Shell newParentShell) {
        super.setParentShell(newParentShell);
    }
}

