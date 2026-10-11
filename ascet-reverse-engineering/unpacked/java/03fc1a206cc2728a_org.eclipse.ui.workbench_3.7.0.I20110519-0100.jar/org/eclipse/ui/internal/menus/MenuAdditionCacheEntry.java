/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.core.expressions.ExpressionConverter
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.InvalidRegistryObjectException
 *  org.eclipse.jface.action.GroupMarker
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.IToolBarManager
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.action.Separator
 *  org.eclipse.jface.action.ToolBarContributionItem
 *  org.eclipse.jface.action.ToolBarManager
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui.internal.menus;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.ExpressionConverter;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.InvalidRegistryObjectException;
import org.eclipse.jface.action.GroupMarker;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.action.Separator;
import org.eclipse.jface.action.ToolBarContributionItem;
import org.eclipse.jface.action.ToolBarManager;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.menus.AbstractMenuAdditionCacheEntry;
import org.eclipse.ui.internal.menus.DynamicMenuContributionItem;
import org.eclipse.ui.internal.menus.DynamicToolBarContributionItem;
import org.eclipse.ui.internal.menus.InternalControlContribution;
import org.eclipse.ui.internal.menus.MenuLocationURI;
import org.eclipse.ui.internal.provisional.presentations.IActionBarPresentationFactory;
import org.eclipse.ui.internal.services.IWorkbenchLocationService;
import org.eclipse.ui.menus.CommandContributionItem;
import org.eclipse.ui.menus.CommandContributionItemParameter;
import org.eclipse.ui.menus.IContributionRoot;
import org.eclipse.ui.menus.IMenuService;
import org.eclipse.ui.plugin.AbstractUIPlugin;
import org.eclipse.ui.services.IServiceLocator;

public class MenuAdditionCacheEntry
extends AbstractMenuAdditionCacheEntry {
    private HashMap visWhenMap = new HashMap();
    private IMenuService menuService;
    private List subCaches;
    private boolean hasAdditions = false;
    private Boolean contributeToAllPopups = null;
    static /* synthetic */ Class class$0;

    public MenuAdditionCacheEntry(IMenuService menuService, IConfigurationElement element, String location, String namespace) {
        super(location, namespace, element);
        this.menuService = menuService;
        this.findAdditions();
        this.generateSubCaches();
    }

    private void generateSubCaches() {
        IConfigurationElement[] items = this.getConfigElement().getChildren();
        int i = 0;
        while (i < items.length) {
            String itemType = items[i].getName();
            if ("menu".equals(itemType) || "toolbar".equals(itemType)) {
                String location = String.valueOf(new MenuLocationURI(this.getLocation()).getScheme()) + ":" + MenuAdditionCacheEntry.getId(items[i]);
                MenuAdditionCacheEntry subMenuEntry = new MenuAdditionCacheEntry(this.menuService, items[i], location, this.getNamespace());
                this.menuService.addContributionFactory(subMenuEntry);
                if (this.subCaches == null) {
                    this.subCaches = new ArrayList();
                }
                this.subCaches.add(subMenuEntry);
            }
            ++i;
        }
    }

    private Expression getVisibleWhenForItem(IContributionItem item, IConfigurationElement configElement) {
        if (!this.visWhenMap.containsKey(configElement)) {
            try {
                IConfigurationElement[] visibleChild;
                IConfigurationElement[] visibleConfig = configElement.getChildren("visibleWhen");
                if (visibleConfig.length > 0 && visibleConfig.length < 2 && (visibleChild = visibleConfig[0].getChildren()).length > 0) {
                    Expression visWhen = ExpressionConverter.getDefault().perform(visibleChild[0]);
                    this.visWhenMap.put(configElement, visWhen);
                }
            }
            catch (InvalidRegistryObjectException e) {
                this.visWhenMap.put(configElement, null);
                e.printStackTrace();
            }
            catch (CoreException e) {
                this.visWhenMap.put(configElement, null);
                e.printStackTrace();
            }
        }
        return (Expression)this.visWhenMap.get(configElement);
    }

    public void createContributionItems(IServiceLocator serviceLocator, IContributionRoot additions) {
        IWorkbenchLocationService wls;
        WorkbenchWindow window;
        IActionBarPresentationFactory actionBarPresentationFactory = null;
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.services.IWorkbenchLocationService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((window = (WorkbenchWindow)(wls = (IWorkbenchLocationService)serviceLocator.getService(clazz)).getWorkbenchWindow()) != null) {
            actionBarPresentationFactory = window.getActionBarPresentationFactory();
        }
        IConfigurationElement[] items = this.getConfigElement().getChildren();
        int i = 0;
        while (i < items.length) {
            String itemType = items[i].getName();
            IContributionItem newItem = null;
            if ("command".equals(itemType)) {
                newItem = this.createCommandAdditionContribution(serviceLocator, items[i]);
            } else if ("dynamic".equals(itemType)) {
                newItem = this.createDynamicAdditionContribution(serviceLocator, items[i]);
            } else if ("control".equals(itemType)) {
                newItem = this.createControlAdditionContribution(serviceLocator, items[i]);
            } else if ("separator".equals(itemType)) {
                newItem = this.createSeparatorAdditionContribution(items[i]);
            } else if ("menu".equals(itemType)) {
                newItem = this.createMenuAdditionContribution(items[i]);
            } else if ("toolbar".equals(itemType)) {
                newItem = this.createToolBarAdditionContribution(window, actionBarPresentationFactory, items[i]);
            }
            if (newItem instanceof InternalControlContribution) {
                ((InternalControlContribution)newItem).setWorkbenchWindow(window);
            }
            if (newItem != null) {
                additions.addContributionItem(newItem, this.getVisibleWhenForItem(newItem, items[i]));
            }
            ++i;
        }
    }

    private IContributionItem createToolBarAdditionContribution(WorkbenchWindow window, IActionBarPresentationFactory actionBarPresentationFactory, IConfigurationElement configurationElement) {
        if (!this.inToolbar()) {
            return null;
        }
        String id = MenuAdditionCacheEntry.getId(configurationElement);
        String label = MenuAdditionCacheEntry.getLabel(configurationElement);
        if (label != null && label.length() > 0) {
            window.putToolbarLabel(id, label);
        }
        if (actionBarPresentationFactory != null) {
            return actionBarPresentationFactory.createToolBarContributionItem((IToolBarManager)actionBarPresentationFactory.createToolBarManager(), id);
        }
        return new ToolBarContributionItem((IToolBarManager)new ToolBarManager(), id);
    }

    private boolean inToolbar() {
        return this.getLocation().startsWith("toolbar");
    }

    private IContributionItem createMenuAdditionContribution(IConfigurationElement menuAddition) {
        int idx;
        if (this.inToolbar()) {
            return null;
        }
        String text = MenuAdditionCacheEntry.getLabel(menuAddition);
        String mnemonic = MenuAdditionCacheEntry.getMnemonic(menuAddition);
        if (text != null && mnemonic != null && (idx = text.indexOf(mnemonic)) != -1) {
            text = String.valueOf(text.substring(0, idx)) + '&' + text.substring(idx);
        }
        MenuManager menuManager = new MenuManager(text, MenuAdditionCacheEntry.getIconDescriptor(menuAddition), MenuAdditionCacheEntry.getId(menuAddition));
        menuManager.setActionDefinitionId(MenuAdditionCacheEntry.getCommandId(menuAddition));
        return menuManager;
    }

    private IContributionItem createSeparatorAdditionContribution(IConfigurationElement sepAddition) {
        if (MenuAdditionCacheEntry.isSeparatorVisible(sepAddition)) {
            return new Separator(MenuAdditionCacheEntry.getName(sepAddition));
        }
        return new GroupMarker(MenuAdditionCacheEntry.getName(sepAddition));
    }

    private IContributionItem createDynamicAdditionContribution(IServiceLocator locator, IConfigurationElement dynamicAddition) {
        return new DynamicMenuContributionItem(MenuAdditionCacheEntry.getId(dynamicAddition), locator, dynamicAddition);
    }

    private IContributionItem createControlAdditionContribution(IServiceLocator locator, IConfigurationElement widgetAddition) {
        if (this.inToolbar()) {
            return new DynamicToolBarContributionItem(MenuAdditionCacheEntry.getId(widgetAddition), locator, widgetAddition);
        }
        return null;
    }

    private IContributionItem createCommandAdditionContribution(IServiceLocator locator, IConfigurationElement commandAddition) {
        CommandContributionItemParameter parm = new CommandContributionItemParameter(locator, MenuAdditionCacheEntry.getId(commandAddition), MenuAdditionCacheEntry.getCommandId(commandAddition), MenuAdditionCacheEntry.getParameters(commandAddition), MenuAdditionCacheEntry.getIconDescriptor(commandAddition), MenuAdditionCacheEntry.getDisabledIconDescriptor(commandAddition), MenuAdditionCacheEntry.getHoverIconDescriptor(commandAddition), MenuAdditionCacheEntry.getLabel(commandAddition), MenuAdditionCacheEntry.getMnemonic(commandAddition), MenuAdditionCacheEntry.getTooltip(commandAddition), this.getStyle(commandAddition), MenuAdditionCacheEntry.getHelpContextId(commandAddition), MenuAdditionCacheEntry.getVisibleEnabled(commandAddition));
        if (this.inToolbar()) {
            parm.iconStyle = "toolbar";
        }
        parm.mode = MenuAdditionCacheEntry.getMode(commandAddition);
        return new CommandContributionItem(parm);
    }

    static boolean getVisibleEnabled(IConfigurationElement element) {
        IConfigurationElement[] children = element.getChildren("visibleWhen");
        String checkEnabled = null;
        if (children.length > 0) {
            checkEnabled = children[0].getAttribute("checkEnabled");
        }
        return checkEnabled != null && checkEnabled.equalsIgnoreCase("true");
    }

    public static String getId(IConfigurationElement element) {
        String id = element.getAttribute("id");
        if (id == null || id.length() == 0) {
            id = MenuAdditionCacheEntry.getCommandId(element);
        }
        if (id == null || id.length() == 0) {
            id = element.toString();
        }
        return id;
    }

    static String getName(IConfigurationElement element) {
        return element.getAttribute("name");
    }

    static int getMode(IConfigurationElement element) {
        if ("FORCE_TEXT".equals(element.getAttribute("mode"))) {
            return CommandContributionItem.MODE_FORCE_TEXT;
        }
        return 0;
    }

    static String getLabel(IConfigurationElement element) {
        return element.getAttribute("label");
    }

    static String getMnemonic(IConfigurationElement element) {
        return element.getAttribute("mnemonic");
    }

    static String getTooltip(IConfigurationElement element) {
        return element.getAttribute("tooltip");
    }

    static String getIconPath(IConfigurationElement element) {
        return element.getAttribute("icon");
    }

    static String getDisabledIconPath(IConfigurationElement element) {
        return element.getAttribute("disabledIcon");
    }

    static String getHoverIconPath(IConfigurationElement element) {
        return element.getAttribute("hoverIcon");
    }

    static ImageDescriptor getIconDescriptor(IConfigurationElement element) {
        String extendingPluginId = element.getDeclaringExtension().getContributor().getName();
        String iconPath = MenuAdditionCacheEntry.getIconPath(element);
        if (iconPath != null) {
            return AbstractUIPlugin.imageDescriptorFromPlugin(extendingPluginId, iconPath);
        }
        return null;
    }

    static ImageDescriptor getDisabledIconDescriptor(IConfigurationElement element) {
        String extendingPluginId = element.getDeclaringExtension().getContributor().getName();
        String iconPath = MenuAdditionCacheEntry.getDisabledIconPath(element);
        if (iconPath != null) {
            return AbstractUIPlugin.imageDescriptorFromPlugin(extendingPluginId, iconPath);
        }
        return null;
    }

    static ImageDescriptor getHoverIconDescriptor(IConfigurationElement element) {
        String extendingPluginId = element.getDeclaringExtension().getContributor().getName();
        String iconPath = MenuAdditionCacheEntry.getHoverIconPath(element);
        if (iconPath != null) {
            return AbstractUIPlugin.imageDescriptorFromPlugin(extendingPluginId, iconPath);
        }
        return null;
    }

    static String getHelpContextId(IConfigurationElement element) {
        return element.getAttribute("helpContextId");
    }

    public static boolean isSeparatorVisible(IConfigurationElement element) {
        String val = element.getAttribute("visible");
        return Boolean.valueOf(val);
    }

    public static String getClassSpec(IConfigurationElement element) {
        return element.getAttribute("class");
    }

    public static String getCommandId(IConfigurationElement element) {
        return element.getAttribute("commandId");
    }

    private int getStyle(IConfigurationElement element) {
        String style = element.getAttribute("style");
        if (style == null || style.length() == 0) {
            return 8;
        }
        if ("toggle".equals(style)) {
            return 32;
        }
        if ("radio".equals(style)) {
            return 16;
        }
        if ("pulldown".equals(style)) {
            return 4;
        }
        return 8;
    }

    public static Map getParameters(IConfigurationElement element) {
        HashMap<String, String> map = new HashMap<String, String>();
        IConfigurationElement[] parameters = element.getChildren("parameter");
        int i = 0;
        while (i < parameters.length) {
            String name = parameters[i].getAttribute("name");
            String value = parameters[i].getAttribute("value");
            if (name != null && value != null) {
                map.put(name, value);
            }
            ++i;
        }
        return map;
    }

    public List getSubCaches() {
        return this.subCaches;
    }

    private void findAdditions() {
        IConfigurationElement[] items = this.getConfigElement().getChildren();
        boolean done = false;
        int i = 0;
        while (i < items.length && !done) {
            String itemType = items[i].getName();
            if ("separator".equals(itemType) && "additions".equals(MenuAdditionCacheEntry.getName(items[i]))) {
                this.hasAdditions = true;
                done = true;
            }
            ++i;
        }
    }

    public boolean hasAdditions() {
        return this.hasAdditions;
    }

    public boolean contributeToAllPopups() {
        if (this.contributeToAllPopups == null) {
            String allPopups = this.getConfigElement().getAttribute("allPopups");
            this.contributeToAllPopups = allPopups == null || Boolean.valueOf(allPopups) != false ? Boolean.TRUE : Boolean.FALSE;
        }
        return this.contributeToAllPopups;
    }
}

