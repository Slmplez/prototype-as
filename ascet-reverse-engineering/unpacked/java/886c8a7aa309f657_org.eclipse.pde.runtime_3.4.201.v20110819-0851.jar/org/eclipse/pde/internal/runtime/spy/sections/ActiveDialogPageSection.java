/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.jface.dialogs.IDialogPage
 *  org.eclipse.jface.dialogs.IPageChangeProvider
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.ui.forms.widgets.FormText
 *  org.eclipse.ui.forms.widgets.ScrolledForm
 *  org.eclipse.ui.forms.widgets.Section
 *  org.eclipse.ui.forms.widgets.TableWrapData
 *  org.eclipse.ui.handlers.HandlerUtil
 *  org.osgi.framework.Bundle
 *  org.osgi.service.packageadmin.PackageAdmin
 */
package org.eclipse.pde.internal.runtime.spy.sections;

import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.jface.dialogs.IDialogPage;
import org.eclipse.jface.dialogs.IPageChangeProvider;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.runtime.PDERuntimeMessages;
import org.eclipse.pde.internal.runtime.PDERuntimePlugin;
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
import org.osgi.framework.Bundle;
import org.osgi.service.packageadmin.PackageAdmin;

public class ActiveDialogPageSection
implements ISpySection {
    public void build(ScrolledForm form, SpyFormToolkit toolkit, ExecutionEvent event) {
        IPageChangeProvider pageChangeProvider;
        Object selectedPage;
        Shell shell = HandlerUtil.getActiveShell((ExecutionEvent)event);
        Object object = shell.getData();
        if (object == null) {
            return;
        }
        Class<?> clazz = object.getClass();
        if (object instanceof IPageChangeProvider && (selectedPage = (pageChangeProvider = (IPageChangeProvider)object).getSelectedPage()) != null) {
            Section section = toolkit.createSection(form.getBody(), 256);
            section.clientVerticalSpacing = 9;
            if (selectedPage instanceof IDialogPage) {
                IDialogPage page = (IDialogPage)selectedPage;
                clazz = page.getClass();
                section.setText(NLS.bind((String)PDERuntimeMessages.SpyDialog_activeDialogPageSection_title, (Object)page.getTitle()));
            } else {
                clazz = selectedPage.getClass();
                section.setText(PDERuntimeMessages.SpyDialog_activeDialogPageSection_title2);
            }
            FormText text = toolkit.createFormText((Composite)section, true);
            section.setClient((Control)text);
            TableWrapData td = new TableWrapData();
            td.align = 128;
            td.grabHorizontal = true;
            section.setLayoutData((Object)td);
            StringBuffer buffer = new StringBuffer();
            buffer.append("<form>");
            buffer.append(toolkit.createClassSection(text, PDERuntimeMessages.SpyDialog_activeDialogPageSection_desc, new Class[]{clazz}));
            PackageAdmin admin = PDERuntimePlugin.getDefault().getPackageAdmin();
            Bundle bundle = admin.getBundle(clazz);
            toolkit.generatePluginDetailsText(bundle, null, "dialog page", buffer, text);
            buffer.append("</form>");
            text.setText(buffer.toString(), true, false);
        }
    }
}

