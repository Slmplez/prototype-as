/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.menus.IWidget
 */
package org.eclipse.ui.internal.menus;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.menus.IWidget;
import org.eclipse.ui.internal.menus.MenuLocationURI;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.menus.IMenuService;
import org.eclipse.ui.menus.IWorkbenchWidget;

public class TrimAdditionCacheEntry {
    private IConfigurationElement additionElement;
    private MenuLocationURI uri = null;
    private Map failedWidgets = new HashMap();
    private Map widgetToConfigElementMap = new HashMap();
    Map iciToConfigElementMap = new HashMap();
    static /* synthetic */ Class class$0;

    public TrimAdditionCacheEntry(IConfigurationElement element, MenuLocationURI uri, IMenuService service) {
        this.additionElement = element;
        this.uri = uri;
    }

    public void getContributionItems(List additions) {
        additions.clear();
    }

    public void generateSubCaches() {
    }

    public Expression getVisibleWhenForItem(IContributionItem item) {
        return null;
    }

    public String getId() {
        return this.additionElement.getAttribute("id");
    }

    public boolean isAtStart() {
        IConfigurationElement order;
        String pos;
        IConfigurationElement location = this.additionElement.getChildren("location")[0];
        if (location.getChildren("order").length > 0 && (pos = (order = location.getChildren("order")[0]).getAttribute("position")) != null) {
            return pos.equals("start") | pos.equals("before");
        }
        return true;
    }

    public boolean fillMajor(IConfigurationElement widgetElement) {
        if (widgetElement.getChildren("layout").length == 0) {
            return false;
        }
        IConfigurationElement layout = widgetElement.getChildren("layout")[0];
        String fillMajorVal = layout.getAttribute("fillMajor");
        return fillMajorVal != null && fillMajorVal.equals("true");
    }

    public boolean fillMinor(IConfigurationElement widgetElement) {
        if (widgetElement.getChildren("layout").length == 0) {
            return false;
        }
        IConfigurationElement layout = widgetElement.getChildren("layout")[0];
        String fillMinorVal = layout.getAttribute("fillMinor");
        return fillMinorVal != null && fillMinorVal.equals("true");
    }

    private List getWidgetConfigs() {
        ArrayList<IConfigurationElement> widgetConfigs = new ArrayList<IConfigurationElement>();
        IExtensionRegistry registry = Platform.getExtensionRegistry();
        IConfigurationElement[] widgetElements = registry.getConfigurationElementsFor("org.eclipse.ui.menus");
        int i = 0;
        while (i < widgetElements.length) {
            IConfigurationElement bar;
            String path;
            IConfigurationElement location;
            if ("widget".equals(widgetElements[i].getName()) && widgetElements[i].getChildren("location").length > 0 && (location = widgetElements[i].getChildren("location")[0]).getChildren("bar").length > 0 && (path = (bar = location.getChildren("bar")[0]).getAttribute("path")) != null && path.equals(this.getId())) {
                widgetConfigs.add(widgetElements[i]);
            }
            ++i;
        }
        return widgetConfigs;
    }

    public List getWidgets() {
        ArrayList<IWorkbenchWidget> loadedWidgets = new ArrayList<IWorkbenchWidget>();
        List widgetConfigs = this.getWidgetConfigs();
        Iterator iterator = widgetConfigs.iterator();
        while (iterator.hasNext()) {
            IConfigurationElement widgetCE = (IConfigurationElement)iterator.next();
            if (this.failedWidgets.containsKey(widgetCE)) continue;
            IWorkbenchWidget loadedWidget = this.loadWidget(widgetCE);
            if (loadedWidget != null) {
                loadedWidgets.add(loadedWidget);
                this.widgetToConfigElementMap.put(loadedWidget, widgetCE);
                continue;
            }
            this.failedWidgets.put(widgetCE, widgetCE);
        }
        return loadedWidgets;
    }

    private IWorkbenchWidget loadWidget(IConfigurationElement widgetCE) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.menus.IWorkbenchWidget");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return (IWorkbenchWidget)Util.safeLoadExecutableExtension(widgetCE, "class", clazz);
    }

    public IConfigurationElement getElement(IWorkbenchWidget widget) {
        return (IConfigurationElement)this.widgetToConfigElementMap.get(widget);
    }

    public void removeWidget(IWidget widget) {
        this.widgetToConfigElementMap.remove(widget);
    }

    public MenuLocationURI getUri() {
        return this.uri;
    }
}

