/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.AbstractHandler
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.commands.IHandler
 *  org.eclipse.core.expressions.EvaluationResult
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.core.expressions.ExpressionInfo
 *  org.eclipse.core.expressions.IEvaluationContext
 *  org.eclipse.jface.fieldassist.ContentProposalAdapter
 *  org.eclipse.jface.fieldassist.ControlDecoration
 *  org.eclipse.jface.fieldassist.FieldDecoration
 *  org.eclipse.jface.fieldassist.FieldDecorationRegistry
 *  org.eclipse.jface.fieldassist.IContentProposalProvider
 *  org.eclipse.jface.fieldassist.IControlContentAdapter
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.fieldassist;

import org.eclipse.core.commands.AbstractHandler;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.IHandler;
import org.eclipse.core.expressions.EvaluationResult;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.ExpressionInfo;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.jface.fieldassist.ContentProposalAdapter;
import org.eclipse.jface.fieldassist.ControlDecoration;
import org.eclipse.jface.fieldassist.FieldDecoration;
import org.eclipse.jface.fieldassist.FieldDecorationRegistry;
import org.eclipse.jface.fieldassist.IContentProposalProvider;
import org.eclipse.jface.fieldassist.IControlContentAdapter;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.handlers.IHandlerActivation;
import org.eclipse.ui.handlers.IHandlerService;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.keys.IBindingService;
import org.eclipse.ui.swt.IFocusService;

public class ContentAssistCommandAdapter
extends ContentProposalAdapter {
    private static final String CONTENT_ASSIST_DECORATION_ID = "org.eclipse.ui.fieldAssist.ContentAssistField";
    private static final String CONTROL_ID_PREFIX = "org.eclipse.ui.fieldAssist.ContentAssistField.ControlID";
    private String commandId;
    public static final String CONTENT_PROPOSAL_COMMAND = "org.eclipse.ui.edit.text.contentAssist.proposals";
    private static final int DEFAULT_AUTO_ACTIVATION_DELAY = 500;
    private ContentAssistHandler proposalHandler = new ContentAssistHandler();
    private ControlDecoration decoration;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    public ContentAssistCommandAdapter(Control control, IControlContentAdapter controlContentAdapter, IContentProposalProvider proposalProvider, String commandId, char[] autoActivationCharacters) {
        this(control, controlContentAdapter, proposalProvider, commandId, autoActivationCharacters, false);
    }

    public ContentAssistCommandAdapter(Control control, IControlContentAdapter controlContentAdapter, IContentProposalProvider proposalProvider, String commandId, char[] autoActivationCharacters, boolean installDecoration) {
        super(control, controlContentAdapter, proposalProvider, null, autoActivationCharacters);
        this.commandId = commandId;
        if (commandId == null) {
            this.commandId = CONTENT_PROPOSAL_COMMAND;
        }
        if (autoActivationCharacters == null) {
            this.setAutoActivationCharacters(new char[0]);
        }
        this.setAutoActivationDelay(500);
        this.activateHandler(control);
        if (installDecoration) {
            this.decoration = new ControlDecoration(control, 16512);
            this.decoration.setShowOnlyOnFocus(true);
            FieldDecoration dec = this.getContentAssistFieldDecoration();
            this.decoration.setImage(dec.getImage());
            this.decoration.setDescriptionText(dec.getDescription());
        }
    }

    public String getCommandId() {
        return this.commandId;
    }

    private FieldDecoration getContentAssistFieldDecoration() {
        String decId;
        FieldDecorationRegistry registry = FieldDecorationRegistry.getDefault();
        FieldDecoration dec = registry.getFieldDecoration(decId = CONTENT_ASSIST_DECORATION_ID + this.getCommandId());
        if (dec == null) {
            FieldDecoration originalDec = registry.getFieldDecoration("DEC_CONTENT_PROPOSAL");
            registry.registerFieldDecoration(decId, null, originalDec.getImage());
            dec = registry.getFieldDecoration(decId);
        }
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
        IBindingService bindingService = (IBindingService)iWorkbench.getService(clazz);
        dec.setDescription(NLS.bind((String)WorkbenchMessages.ContentAssist_Cue_Description_Key, (Object)bindingService.getBestActiveBindingFormattedFor(this.getCommandId())));
        return dec;
    }

    public void setEnabled(boolean enabled) {
        super.setEnabled(enabled);
        if (this.decoration != null) {
            if (enabled) {
                this.decoration.show();
            } else {
                this.decoration.hide();
            }
        }
        this.proposalHandler.setEnabled(enabled);
    }

    private void activateHandler(final Control control) {
        IWorkbench iWorkbench = PlatformUI.getWorkbench();
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.swt.IFocusService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IFocusService fs = (IFocusService)iWorkbench.getService(clazz);
        IWorkbench iWorkbench2 = PlatformUI.getWorkbench();
        Class<?> clazz2 = class$2;
        if (clazz2 == null) {
            try {
                clazz2 = class$2 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        final IHandlerService hs = (IHandlerService)iWorkbench2.getService(clazz2);
        if (fs != null && hs != null) {
            fs.addFocusTracker(control, CONTROL_ID_PREFIX + ((Object)((Object)this)).hashCode());
            final IHandlerActivation handlerActivation = hs.activateHandler(this.commandId, (IHandler)this.proposalHandler, new Expression(){

                public EvaluationResult evaluate(IEvaluationContext context) {
                    return context.getVariable("activeFocusControl") == control ? EvaluationResult.TRUE : EvaluationResult.FALSE;
                }

                public void collectExpressionInfo(ExpressionInfo info) {
                    info.addVariableNameAccess("activeFocusControl");
                }
            });
            control.addDisposeListener(new DisposeListener(){

                public void widgetDisposed(DisposeEvent e) {
                    hs.deactivateHandler(handlerActivation);
                }
            });
        }
    }

    private class ContentAssistHandler
    extends AbstractHandler {
        private ContentAssistHandler() {
        }

        public Object execute(ExecutionEvent event) {
            ContentAssistCommandAdapter.this.openProposalPopup();
            return null;
        }

        void setEnabled(boolean enabled) {
            this.setBaseEnabled(enabled);
        }
    }
}

