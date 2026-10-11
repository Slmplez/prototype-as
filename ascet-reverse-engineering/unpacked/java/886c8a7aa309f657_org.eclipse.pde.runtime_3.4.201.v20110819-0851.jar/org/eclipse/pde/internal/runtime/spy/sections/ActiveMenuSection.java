/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.Command
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.jface.action.ActionContributionItem
 *  org.eclipse.jface.action.ContributionItem
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.IContributionManager
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.SubContributionItem
 *  org.eclipse.jface.action.ToolBarContributionItem
 *  org.eclipse.jface.action.ToolBarManager
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.CoolBar
 *  org.eclipse.swt.widgets.CoolItem
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.ToolBar
 *  org.eclipse.ui.IActionDelegate
 *  org.eclipse.ui.actions.RetargetAction
 *  org.eclipse.ui.forms.widgets.FormText
 *  org.eclipse.ui.forms.widgets.ScrolledForm
 *  org.eclipse.ui.forms.widgets.Section
 *  org.eclipse.ui.forms.widgets.TableWrapData
 *  org.eclipse.ui.internal.IActionSetContributionItem
 *  org.eclipse.ui.internal.PluginAction
 *  org.eclipse.ui.internal.WWinPluginAction
 *  org.eclipse.ui.menus.CommandContributionItem
 *  org.osgi.framework.Bundle
 *  org.osgi.service.packageadmin.PackageAdmin
 */
package org.eclipse.pde.internal.runtime.spy.sections;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import org.eclipse.core.commands.Command;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.jface.action.ActionContributionItem;
import org.eclipse.jface.action.ContributionItem;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IContributionManager;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.SubContributionItem;
import org.eclipse.jface.action.ToolBarContributionItem;
import org.eclipse.jface.action.ToolBarManager;
import org.eclipse.pde.internal.runtime.PDERuntimeMessages;
import org.eclipse.pde.internal.runtime.PDERuntimePlugin;
import org.eclipse.pde.internal.runtime.spy.SpyFormToolkit;
import org.eclipse.pde.internal.runtime.spy.sections.ISpySection;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.CoolBar;
import org.eclipse.swt.widgets.CoolItem;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.ui.IActionDelegate;
import org.eclipse.ui.actions.RetargetAction;
import org.eclipse.ui.forms.widgets.FormText;
import org.eclipse.ui.forms.widgets.ScrolledForm;
import org.eclipse.ui.forms.widgets.Section;
import org.eclipse.ui.forms.widgets.TableWrapData;
import org.eclipse.ui.internal.IActionSetContributionItem;
import org.eclipse.ui.internal.PluginAction;
import org.eclipse.ui.internal.WWinPluginAction;
import org.eclipse.ui.menus.CommandContributionItem;
import org.osgi.framework.Bundle;
import org.osgi.service.packageadmin.PackageAdmin;

public class ActiveMenuSection
implements ISpySection {
    public void build(ScrolledForm form, SpyFormToolkit toolkit, Event event) {
        Object object = event.widget.getData();
        if (object != null) {
            Section section = toolkit.createSection(form.getBody(), 256);
            section.clientVerticalSpacing = 9;
            section.setText(PDERuntimeMessages.SpyDialog_activeSelection_title);
            FormText text = toolkit.createFormText((Composite)section, true);
            section.setClient((Control)text);
            TableWrapData td = new TableWrapData();
            td.align = 128;
            td.grabHorizontal = true;
            section.setLayoutData((Object)td);
            StringBuffer buffer = new StringBuffer();
            buffer.append("<form>");
            if (object instanceof IContributionItem) {
                IContributionItem item = (IContributionItem)object;
                String id = item.getId();
                if (id != null) {
                    buffer.append(toolkit.createIdentifierSection(text, PDERuntimeMessages.ActiveMenuSection_0, new String[]{id}));
                }
                if (object instanceof ContributionItem) {
                    this.createLocationURI(toolkit, object, text, buffer, id);
                }
                this.scan(item, buffer, toolkit, text);
            }
            buffer.append("</form>");
            text.setText(buffer.toString(), true, false);
        }
    }

    private void createLocationURI(SpyFormToolkit toolkit, Object object, FormText text, StringBuffer buffer, String id) {
        ToolBar bar;
        IContributionManager parent = ((ContributionItem)object).getParent();
        if (parent instanceof IMenuManager) {
            String parentId = ((IMenuManager)parent).getId();
            String locationURI = "menu:" + parentId + (id == null ? "?after=additions" : "?after=" + id);
            buffer.append(toolkit.createIdentifierSection(text, PDERuntimeMessages.ActiveMenuSection_7, new String[]{locationURI}));
        } else if (parent instanceof ToolBarManager && (bar = ((ToolBarManager)parent).getControl()).getParent() instanceof CoolBar) {
            CoolItem[] items = ((CoolBar)bar.getParent()).getItems();
            int i = 0;
            while (i < items.length) {
                Object o;
                CoolItem coolItem = items[i];
                if (coolItem.getControl() == bar && (o = coolItem.getData()) instanceof ToolBarContributionItem) {
                    String parentId = ((ToolBarContributionItem)o).getId();
                    String locationURI = "toolbar:" + parentId + (id == null ? "?after=additions" : "?after=" + id);
                    buffer.append(toolkit.createIdentifierSection(text, PDERuntimeMessages.ActiveMenuSection_7, new String[]{locationURI}));
                }
                ++i;
            }
        }
    }

    private void scan(IContributionItem item, StringBuffer buffer, SpyFormToolkit toolkit, FormText text) {
        if (item instanceof IActionSetContributionItem) {
            IActionSetContributionItem actionItem = (IActionSetContributionItem)item;
            buffer.append(toolkit.createIdentifierSection(text, PDERuntimeMessages.ActiveMenuSection_1, new String[]{actionItem.getActionSetId()}));
        }
        if (item instanceof ActionContributionItem) {
            this.createActionContributionItemText(item, buffer, toolkit, text);
        } else if (item instanceof SubContributionItem) {
            SubContributionItem subItem = (SubContributionItem)item;
            this.scan(subItem.getInnerItem(), buffer, toolkit, text);
        } else if (item instanceof CommandContributionItem) {
            CommandContributionItem contributionItem = (CommandContributionItem)item;
            Command command = contributionItem.getCommand().getCommand();
            buffer.append(toolkit.createClassSection(text, PDERuntimeMessages.ActiveMenuSection_2, new Class[]{command.getClass()}));
            buffer.append(toolkit.createClassSection(text, PDERuntimeMessages.ActiveMenuSection_3, new Class[]{command.getHandler().getClass()}));
        }
    }

    private void createActionContributionItemText(Object object, StringBuffer buffer, SpyFormToolkit toolkit, FormText text) {
        ActionContributionItem actionItem = (ActionContributionItem)object;
        IAction action = actionItem.getAction();
        String id = action.getActionDefinitionId();
        if (id != null) {
            buffer.append(toolkit.createIdentifierSection(text, PDERuntimeMessages.ActiveMenuSection_4, new String[]{action.getActionDefinitionId()}));
        }
        if (action instanceof PluginAction) {
            PluginAction pluginAction = (PluginAction)action;
            Class<?> clazz = pluginAction.getClass();
            this.createActionContributionItemText(object, buffer, toolkit, text, clazz, pluginAction);
        } else {
            Class<?> clazz = action.getClass();
            buffer.append(toolkit.createClassSection(text, PDERuntimeMessages.ActiveMenuSection_5, new Class[]{clazz}));
            PackageAdmin admin = PDERuntimePlugin.getDefault().getPackageAdmin();
            Bundle bundle = admin.getBundle(clazz);
            toolkit.generatePluginDetailsText(bundle, null, "meow", buffer, text);
        }
    }

    private void createActionContributionItemText(Object object, StringBuffer buffer, SpyFormToolkit toolkit, FormText text, Class clazz, PluginAction pluginAction) {
        block5: {
            try {
                Field field;
                RetargetAction retargetAction = null;
                IActionDelegate delegate = null;
                if (pluginAction instanceof WWinPluginAction) {
                    field = clazz.getDeclaredField("retargetAction");
                    field.setAccessible(true);
                    retargetAction = (RetargetAction)field.get(pluginAction);
                }
                if (retargetAction == null) {
                    field = clazz.getDeclaredField("delegate");
                    field.setAccessible(true);
                    delegate = (IActionDelegate)field.get(pluginAction);
                    if (delegate == null) {
                        Method method = clazz.getDeclaredMethod("createDelegate", null);
                        method.setAccessible(true);
                        method.invoke(pluginAction, null);
                        delegate = (IActionDelegate)field.get(pluginAction);
                    }
                }
                buffer.append(toolkit.createClassSection(text, PDERuntimeMessages.ActiveMenuSection_6, new Class[]{retargetAction == null ? delegate.getClass() : retargetAction.getActionHandler().getClass()}));
                PackageAdmin admin = PDERuntimePlugin.getDefault().getPackageAdmin();
                Bundle bundle = admin.getBundle(clazz);
                toolkit.generatePluginDetailsText(bundle, null, "menu item", buffer, text);
            }
            catch (Exception exception) {
                Class superclass = clazz.getSuperclass();
                if (superclass == null) break block5;
                this.createActionContributionItemText(object, buffer, toolkit, text, superclass, pluginAction);
            }
        }
    }

    public void build(ScrolledForm form, SpyFormToolkit toolkit, ExecutionEvent event) {
    }
}

