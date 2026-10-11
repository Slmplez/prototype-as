/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.ui.IEditorPart
 *  org.eclipse.ui.IWorkbenchPart
 *  org.eclipse.ui.IWorkbenchWindow
 *  org.eclipse.ui.forms.widgets.FormText
 *  org.eclipse.ui.forms.widgets.ScrolledForm
 *  org.eclipse.ui.forms.widgets.Section
 *  org.eclipse.ui.forms.widgets.TableWrapData
 *  org.eclipse.ui.handlers.HandlerUtil
 *  org.eclipse.ui.internal.PartSite
 *  org.eclipse.ui.internal.PopupMenuExtender
 *  org.eclipse.ui.part.IPage
 *  org.eclipse.ui.part.PageBookView
 *  org.osgi.framework.Bundle
 */
package org.eclipse.pde.internal.runtime.spy.sections;

import java.lang.reflect.Field;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.runtime.Platform;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.runtime.PDERuntimeMessages;
import org.eclipse.pde.internal.runtime.PDERuntimePlugin;
import org.eclipse.pde.internal.runtime.PDERuntimePluginImages;
import org.eclipse.pde.internal.runtime.spy.SpyFormToolkit;
import org.eclipse.pde.internal.runtime.spy.sections.ISpySection;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.forms.widgets.FormText;
import org.eclipse.ui.forms.widgets.ScrolledForm;
import org.eclipse.ui.forms.widgets.Section;
import org.eclipse.ui.forms.widgets.TableWrapData;
import org.eclipse.ui.handlers.HandlerUtil;
import org.eclipse.ui.internal.PartSite;
import org.eclipse.ui.internal.PopupMenuExtender;
import org.eclipse.ui.part.IPage;
import org.eclipse.ui.part.PageBookView;
import org.osgi.framework.Bundle;

public class ActivePartSection
implements ISpySection {
    public void build(ScrolledForm form, SpyFormToolkit toolkit, ExecutionEvent event) {
        PageBookView outline;
        IPage currentPage;
        IWorkbenchWindow window = HandlerUtil.getActiveWorkbenchWindow((ExecutionEvent)event);
        if (window == null) {
            return;
        }
        IWorkbenchPart part = HandlerUtil.getActivePart((ExecutionEvent)event);
        if (part == null) {
            return;
        }
        String partType = part instanceof IEditorPart ? "editor" : "view";
        Section section = toolkit.createSection(form.getBody(), 256);
        section.setText(NLS.bind((String)PDERuntimeMessages.SpyDialog_activePart_title, (Object)part.getSite().getRegisteredName()));
        FormText text = toolkit.createFormText((Composite)section, true);
        section.setClient((Control)text);
        TableWrapData td = new TableWrapData();
        td.align = 128;
        td.grabHorizontal = true;
        section.setLayoutData((Object)td);
        StringBuffer buffer = new StringBuffer();
        buffer.append("<form>");
        buffer.append(toolkit.createClassSection(text, NLS.bind((String)PDERuntimeMessages.SpyDialog_activePart_desc, (Object)partType), new Class[]{part.getClass()}));
        if (part instanceof PageBookView && (currentPage = (outline = (PageBookView)part).getCurrentPage()) != null) {
            buffer.append(toolkit.createClassSection(text, PDERuntimeMessages.SpyDialog_activePageBook_title, new Class[]{currentPage.getClass()}));
        }
        Bundle bundle = Platform.getBundle((String)part.getSite().getPluginId());
        toolkit.generatePluginDetailsText(bundle, part.getSite().getId(), partType, buffer, text);
        try {
            PartSite site = (PartSite)part.getSite();
            Class<?> clazz = site.getClass().getSuperclass();
            Field field = clazz.getDeclaredField("menuExtenders");
            field.setAccessible(true);
            List list = (List)field.get(site);
            if (list != null && list.size() > 0) {
                LinkedHashSet menuIds = new LinkedHashSet();
                int i = 0;
                while (i < list.size()) {
                    PopupMenuExtender extender = (PopupMenuExtender)list.get(i);
                    menuIds.addAll(extender.getMenuIds());
                    ++i;
                }
                buffer.append("<p>");
                buffer.append(PDERuntimeMessages.SpyDialog_activeMenuIds);
                buffer.append("</p>");
                Iterator it = menuIds.iterator();
                while (it.hasNext()) {
                    buffer.append("<li bindent=\"20\" style=\"image\" value=\"menu\">");
                    buffer.append(it.next().toString());
                    buffer.append("</li>");
                }
                Image menuImage = PDERuntimePluginImages.get("menu_obj.gif");
                text.setImage("menu", menuImage);
            }
        }
        catch (SecurityException e) {
            PDERuntimePlugin.log(e);
        }
        catch (NoSuchFieldException e) {
            PDERuntimePlugin.log(e);
        }
        catch (IllegalArgumentException e) {
            PDERuntimePlugin.log(e);
        }
        catch (IllegalAccessException e) {
            PDERuntimePlugin.log(e);
        }
        buffer.append("</form>");
        Image idImage = PDERuntimePluginImages.get("generic_xml_obj.gif");
        text.setImage("id", idImage);
        text.setText(buffer.toString(), true, false);
        text.layout();
    }
}

