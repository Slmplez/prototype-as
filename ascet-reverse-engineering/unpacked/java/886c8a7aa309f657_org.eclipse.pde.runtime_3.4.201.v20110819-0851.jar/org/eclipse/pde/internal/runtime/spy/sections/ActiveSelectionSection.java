/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.ui.IWorkbenchWindow
 *  org.eclipse.ui.forms.widgets.FormText
 *  org.eclipse.ui.forms.widgets.ScrolledForm
 *  org.eclipse.ui.forms.widgets.Section
 *  org.eclipse.ui.forms.widgets.TableWrapData
 *  org.eclipse.ui.handlers.HandlerUtil
 */
package org.eclipse.pde.internal.runtime.spy.sections;

import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.runtime.PDERuntimeMessages;
import org.eclipse.pde.internal.runtime.spy.SpyFormToolkit;
import org.eclipse.pde.internal.runtime.spy.sections.ISpySection;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.forms.widgets.FormText;
import org.eclipse.ui.forms.widgets.ScrolledForm;
import org.eclipse.ui.forms.widgets.Section;
import org.eclipse.ui.forms.widgets.TableWrapData;
import org.eclipse.ui.handlers.HandlerUtil;

public class ActiveSelectionSection
implements ISpySection {
    public void build(ScrolledForm form, SpyFormToolkit toolkit, ExecutionEvent event) {
        IWorkbenchWindow window = HandlerUtil.getActiveWorkbenchWindow((ExecutionEvent)event);
        if (window == null) {
            return;
        }
        ISelection selection = HandlerUtil.getCurrentSelection((ExecutionEvent)event);
        if (selection != null) {
            Section section = toolkit.createSection(form.getBody(), 256);
            section.clientVerticalSpacing = 9;
            section.setText(PDERuntimeMessages.SpyDialog_activeSelection_title);
            FormText text = toolkit.createFormText((Composite)section, true);
            section.setClient((Control)text);
            TableWrapData td = new TableWrapData();
            td.align = 128;
            td.grabHorizontal = true;
            section.setLayoutData((Object)td);
            Class<?> clazz = selection.getClass();
            StringBuffer buffer = new StringBuffer();
            buffer.append("<form>");
            buffer.append(toolkit.createClassSection(text, PDERuntimeMessages.SpyDialog_activeSelection_desc, new Class[]{clazz}));
            Class[] interfaces = clazz.getInterfaces();
            buffer.append(toolkit.createInterfaceSection(text, PDERuntimeMessages.SpyDialog_activeSelectionInterfaces_desc, interfaces));
            if (selection instanceof IStructuredSelection) {
                IStructuredSelection ss = (IStructuredSelection)selection;
                int size = ss.size();
                if (size == 1) {
                    clazz = ss.getFirstElement().getClass();
                    buffer.append(toolkit.createClassSection(text, PDERuntimeMessages.SpyDialog_activeSelectedElement_desc, new Class[]{clazz}));
                    interfaces = clazz.getInterfaces();
                    buffer.append(toolkit.createInterfaceSection(text, PDERuntimeMessages.SpyDialog_activeSelectedElementInterfaces_desc, interfaces));
                } else if (size > 1) {
                    buffer.append(NLS.bind((String)PDERuntimeMessages.SpyDialog_activeSelectedElementsCount_desc, (Object)new Integer(size)));
                }
            }
            buffer.append("</form>");
            text.setText(buffer.toString(), true, false);
        }
    }
}

