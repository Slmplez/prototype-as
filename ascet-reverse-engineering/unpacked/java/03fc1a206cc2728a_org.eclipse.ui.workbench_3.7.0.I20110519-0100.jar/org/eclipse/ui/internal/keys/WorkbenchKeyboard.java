/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.commands.Command
 *  org.eclipse.core.commands.NotEnabledException
 *  org.eclipse.core.commands.NotHandledException
 *  org.eclipse.core.commands.ParameterizedCommand
 *  org.eclipse.core.commands.common.CommandException
 *  org.eclipse.core.commands.common.NotDefinedException
 *  org.eclipse.core.commands.util.Tracing
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.bindings.Binding
 *  org.eclipse.jface.bindings.TriggerSequence
 *  org.eclipse.jface.bindings.keys.KeySequence
 *  org.eclipse.jface.bindings.keys.KeyStroke
 *  org.eclipse.jface.bindings.keys.ParseException
 *  org.eclipse.jface.bindings.keys.SWTKeySupport
 *  org.eclipse.jface.util.Util
 *  org.eclipse.swt.SWT
 *  org.eclipse.swt.browser.Browser
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.custom.VerifyKeyListener
 *  org.eclipse.swt.widgets.Combo
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Text
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.ui.internal.keys;

import com.ibm.icu.text.MessageFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ResourceBundle;
import org.eclipse.core.commands.Command;
import org.eclipse.core.commands.NotEnabledException;
import org.eclipse.core.commands.NotHandledException;
import org.eclipse.core.commands.ParameterizedCommand;
import org.eclipse.core.commands.common.CommandException;
import org.eclipse.core.commands.common.NotDefinedException;
import org.eclipse.core.commands.util.Tracing;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.bindings.Binding;
import org.eclipse.jface.bindings.TriggerSequence;
import org.eclipse.jface.bindings.keys.KeySequence;
import org.eclipse.jface.bindings.keys.KeyStroke;
import org.eclipse.jface.bindings.keys.ParseException;
import org.eclipse.jface.bindings.keys.SWTKeySupport;
import org.eclipse.jface.util.Util;
import org.eclipse.swt.SWT;
import org.eclipse.swt.browser.Browser;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.custom.VerifyKeyListener;
import org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Text;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.ui.IWindowListener;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.handlers.IHandlerService;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.contexts.ContextService;
import org.eclipse.ui.internal.handlers.HandlerService;
import org.eclipse.ui.internal.keys.KeyAssistDialog;
import org.eclipse.ui.internal.keys.KeyBindingState;
import org.eclipse.ui.internal.keys.OutOfOrderListener;
import org.eclipse.ui.internal.keys.OutOfOrderVerifyListener;
import org.eclipse.ui.internal.misc.Policy;
import org.eclipse.ui.internal.misc.StatusUtil;
import org.eclipse.ui.keys.IBindingService;

public final class WorkbenchKeyboard {
    private static final boolean DEBUG = Policy.DEBUG_KEY_BINDINGS;
    private static final boolean DEBUG_VERBOSE = Policy.DEBUG_KEY_BINDINGS_VERBOSE;
    private static final int DELAY = 1000;
    static KeySequence outOfOrderKeys;
    private static final ResourceBundle RESOURCE_BUNDLE;
    private IBindingService bindingService = null;
    private KeyAssistDialog keyAssistDialog = null;
    private final KeyDownFilter keyDownFilter = new KeyDownFilter();
    private final OutOfOrderListener outOfOrderListener = new OutOfOrderListener(this);
    private final OutOfOrderVerifyListener outOfOrderVerifyListener = new OutOfOrderVerifyListener(this.outOfOrderListener);
    private long startTime = Long.MAX_VALUE;
    private final KeyBindingState state;
    private final IWindowListener windowListener = new IWindowListener(){

        public void windowActivated(IWorkbenchWindow window) {
            WorkbenchKeyboard.this.checkActiveWindow(window);
        }

        public void windowClosed(IWorkbenchWindow window) {
        }

        public void windowDeactivated(IWorkbenchWindow window) {
        }

        public void windowOpened(IWorkbenchWindow window) {
        }
    };
    private final IWorkbench workbench;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.keys.WorkbenchKeyboard");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        RESOURCE_BUNDLE = ResourceBundle.getBundle(clazz.getName());
        try {
            outOfOrderKeys = KeySequence.getInstance((String)"ESC DEL");
        }
        catch (ParseException e) {
            outOfOrderKeys = KeySequence.getInstance();
            String message = "Could not parse out-of-order keys definition: 'ESC DEL'.  Continuing with no out-of-order keys.";
            WorkbenchPlugin.log(message, (IStatus)new Status(4, WorkbenchPlugin.PI_WORKBENCH, 0, message, (Throwable)e));
        }
    }

    public static List generatePossibleKeyStrokes(Event event) {
        int thirdAccelerator;
        ArrayList<KeyStroke> keyStrokes = new ArrayList<KeyStroke>(3);
        if (event.stateMask == 0 && event.keyCode == 0 && event.character == '\u0000') {
            return keyStrokes;
        }
        int firstAccelerator = SWTKeySupport.convertEventToUnmodifiedAccelerator((Event)event);
        keyStrokes.add(SWTKeySupport.convertAcceleratorToKeyStroke((int)firstAccelerator));
        if (event.character == '\u007f') {
            return keyStrokes;
        }
        int secondAccelerator = SWTKeySupport.convertEventToUnshiftedModifiedAccelerator((Event)event);
        if (secondAccelerator != firstAccelerator) {
            keyStrokes.add(SWTKeySupport.convertAcceleratorToKeyStroke((int)secondAccelerator));
        }
        if ((thirdAccelerator = SWTKeySupport.convertEventToModifiedAccelerator((Event)event)) != secondAccelerator && thirdAccelerator != firstAccelerator) {
            keyStrokes.add(SWTKeySupport.convertAcceleratorToKeyStroke((int)thirdAccelerator));
        }
        return keyStrokes;
    }

    private static boolean isOutOfOrderKey(List keyStrokes) {
        KeyStroke[] outOfOrderKeyStrokes = outOfOrderKeys.getKeyStrokes();
        int outOfOrderKeyStrokesLength = outOfOrderKeyStrokes.length;
        int i = 0;
        while (i < outOfOrderKeyStrokesLength) {
            if (keyStrokes.contains(outOfOrderKeyStrokes[i])) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public WorkbenchKeyboard(IWorkbench associatedWorkbench) {
        this.workbench = associatedWorkbench;
        this.state = new KeyBindingState(associatedWorkbench);
        this.workbench.addWindowListener(this.windowListener);
    }

    private void checkActiveWindow(IWorkbenchWindow window) {
        if (!window.equals(this.state.getAssociatedWindow())) {
            this.resetState(true);
            this.state.setAssociatedWindow(window);
        }
    }

    private void closeMultiKeyAssistShell() {
        Shell shell;
        if (this.keyAssistDialog != null && (shell = this.keyAssistDialog.getShell()) != null && !shell.isDisposed() && shell.isVisible()) {
            this.keyAssistDialog.close(true);
        }
    }

    final boolean executeCommand(Binding binding, Event trigger) throws CommandException {
        ParameterizedCommand parameterizedCommand = binding.getParameterizedCommand();
        if (DEBUG) {
            Tracing.printTrace((String)"KEYS", (String)("WorkbenchKeyboard.executeCommand(commandId = '" + parameterizedCommand.getId() + "', parameters = " + parameterizedCommand.getParameterMap() + ')'));
        }
        this.resetState(false);
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IHandlerService handlerService = (IHandlerService)this.workbench.getService(clazz);
        Command command = parameterizedCommand.getCommand();
        boolean commandDefined = command.isDefined();
        boolean commandHandled = command.isHandled();
        command.setEnabled((Object)handlerService.getCurrentState());
        boolean commandEnabled = command.isEnabled();
        if (DEBUG && DEBUG_VERBOSE) {
            if (!commandDefined) {
                Tracing.printTrace((String)"KEYS", (String)"    not defined");
            } else if (!commandHandled) {
                Tracing.printTrace((String)"KEYS", (String)"    not handled");
            } else if (!commandEnabled) {
                Tracing.printTrace((String)"KEYS", (String)"    not enabled");
            }
        }
        try {
            handlerService.executeCommand(parameterizedCommand, trigger);
        }
        catch (NotDefinedException notDefinedException) {
        }
        catch (NotEnabledException notEnabledException) {
        }
        catch (NotHandledException notHandledException) {}
        if (this.keyAssistDialog != null) {
            this.keyAssistDialog.clearRememberedState();
        }
        return commandDefined && commandHandled;
    }

    private void filterKeySequenceBindings(Event event) {
        if ((event.keyCode & SWT.MODIFIER_MASK) != 0) {
            return;
        }
        List keyStrokes = WorkbenchKeyboard.generatePossibleKeyStrokes(event);
        if (WorkbenchKeyboard.isOutOfOrderKey(keyStrokes)) {
            Widget widget = event.widget;
            if (event.character == '\u007f' && (event.stateMask & SWT.MODIFIER_MASK) == 0 && (widget instanceof Text || widget instanceof Combo || widget instanceof Browser)) {
                return;
            }
            if (widget instanceof StyledText) {
                if (event.type == 1 && !this.outOfOrderVerifyListener.isActive(event.time)) {
                    ((StyledText)widget).addVerifyKeyListener((VerifyKeyListener)this.outOfOrderVerifyListener);
                    this.outOfOrderVerifyListener.setActive(event.time);
                }
            } else if (!this.outOfOrderListener.isActive(event.time)) {
                widget.addListener(1, (Listener)this.outOfOrderListener);
                this.outOfOrderListener.setActive(event.time);
            }
        } else {
            this.processKeyEvent(keyStrokes, event);
        }
    }

    public KeyDownFilter getKeyDownFilter() {
        return this.keyDownFilter;
    }

    private Binding getPerfectMatch(KeySequence keySequence) {
        return this.getBindingService().getPerfectMatch((TriggerSequence)keySequence);
    }

    private IBindingService getBindingService() {
        if (this.bindingService == null) {
            Class<?> clazz = class$2;
            if (clazz == null) {
                try {
                    clazz = class$2 = Class.forName("org.eclipse.ui.keys.IBindingService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.bindingService = (IBindingService)this.workbench.getService(clazz);
        }
        return this.bindingService;
    }

    final KeySequence getBuffer() {
        return this.state.getCurrentSequence();
    }

    private void incrementState(KeySequence sequence) {
        final long myStartTime = this.startTime = System.currentTimeMillis();
        this.state.setCurrentSequence(sequence);
        this.state.setAssociatedWindow(this.workbench.getActiveWorkbenchWindow());
        Display display = this.workbench.getDisplay();
        display.timerExec(1000, new Runnable(){

            public void run() {
                if (System.currentTimeMillis() > myStartTime - 1000L && WorkbenchKeyboard.this.startTime == myStartTime) {
                    WorkbenchKeyboard.this.openMultiKeyAssistShell();
                }
            }
        });
    }

    private boolean isPartialMatch(KeySequence keySequence) {
        return this.getBindingService().isPartialMatch((TriggerSequence)keySequence);
    }

    private boolean isPerfectMatch(KeySequence keySequence) {
        return this.getBindingService().isPerfectMatch((TriggerSequence)keySequence);
    }

    final void logException(CommandException e, ParameterizedCommand command) {
        String exceptionMessage;
        Throwable nestedException = e.getCause();
        Throwable exception = nestedException == null ? e : nestedException;
        String message = null;
        if (command != null) {
            try {
                String name = command.getCommand().getName();
                message = MessageFormat.format((String)org.eclipse.ui.internal.util.Util.translateString(RESOURCE_BUNDLE, "ExecutionError.MessageCommandName"), (Object[])new Object[]{name});
            }
            catch (NotDefinedException notDefinedException) {}
        }
        if (message == null) {
            message = org.eclipse.ui.internal.util.Util.translateString(RESOURCE_BUNDLE, "ExecutionError.Message");
        }
        if ((exceptionMessage = exception.getMessage()) == null) {
            exceptionMessage = exception.getClass().getName();
        }
        Status status = new Status(4, WorkbenchPlugin.PI_WORKBENCH, 0, exceptionMessage, exception);
        WorkbenchPlugin.log(message, (IStatus)status);
        StatusUtil.handleStatus(message, exception, 2);
    }

    public final void openMultiKeyAssistShell() {
        if (this.keyAssistDialog == null) {
            this.keyAssistDialog = new KeyAssistDialog(this.workbench, this, this.state);
        }
        if (this.keyAssistDialog.getShell() == null) {
            this.keyAssistDialog.setParentShell(org.eclipse.ui.internal.util.Util.getShellToParentOn());
        }
        this.keyAssistDialog.open();
    }

    public final void openKeyAssistShell(Collection bindings) {
        if (this.keyAssistDialog == null) {
            this.keyAssistDialog = new KeyAssistDialog(this.workbench, this, this.state);
        }
        if (this.keyAssistDialog.getShell() == null) {
            this.keyAssistDialog.setParentShell(org.eclipse.ui.internal.util.Util.getShellToParentOn());
        }
        this.keyAssistDialog.open(bindings);
    }

    public boolean press(List potentialKeyStrokes, Event event) {
        if (DEBUG && DEBUG_VERBOSE) {
            Tracing.printTrace((String)"KEYS", (String)("WorkbenchKeyboard.press(potentialKeyStrokes = " + potentialKeyStrokes + ')'));
        }
        Widget widget = event.widget;
        this.updateShellKludge(widget);
        KeySequence errorSequence = null;
        Collection errorMatch = null;
        KeySequence sequenceBeforeKeyStroke = this.state.getCurrentSequence();
        Iterator iterator = potentialKeyStrokes.iterator();
        while (iterator.hasNext()) {
            KeySequence sequenceAfterKeyStroke = KeySequence.getInstance((KeySequence)sequenceBeforeKeyStroke, (KeyStroke)((KeyStroke)iterator.next()));
            if (this.isPartialMatch(sequenceAfterKeyStroke)) {
                this.incrementState(sequenceAfterKeyStroke);
                return true;
            }
            if (this.isPerfectMatch(sequenceAfterKeyStroke)) {
                Binding binding = this.getPerfectMatch(sequenceAfterKeyStroke);
                try {
                    return this.executeCommand(binding, event) || !sequenceBeforeKeyStroke.isEmpty();
                }
                catch (CommandException e) {
                    this.logException(e, binding.getParameterizedCommand());
                    return true;
                }
            }
            if (this.keyAssistDialog != null && this.keyAssistDialog.getShell() != null && (event.keyCode == 0x1000002 || event.keyCode == 0x1000001 || event.keyCode == 0x1000003 || event.keyCode == 0x1000004 || event.keyCode == 13 || event.keyCode == 0x1000005 || event.keyCode == 0x1000006)) {
                return false;
            }
            Collection match = this.getBindingService().getConflictsFor((TriggerSequence)sequenceAfterKeyStroke);
            if (match == null) continue;
            errorSequence = sequenceAfterKeyStroke;
            errorMatch = match;
        }
        this.resetState(true);
        if (sequenceBeforeKeyStroke.isEmpty() && errorSequence != null) {
            this.openKeyAssistShell(errorMatch);
        }
        return !sequenceBeforeKeyStroke.isEmpty();
    }

    void updateShellKludge(Widget widget) {
        if (Util.isGtk()) {
            Object hs;
            Class<?> clazz;
            Class<?> clazz2 = class$3;
            if (clazz2 == null) {
                try {
                    clazz2 = class$3 = Class.forName("org.eclipse.ui.contexts.IContextService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            ContextService contextService = (ContextService)this.workbench.getService(clazz2);
            if (widget instanceof Control && !widget.isDisposed()) {
                Shell shell = ((Control)widget).getShell();
                contextService.updateShellKludge(shell);
            } else {
                contextService.updateShellKludge();
            }
            if ((clazz = class$1) == null) {
                try {
                    clazz = class$1 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((hs = this.workbench.getService(clazz)) instanceof HandlerService) {
                HandlerService handlerService = (HandlerService)hs;
                if (widget instanceof Control && !widget.isDisposed()) {
                    Shell shell = ((Control)widget).getShell();
                    handlerService.updateShellKludge(shell);
                } else {
                    handlerService.updateShellKludge();
                }
            }
        }
    }

    void processKeyEvent(List keyStrokes, Event event) {
        boolean eatKey = false;
        if (!keyStrokes.isEmpty()) {
            eatKey = this.press(keyStrokes, event);
        }
        if (eatKey) {
            switch (event.type) {
                case 1: {
                    event.doit = false;
                    break;
                }
                case 31: {
                    event.detail = 0;
                    event.doit = true;
                }
            }
            event.type = 0;
        }
    }

    private final void resetState(boolean clearRememberedState) {
        this.startTime = Long.MAX_VALUE;
        this.state.reset();
        this.closeMultiKeyAssistShell();
        if (this.keyAssistDialog != null && clearRememberedState) {
            this.keyAssistDialog.clearRememberedState();
        }
    }

    public final class KeyDownFilter
    implements Listener {
        private transient boolean enabled = true;

        public final void handleEvent(Event event) {
            if (!this.enabled) {
                return;
            }
            if (DEBUG && DEBUG_VERBOSE) {
                StringBuffer buffer = new StringBuffer("Listener.handleEvent(type = ");
                switch (event.type) {
                    case 1: {
                        buffer.append("KeyDown");
                        break;
                    }
                    case 31: {
                        buffer.append("Traverse");
                        break;
                    }
                    default: {
                        buffer.append(event.type);
                    }
                }
                buffer.append(", stateMask = 0x" + Integer.toHexString(event.stateMask) + ", keyCode = 0x" + Integer.toHexString(event.keyCode) + ", time = " + event.time + ", character = 0x" + Integer.toHexString(event.character) + ")");
                Tracing.printTrace((String)"KEYS", (String)buffer.toString());
            }
            WorkbenchKeyboard.this.filterKeySequenceBindings(event);
        }

        public final boolean isEnabled() {
            return this.enabled;
        }

        public final void setEnabled(boolean enabled) {
            this.enabled = enabled;
        }
    }
}

