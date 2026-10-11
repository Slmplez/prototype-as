/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.ui.IWorkbenchPart
 *  org.eclipse.ui.forms.editor.FormEditor
 *  org.eclipse.ui.forms.editor.IFormPage
 *  org.eclipse.ui.forms.widgets.FormText
 *  org.eclipse.ui.forms.widgets.ScrolledForm
 *  org.eclipse.ui.forms.widgets.Section
 *  org.eclipse.ui.forms.widgets.TableWrapData
 *  org.eclipse.ui.handlers.HandlerUtil
 */
package org.eclipse.pde.internal.runtime.spy.sections;

import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.runtime.PDERuntimeMessages;
import org.eclipse.pde.internal.runtime.spy.SpyFormToolkit;
import org.eclipse.pde.internal.runtime.spy.sections.ISpySection;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.forms.editor.FormEditor;
import org.eclipse.ui.forms.editor.IFormPage;
import org.eclipse.ui.forms.widgets.FormText;
import org.eclipse.ui.forms.widgets.ScrolledForm;
import org.eclipse.ui.forms.widgets.Section;
import org.eclipse.ui.forms.widgets.TableWrapData;
import org.eclipse.ui.handlers.HandlerUtil;

public class ActiveFormEditorSection
implements ISpySection {
    public void build(ScrolledForm form, SpyFormToolkit toolkit, ExecutionEvent event) {
        IWorkbenchPart part = HandlerUtil.getActivePart((ExecutionEvent)event);
        if (!(part instanceof FormEditor)) {
            return;
        }
        FormEditor multiEditor = (FormEditor)part;
        Shell shell = HandlerUtil.getActiveShell((ExecutionEvent)event);
        Object object = shell.getData();
        if (object == null) {
            return;
        }
        IFormPage activePage = multiEditor.getActivePageInstance();
        Section section = toolkit.createSection(form.getBody(), 256);
        section.setText(PDERuntimeMessages.ActiveFormEditorSection_Active_Form_Page);
        FormText text = toolkit.createFormText((Composite)section, true);
        section.setClient((Control)text);
        TableWrapData td = new TableWrapData();
        td.align = 128;
        td.grabHorizontal = true;
        section.setLayoutData((Object)td);
        StringBuffer buffer = new StringBuffer();
        buffer.append("<form>");
        buffer.append(toolkit.createClassSection(text, NLS.bind((String)PDERuntimeMessages.SpyDialog_activePart_desc, (Object)"editor tab"), new Class[]{activePage.getClass()}));
        buffer.append("</form>");
        text.setText(buffer.toString(), true, false);
        text.layout();
    }
}

