/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.AbstractHandler
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.commands.IHandler
 *  org.eclipse.jface.bindings.TriggerSequence
 *  org.eclipse.jface.contentassist.AbstractControlContentAssistSubjectAdapter
 *  org.eclipse.jface.contentassist.ComboContentAssistSubjectAdapter
 *  org.eclipse.jface.contentassist.IContentAssistSubjectControl
 *  org.eclipse.jface.contentassist.SubjectControlContentAssistant
 *  org.eclipse.jface.contentassist.TextContentAssistSubjectAdapter
 *  org.eclipse.jface.viewers.ILabelProvider
 *  org.eclipse.jface.viewers.LabelProvider
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.FocusEvent
 *  org.eclipse.swt.events.FocusListener
 *  org.eclipse.swt.widgets.Combo
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Text
 *  org.eclipse.ui.IWorkbench
 *  org.eclipse.ui.PlatformUI
 *  org.eclipse.ui.handlers.IHandlerActivation
 *  org.eclipse.ui.handlers.IHandlerService
 *  org.eclipse.ui.keys.IBindingService
 */
package org.eclipse.ui.contentassist;

import org.eclipse.core.commands.AbstractHandler;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.IHandler;
import org.eclipse.jface.bindings.TriggerSequence;
import org.eclipse.jface.contentassist.AbstractControlContentAssistSubjectAdapter;
import org.eclipse.jface.contentassist.ComboContentAssistSubjectAdapter;
import org.eclipse.jface.contentassist.IContentAssistSubjectControl;
import org.eclipse.jface.contentassist.SubjectControlContentAssistant;
import org.eclipse.jface.contentassist.TextContentAssistSubjectAdapter;
import org.eclipse.jface.viewers.ILabelProvider;
import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Text;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.contentassist.ContentAssistMessages;
import org.eclipse.ui.handlers.IHandlerActivation;
import org.eclipse.ui.handlers.IHandlerService;
import org.eclipse.ui.internal.texteditor.NLSUtility;
import org.eclipse.ui.keys.IBindingService;

public class ContentAssistHandler {
    private Control fControl;
    private AbstractControlContentAssistSubjectAdapter fContentAssistSubjectAdapter;
    private SubjectControlContentAssistant fContentAssistant;
    private FocusListener fFocusListener;
    private IHandlerActivation fHandlerActivation;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public static ContentAssistHandler createHandlerForCombo(Combo combo, SubjectControlContentAssistant contentAssistant) {
        return new ContentAssistHandler((Control)combo, (AbstractControlContentAssistSubjectAdapter)new ComboContentAssistSubjectAdapter(combo), contentAssistant);
    }

    public static ContentAssistHandler createHandlerForText(Text text, SubjectControlContentAssistant contentAssistant) {
        return new ContentAssistHandler((Control)text, (AbstractControlContentAssistSubjectAdapter)new TextContentAssistSubjectAdapter(text), contentAssistant);
    }

    private ContentAssistHandler(Control control, AbstractControlContentAssistSubjectAdapter subjectAdapter, SubjectControlContentAssistant contentAssistant) {
        this.fControl = control;
        this.fContentAssistant = contentAssistant;
        this.fContentAssistSubjectAdapter = subjectAdapter;
        this.setEnabled(true);
        this.fControl.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                ContentAssistHandler.this.setEnabled(false);
            }
        });
    }

    public boolean isEnabled() {
        return this.fFocusListener != null;
    }

    public void setEnabled(boolean enable) {
        if (enable == this.isEnabled()) {
            return;
        }
        if (enable) {
            this.enable();
        } else {
            this.disable();
        }
    }

    private void enable() {
        if (!this.fControl.isDisposed()) {
            this.fContentAssistant.install((IContentAssistSubjectControl)this.fContentAssistSubjectAdapter);
            this.installCueLabelProvider();
            this.installFocusListener();
            if (this.fControl.isFocusControl()) {
                this.activateHandler();
            }
        }
    }

    private void disable() {
        if (!this.fControl.isDisposed()) {
            this.fContentAssistant.uninstall();
            this.fContentAssistSubjectAdapter.setContentAssistCueProvider(null);
            this.fControl.removeFocusListener(this.fFocusListener);
            this.fFocusListener = null;
            if (this.fHandlerActivation != null) {
                this.deactivateHandler();
            }
        }
    }

    private void installCueLabelProvider() {
        LabelProvider labelProvider = new LabelProvider(){

            public String getText(Object element) {
                IBindingService bindingService;
                TriggerSequence[] activeBindings;
                IWorkbench iWorkbench = PlatformUI.getWorkbench();
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("org.eclipse.ui.keys.IBindingService");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if ((activeBindings = (bindingService = (IBindingService)iWorkbench.getAdapter((Class)clazz)).getActiveBindingsFor("org.eclipse.ui.edit.text.contentAssist.proposals")).length == 0) {
                    return ContentAssistMessages.ContentAssistHandler_contentAssistAvailable;
                }
                return NLSUtility.format(ContentAssistMessages.ContentAssistHandler_contentAssistAvailableWithKeyBinding, activeBindings[0].format());
            }
        };
        this.fContentAssistSubjectAdapter.setContentAssistCueProvider((ILabelProvider)labelProvider);
    }

    private void installFocusListener() {
        this.fFocusListener = new FocusListener(){

            public void focusGained(FocusEvent e) {
                if (ContentAssistHandler.this.fHandlerActivation == null) {
                    ContentAssistHandler.this.activateHandler();
                }
            }

            public void focusLost(FocusEvent e) {
                if (ContentAssistHandler.this.fHandlerActivation != null) {
                    ContentAssistHandler.this.deactivateHandler();
                }
            }
        };
        this.fControl.addFocusListener(this.fFocusListener);
    }

    private void activateHandler() {
        IHandlerService handlerService;
        IWorkbench iWorkbench = PlatformUI.getWorkbench();
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((handlerService = (IHandlerService)iWorkbench.getAdapter((Class)clazz)) == null) {
            return;
        }
        AbstractHandler handler = new AbstractHandler(){

            public Object execute(ExecutionEvent event) throws ExecutionException {
                if (ContentAssistHandler.this.isEnabled()) {
                    ContentAssistHandler.this.fContentAssistant.showPossibleCompletions();
                }
                return null;
            }
        };
        this.fHandlerActivation = handlerService.activateHandler("org.eclipse.ui.edit.text.contentAssist.proposals", (IHandler)handler);
    }

    private void deactivateHandler() {
        IHandlerService handlerService;
        IWorkbench iWorkbench = PlatformUI.getWorkbench();
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((handlerService = (IHandlerService)iWorkbench.getAdapter((Class)clazz)) != null) {
            handlerService.deactivateHandler(this.fHandlerActivation);
        }
        this.fHandlerActivation = null;
    }
}

