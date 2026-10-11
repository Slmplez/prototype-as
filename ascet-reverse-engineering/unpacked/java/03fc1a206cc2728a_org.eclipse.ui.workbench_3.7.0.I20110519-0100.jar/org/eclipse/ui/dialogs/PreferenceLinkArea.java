/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.jface.preference.IPreferenceNode
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Link
 */
package org.eclipse.ui.dialogs;

import com.ibm.icu.text.MessageFormat;
import java.util.Iterator;
import org.eclipse.jface.preference.IPreferenceNode;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Link;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.preferences.IWorkbenchPreferenceContainer;

public class PreferenceLinkArea {
    private Link pageLink;

    public PreferenceLinkArea(Composite parent, int style, final String pageId, String message, final IWorkbenchPreferenceContainer pageContainer, final Object pageData) {
        String result;
        this.pageLink = new Link(parent, style);
        IPreferenceNode node = this.getPreferenceNode(pageId);
        if (node == null) {
            result = NLS.bind((String)WorkbenchMessages.PreferenceNode_NotFound, (Object)pageId);
        } else {
            result = MessageFormat.format((String)message, (Object[])new String[]{node.getLabelText()});
            this.pageLink.addSelectionListener((SelectionListener)new SelectionAdapter(){

                public void widgetSelected(SelectionEvent e) {
                    pageContainer.openPage(pageId, pageData);
                }
            });
        }
        this.pageLink.setText(result);
    }

    private IPreferenceNode getPreferenceNode(String pageId) {
        Iterator iterator = PlatformUI.getWorkbench().getPreferenceManager().getElements(0).iterator();
        while (iterator.hasNext()) {
            IPreferenceNode next = (IPreferenceNode)iterator.next();
            if (!next.getId().equals(pageId)) continue;
            return next;
        }
        return null;
    }

    public Control getControl() {
        return this.pageLink;
    }
}

