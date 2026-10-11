/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.jface.fieldassist;

import org.eclipse.jface.fieldassist.ContentProposalAdapter;
import org.eclipse.jface.fieldassist.IControlContentAdapter;
import org.eclipse.jface.fieldassist.SimpleContentProposalProvider;
import org.eclipse.swt.widgets.Control;

public class AutoCompleteField {
    private SimpleContentProposalProvider proposalProvider;
    private ContentProposalAdapter adapter;

    public AutoCompleteField(Control control, IControlContentAdapter controlContentAdapter, String[] proposals) {
        this.proposalProvider = new SimpleContentProposalProvider(proposals);
        this.proposalProvider.setFiltering(true);
        this.adapter = new ContentProposalAdapter(control, controlContentAdapter, this.proposalProvider, null, null);
        this.adapter.setPropagateKeys(true);
        this.adapter.setProposalAcceptanceStyle(2);
    }

    public void setProposals(String[] proposals) {
        this.proposalProvider.setProposals(proposals);
    }
}

