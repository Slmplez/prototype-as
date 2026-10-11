/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.ui.forms.widgets.FormText
 *  org.eclipse.ui.forms.widgets.ScrolledForm
 *  org.eclipse.ui.forms.widgets.Section
 *  org.eclipse.ui.forms.widgets.TableWrapData
 *  org.eclipse.ui.handlers.HandlerUtil
 */
package org.eclipse.pde.internal.runtime.spy.sections;

import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.pde.internal.runtime.PDERuntimeMessages;
import org.eclipse.pde.internal.runtime.spy.SpyFormToolkit;
import org.eclipse.pde.internal.runtime.spy.sections.ISpySection;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.forms.widgets.FormText;
import org.eclipse.ui.forms.widgets.ScrolledForm;
import org.eclipse.ui.forms.widgets.Section;
import org.eclipse.ui.forms.widgets.TableWrapData;
import org.eclipse.ui.handlers.HandlerUtil;

public class ActiveShellSection
implements ISpySection {
    public void build(ScrolledForm form, SpyFormToolkit toolkit, ExecutionEvent event) {
        Shell shell = HandlerUtil.getActiveShell((ExecutionEvent)event);
        Object object = shell.getData();
        if (object == null) {
            return;
        }
        Class<?> clazz = object.getClass();
        Section section = toolkit.createSection(form.getBody(), 256);
        section.clientVerticalSpacing = 9;
        section.setText(PDERuntimeMessages.SpyDialog_activeShell_title);
        FormText text = toolkit.createFormText((Composite)section, true);
        section.setClient((Control)text);
        TableWrapData td = new TableWrapData();
        td.align = 128;
        td.grabHorizontal = true;
        section.setLayoutData((Object)td);
        StringBuffer buffer = new StringBuffer();
        buffer.append("<form>");
        buffer.append(toolkit.createClassSection(text, PDERuntimeMessages.SpyDialog_activeShell_desc, new Class[]{clazz}));
        buffer.append("</form>");
        text.setText(buffer.toString(), true, false);
    }
}

