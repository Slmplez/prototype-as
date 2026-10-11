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
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.jface.viewers.IStructuredSelection
 */
package org.eclipse.ui.internal;

import java.util.List;
import org.eclipse.core.expressions.EvaluationContext;
import org.eclipse.core.expressions.EvaluationResult;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.ExpressionConverter;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.SelectionEnabler;
import org.eclipse.ui.internal.ActionDescriptor;
import org.eclipse.ui.internal.ActionExpression;
import org.eclipse.ui.internal.IObjectActionContributor;
import org.eclipse.ui.internal.LegacyResourceSupport;
import org.eclipse.ui.internal.ObjectFilterTest;
import org.eclipse.ui.internal.ObjectPluginAction;
import org.eclipse.ui.internal.PluginActionBuilder;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.misc.Policy;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.model.IWorkbenchAdapter;

public class ObjectActionContributor
extends PluginActionBuilder
implements IObjectActionContributor,
IAdaptable {
    private static final String P_TRUE = "true";
    private IConfigurationElement config;
    private boolean configRead = false;
    private boolean adaptable = false;
    private String objectClass;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    public ObjectActionContributor(IConfigurationElement config) {
        this.config = config;
        this.adaptable = P_TRUE.equalsIgnoreCase(config.getAttribute("adaptable"));
        this.objectClass = config.getAttribute("objectClass");
    }

    public boolean canAdapt() {
        return this.adaptable;
    }

    public String getObjectClass() {
        return this.objectClass;
    }

    public void contributeObjectActionIdOverrides(List actionIdOverrides) {
        if (!this.configRead) {
            this.readConfigElement();
        }
        if (this.currentContribution.actions != null) {
            int i = 0;
            while (i < this.currentContribution.actions.size()) {
                ActionDescriptor ad = (ActionDescriptor)this.currentContribution.actions.get(i);
                String id = ad.getAction().getOverrideActionId();
                if (id != null) {
                    actionIdOverrides.add(id);
                }
                ++i;
            }
        }
    }

    public boolean contributeObjectActions(final IWorkbenchPart part, IMenuManager menu, ISelectionProvider selProv, List actionIdOverrides) {
        if (!this.configRead) {
            this.readConfigElement();
        }
        if (this.currentContribution.actions == null) {
            return false;
        }
        ISelection sel = selProv.getSelection();
        if (sel == null || !(sel instanceof IStructuredSelection)) {
            return false;
        }
        IStructuredSelection ssel = (IStructuredSelection)sel;
        if (this.canAdapt()) {
            IStructuredSelection newSelection = LegacyResourceSupport.adaptSelection(ssel, this.getObjectClass());
            if (newSelection.size() != ssel.size()) {
                if (Policy.DEBUG_CONTRIBUTIONS) {
                    WorkbenchPlugin.log("Error adapting selection to " + this.getObjectClass() + ". Contribution " + this.getID(this.config) + " is being ignored");
                }
                return false;
            }
            ssel = newSelection;
        }
        final IStructuredSelection selection = ssel;
        int i = 0;
        while (i < this.currentContribution.actions.size()) {
            ActionDescriptor ad = (ActionDescriptor)this.currentContribution.actions.get(i);
            if (!actionIdOverrides.contains(ad.getId())) {
                this.currentContribution.contributeMenuAction(ad, menu, true);
                if (ad.getAction() instanceof ObjectPluginAction) {
                    final ObjectPluginAction action = (ObjectPluginAction)ad.getAction();
                    ISafeRunnable runnable = new ISafeRunnable(){

                        public void handleException(Throwable exception) {
                            WorkbenchPlugin.log("Failed to update action " + action.getId(), exception);
                        }

                        public void run() throws Exception {
                            action.setActivePart(part);
                            action.selectionChanged((ISelection)selection);
                        }
                    };
                    SafeRunner.run((ISafeRunnable)runnable);
                }
            }
            ++i;
        }
        return true;
    }

    public boolean contributeObjectMenus(IMenuManager menu, ISelectionProvider selProv) {
        if (!this.configRead) {
            this.readConfigElement();
        }
        if (this.currentContribution.menus == null) {
            return false;
        }
        ISelection sel = selProv.getSelection();
        if (sel == null || !(sel instanceof IStructuredSelection)) {
            return false;
        }
        int i = 0;
        while (i < this.currentContribution.menus.size()) {
            IConfigurationElement menuElement = (IConfigurationElement)this.currentContribution.menus.get(i);
            this.currentContribution.contributeMenu(menuElement, menu, true);
            ++i;
        }
        return true;
    }

    protected ActionDescriptor createActionDescriptor(IConfigurationElement element) {
        return new ActionDescriptor(element, 1);
    }

    protected PluginActionBuilder.BasicContribution createContribution() {
        return new ObjectContribution();
    }

    public boolean isApplicableTo(Object object) {
        if (!this.configRead) {
            this.readConfigElement();
        }
        if (this.canAdapt()) {
            Object adapted = LegacyResourceSupport.getAdapter(object, this.getObjectClass());
            if (adapted == null) {
                if (Policy.DEBUG_CONTRIBUTIONS) {
                    WorkbenchPlugin.log("Error adapting " + object.getClass().getName() + " to " + this.getObjectClass() + ". Contribution " + this.getID(this.config) + " is being ignored");
                }
            } else {
                object = adapted;
            }
        }
        if (!this.testName(object)) {
            return false;
        }
        return ((ObjectContribution)this.currentContribution).isApplicableTo(object);
    }

    private void readConfigElement() {
        this.currentContribution = this.createContribution();
        this.readElementChildren(this.config);
        this.configRead = true;
    }

    protected boolean readElement(IConfigurationElement element) {
        String tag = element.getName();
        if (tag.equals("visibility")) {
            ((ObjectContribution)this.currentContribution).setVisibilityTest(element);
            return true;
        }
        if (tag.equals("filter")) {
            ((ObjectContribution)this.currentContribution).addFilterTest(element);
            return true;
        }
        if (tag.equals("enablement")) {
            ((ObjectContribution)this.currentContribution).setEnablementTest(element);
            return true;
        }
        return super.readElement(element);
    }

    private boolean testName(Object object) {
        IWorkbenchAdapter de;
        String nameFilter = this.config.getAttribute("nameFilter");
        if (nameFilter == null) {
            return true;
        }
        String objectName = null;
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.model.IWorkbenchAdapter");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((de = (IWorkbenchAdapter)Util.getAdapter(object, clazz)) != null) {
            objectName = de.getLabel(object);
        }
        if (objectName == null) {
            objectName = object.toString();
        }
        return SelectionEnabler.verifyNameMatch(objectName, nameFilter);
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        IConfigurationElement[] children = this.config.getChildren();
        int i = 0;
        while (i < children.length) {
            IConfigurationElement element = children[i];
            String label = element.getAttribute("label");
            if (label != null) {
                buffer.append(label);
                buffer.append('\n');
            }
            ++i;
        }
        return buffer.toString();
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
            return this.config;
        }
        return null;
    }

    private static class ObjectContribution
    extends PluginActionBuilder.BasicContribution {
        private ObjectFilterTest filterTest;
        private ActionExpression visibilityTest;
        private Expression enablement;

        private ObjectContribution() {
        }

        public void addFilterTest(IConfigurationElement element) {
            if (this.filterTest == null) {
                this.filterTest = new ObjectFilterTest();
            }
            this.filterTest.addFilterElement(element);
        }

        public void setVisibilityTest(IConfigurationElement element) {
            this.visibilityTest = new ActionExpression(element);
        }

        public void setEnablementTest(IConfigurationElement element) {
            try {
                this.enablement = ExpressionConverter.getDefault().perform(element);
            }
            catch (CoreException e) {
                WorkbenchPlugin.log(e);
            }
        }

        public boolean isApplicableTo(Object object) {
            boolean result = true;
            if (this.visibilityTest != null) {
                boolean bl = result = result && this.visibilityTest.isEnabledFor(object);
                if (!result) {
                    return result;
                }
            } else if (this.filterTest != null) {
                boolean bl = result = result && this.filterTest.matches(object, true);
                if (!result) {
                    return result;
                }
            }
            if (this.enablement != null) {
                try {
                    EvaluationContext context = new EvaluationContext(null, object);
                    context.setAllowPluginActivation(true);
                    context.addVariable("selection", object);
                    Class<?> clazz = class$0;
                    if (clazz == null) {
                        try {
                            clazz = class$0 = Class.forName("org.eclipse.core.runtime.Platform");
                        }
                        catch (ClassNotFoundException classNotFoundException) {
                            throw new NoClassDefFoundError(classNotFoundException.getMessage());
                        }
                    }
                    context.addVariable("org.eclipse.core.runtime.Platform", (Object)clazz);
                    EvaluationResult evalResult = this.enablement.evaluate((IEvaluationContext)context);
                    if (evalResult == EvaluationResult.FALSE) {
                        return false;
                    }
                }
                catch (CoreException e) {
                    this.enablement = null;
                    WorkbenchPlugin.log(e);
                    result = false;
                }
            }
            return result;
        }
    }
}

