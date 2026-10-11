/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.fieldassist.DecoratedField
 *  org.eclipse.jface.fieldassist.FieldDecoration
 *  org.eclipse.jface.fieldassist.FieldDecorationRegistry
 *  org.eclipse.jface.fieldassist.IContentProposalProvider
 *  org.eclipse.jface.fieldassist.IControlContentAdapter
 *  org.eclipse.jface.fieldassist.IControlCreator
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.widgets.Composite
 */
package org.eclipse.ui.fieldassist;

import org.eclipse.jface.fieldassist.DecoratedField;
import org.eclipse.jface.fieldassist.FieldDecoration;
import org.eclipse.jface.fieldassist.FieldDecorationRegistry;
import org.eclipse.jface.fieldassist.IContentProposalProvider;
import org.eclipse.jface.fieldassist.IControlContentAdapter;
import org.eclipse.jface.fieldassist.IControlCreator;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.fieldassist.ContentAssistCommandAdapter;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.keys.IBindingService;

public class ContentAssistField
extends DecoratedField {
    private ContentAssistCommandAdapter adapter;
    private static final String CONTENT_ASSIST_DECORATION_ID = "org.eclipse.ui.fieldAssist.ContentAssistField";
    static /* synthetic */ Class class$0;

    public ContentAssistField(Composite parent, int style, IControlCreator controlCreator, IControlContentAdapter controlContentAdapter, IContentProposalProvider proposalProvider, String commandId, char[] autoActivationCharacters) {
        super(parent, style, controlCreator);
        this.adapter = new ContentAssistCommandAdapter(this.getControl(), controlContentAdapter, proposalProvider, commandId, autoActivationCharacters);
        this.addFieldDecoration(this.getFieldDecoration(), 16512, true);
    }

    public void setEnabled(boolean enabled) {
        this.adapter.setEnabled(enabled);
        if (enabled) {
            this.showDecoration(this.getFieldDecoration());
        } else {
            this.hideDecoration(this.getFieldDecoration());
        }
    }

    private FieldDecoration getFieldDecoration() {
        String decId;
        FieldDecorationRegistry registry = FieldDecorationRegistry.getDefault();
        FieldDecoration dec = registry.getFieldDecoration(decId = CONTENT_ASSIST_DECORATION_ID + this.adapter.getCommandId());
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
        dec.setDescription(NLS.bind((String)WorkbenchMessages.ContentAssist_Cue_Description_Key, (Object)bindingService.getBestActiveBindingFormattedFor(this.adapter.getCommandId())));
        return dec;
    }

    public ContentAssistCommandAdapter getContentAssistCommandAdapter() {
        return this.adapter;
    }
}

