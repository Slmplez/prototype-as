/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.EvaluationContext
 *  org.eclipse.core.expressions.EvaluationResult
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.core.expressions.ExpressionConverter
 *  org.eclipse.core.expressions.IEvaluationContext
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.preference.IPreferencePage
 *  org.eclipse.jface.preference.PreferenceNode
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.viewers.IStructuredSelection
 */
package org.eclipse.ui.internal.dialogs;

import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.expressions.EvaluationContext;
import org.eclipse.core.expressions.EvaluationResult;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.ExpressionConverter;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.preference.IPreferencePage;
import org.eclipse.jface.preference.PreferenceNode;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.ui.IActionFilter;
import org.eclipse.ui.IPluginContribution;
import org.eclipse.ui.IWorkbenchPropertyPage;
import org.eclipse.ui.IWorkbenchPropertyPageMulti;
import org.eclipse.ui.SelectionEnabler;
import org.eclipse.ui.internal.LegacyResourceSupport;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.dialogs.AdaptableForwarder;
import org.eclipse.ui.internal.dialogs.IPropertyPageContributor;
import org.eclipse.ui.internal.dialogs.PropertyPageManager;
import org.eclipse.ui.internal.dialogs.PropertyPageNode;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.model.IWorkbenchAdapter;
import org.eclipse.ui.plugin.AbstractUIPlugin;

public class RegistryPageContributor
implements IPropertyPageContributor,
IAdaptable,
IPluginContribution {
    private static final String CHILD_ENABLED_WHEN = "enabledWhen";
    private String pageId;
    private Collection subPages = new ArrayList();
    private boolean adaptable = false;
    private final boolean supportsMultiSelect;
    private IConfigurationElement pageElement;
    private SoftReference filterProperties;
    private Expression enablementExpression;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    public RegistryPageContributor(String pageId, IConfigurationElement element) {
        this.pageId = pageId;
        this.pageElement = element;
        this.adaptable = Boolean.valueOf(this.pageElement.getAttribute("adaptable"));
        this.supportsMultiSelect = "multi".equals(this.pageElement.getAttribute("selectionFilter"));
        this.initializeEnablement(element);
    }

    public PreferenceNode contributePropertyPage(PropertyPageManager mng, Object element) {
        PropertyPageNode node = new PropertyPageNode(this, element);
        if ("org.eclipse.ui.propertypages.info.file".equals(node.getId())) {
            node.setPriority(-1);
        }
        return node;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public IPreferencePage createPage(Object element) throws CoreException {
        IPreferencePage ppage = null;
        ppage = (IPreferencePage)WorkbenchPlugin.createExtension(this.pageElement, "class");
        ppage.setTitle(this.getPageName());
        Object[] elements = this.getObjects(element);
        IAdaptable[] adapt = new IAdaptable[elements.length];
        int i = 0;
        while (i < elements.length) {
            Object adapted = elements[i];
            if (this.adaptable && (adapted = this.getAdaptedElement(adapted)) == null) {
                String message = "Error adapting selection to Property page " + this.pageId + " is being ignored";
                throw new CoreException((IStatus)new Status(4, WorkbenchPlugin.PI_WORKBENCH, 4, message, null));
            }
            adapt[i] = (IAdaptable)(adapted instanceof IAdaptable ? adapted : new AdaptableForwarder(adapted));
            ++i;
        }
        if (this.supportsMultiSelect) {
            if (!(ppage instanceof IWorkbenchPropertyPageMulti)) throw new CoreException((IStatus)new Status(4, WorkbenchPlugin.PI_WORKBENCH, 4, "Property page must implement IWorkbenchPropertyPageMulti: " + this.getPageName(), null));
            ((IWorkbenchPropertyPageMulti)ppage).setElements(adapt);
            return ppage;
        } else {
            ((IWorkbenchPropertyPage)ppage).setElement(adapt[0]);
        }
        return ppage;
    }

    private Object getAdaptedElement(Object element) {
        Object adapted = LegacyResourceSupport.getAdapter(element, this.getObjectClass());
        if (adapted != null) {
            return adapted;
        }
        return null;
    }

    public String getObjectClass() {
        return this.pageElement.getAttribute("objectClass");
    }

    public ImageDescriptor getPageIcon() {
        String iconName = this.pageElement.getAttribute("icon");
        if (iconName == null) {
            return null;
        }
        return AbstractUIPlugin.imageDescriptorFromPlugin(this.pageElement.getNamespaceIdentifier(), iconName);
    }

    public String getPageId() {
        return this.pageId;
    }

    public String getPageName() {
        return this.pageElement.getAttribute("name");
    }

    public boolean isApplicableTo(Object object) {
        Object[] objs = this.getObjects(object);
        if (objs.length > 1 && !this.supportsMultiSelect) {
            return false;
        }
        if (this.failsEnablement(objs)) {
            return false;
        }
        String nameFilter = this.pageElement.getAttribute("nameFilter");
        int i = 0;
        while (i < objs.length) {
            Class<?> clazz;
            object = objs[i];
            if (nameFilter != null) {
                String elementName;
                IWorkbenchAdapter adapter;
                String objectName = object.toString();
                Class<?> clazz2 = class$0;
                if (clazz2 == null) {
                    try {
                        clazz2 = Class.forName("org.eclipse.ui.model.IWorkbenchAdapter");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if ((adapter = (IWorkbenchAdapter)Util.getAdapter(object, clazz2)) != null && (elementName = adapter.getLabel(object)) != null) {
                    objectName = elementName;
                }
                if (!SelectionEnabler.verifyNameMatch(objectName, nameFilter)) {
                    return false;
                }
            }
            if (this.getFilterProperties() == null) {
                return true;
            }
            IActionFilter filter = null;
            Object adaptedObject = LegacyResourceSupport.getAdaptedResource(object);
            if (adaptedObject != null) {
                object = adaptedObject;
            }
            if ((clazz = class$1) == null) {
                try {
                    clazz = Class.forName("org.eclipse.ui.IActionFilter");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((filter = (IActionFilter)Util.getAdapter(object, clazz)) != null && !this.testCustom(object, filter)) {
                return false;
            }
            ++i;
        }
        return true;
    }

    private boolean failsEnablement(Object[] objs) {
        if (this.enablementExpression == null) {
            return false;
        }
        try {
            Object object = this.supportsMultiSelect ? Arrays.asList(objs) : objs[0];
            EvaluationContext context = new EvaluationContext(null, object);
            context.setAllowPluginActivation(true);
            return this.enablementExpression.evaluate((IEvaluationContext)context).equals(EvaluationResult.FALSE);
        }
        catch (CoreException e) {
            WorkbenchPlugin.log(e);
            return false;
        }
    }

    private Object[] getObjects(Object obj) {
        if (obj instanceof IStructuredSelection) {
            return ((IStructuredSelection)obj).toArray();
        }
        return new Object[]{obj};
    }

    protected void initializeEnablement(IConfigurationElement definingElement) {
        IConfigurationElement[] elements = definingElement.getChildren(CHILD_ENABLED_WHEN);
        if (elements.length == 0) {
            return;
        }
        try {
            IConfigurationElement[] enablement = elements[0].getChildren();
            if (enablement.length == 0) {
                return;
            }
            this.enablementExpression = ExpressionConverter.getDefault().perform(enablement[0]);
        }
        catch (CoreException e) {
            WorkbenchPlugin.log(e);
        }
    }

    private boolean testCustom(Object object, IActionFilter filter) {
        Map filterProperties = this.getFilterProperties();
        if (filterProperties == null) {
            return false;
        }
        Iterator iter = filterProperties.keySet().iterator();
        while (iter.hasNext()) {
            String value;
            String key = (String)iter.next();
            if (filter.testAttribute(object, key, value = (String)filterProperties.get(key))) continue;
            return false;
        }
        return true;
    }

    public boolean canAdapt() {
        return this.adaptable;
    }

    public String getCategory() {
        return this.pageElement.getAttribute("category");
    }

    public Collection getSubPages() {
        return this.subPages;
    }

    public void addSubPage(RegistryPageContributor child) {
        this.subPages.add(child);
    }

    private Map getFilterProperties() {
        if (this.filterProperties == null || this.filterProperties.get() == null) {
            HashMap map = new HashMap();
            this.filterProperties = new SoftReference(map);
            IConfigurationElement[] children = this.pageElement.getChildren();
            int i = 0;
            while (i < children.length) {
                this.processChildElement(map, children[i]);
                ++i;
            }
        }
        return (Map)this.filterProperties.get();
    }

    public Object getChild(String id) {
        Iterator iterator = this.subPages.iterator();
        while (iterator.hasNext()) {
            RegistryPageContributor next = (RegistryPageContributor)iterator.next();
            if (!next.getPageId().equals(id)) continue;
            return next;
        }
        return null;
    }

    private void processChildElement(Map map, IConfigurationElement element) {
        String tag = element.getName();
        if (tag.equals("filter")) {
            String key = element.getAttribute("name");
            String value = element.getAttribute("value");
            if (key == null || value == null) {
                return;
            }
            map.put(key, value);
        }
    }

    public Object getAdapter(Class adapter) {
        Class<?> clazz = class$2;
        if (clazz == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.core.runtime.IConfigurationElement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (adapter.equals(clazz)) {
            return this.getConfigurationElement();
        }
        return null;
    }

    boolean supportsMultipleSelection() {
        return this.supportsMultiSelect;
    }

    IConfigurationElement getConfigurationElement() {
        return this.pageElement;
    }

    public String getLocalId() {
        return this.pageId;
    }

    public String getPluginId() {
        return this.pageElement.getContributor().getName();
    }
}

