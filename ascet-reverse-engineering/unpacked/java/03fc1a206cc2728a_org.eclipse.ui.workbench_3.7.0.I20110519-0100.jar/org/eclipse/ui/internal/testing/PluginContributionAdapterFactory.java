/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdapterFactory
 *  org.eclipse.core.runtime.jobs.Job
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.FrameworkUtil
 */
package org.eclipse.ui.internal.testing;

import org.eclipse.core.runtime.IAdapterFactory;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.ui.IPluginContribution;
import org.eclipse.ui.internal.decorators.DecoratorDefinition;
import org.eclipse.ui.internal.dialogs.WizardCollectionElement;
import org.eclipse.ui.internal.dialogs.WorkbenchWizardElement;
import org.eclipse.ui.internal.preferences.WorkbenchPreferenceExpressionNode;
import org.eclipse.ui.internal.progress.JobInfo;
import org.eclipse.ui.internal.registry.ActionSetDescriptor;
import org.eclipse.ui.internal.registry.Category;
import org.eclipse.ui.internal.registry.EditorDescriptor;
import org.eclipse.ui.internal.registry.PerspectiveDescriptor;
import org.eclipse.ui.internal.registry.ViewDescriptor;
import org.eclipse.ui.internal.testing.ContributionInfoMessages;
import org.eclipse.ui.internal.themes.ColorDefinition;
import org.eclipse.ui.internal.themes.ThemeElementCategory;
import org.eclipse.ui.testing.ContributionInfo;
import org.eclipse.ui.views.IViewCategory;
import org.osgi.framework.Bundle;
import org.osgi.framework.FrameworkUtil;

public class PluginContributionAdapterFactory
implements IAdapterFactory {
    static /* synthetic */ Class class$0;

    public Object getAdapter(Object adaptableObject, Class adapterType) {
        Bundle bundle;
        JobInfo jobInfo;
        Job job;
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.testing.ContributionInfo");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (adapterType != clazz) {
            return null;
        }
        if (adaptableObject instanceof IPluginContribution) {
            IPluginContribution contribution = (IPluginContribution)adaptableObject;
            String elementType = contribution instanceof EditorDescriptor ? ContributionInfoMessages.ContributionInfo_Editor : (contribution instanceof ViewDescriptor ? ContributionInfoMessages.ContributionInfo_View : (contribution instanceof ActionSetDescriptor ? ContributionInfoMessages.ContributionInfo_ActionSet : (contribution instanceof Category ? ContributionInfoMessages.ContributionInfo_Category : (contribution instanceof IViewCategory ? ContributionInfoMessages.ContributionInfo_Category : (contribution instanceof ThemeElementCategory ? ContributionInfoMessages.ContributionInfo_Category : (contribution instanceof WizardCollectionElement ? ContributionInfoMessages.ContributionInfo_Category : (contribution instanceof ColorDefinition ? ContributionInfoMessages.ContributionInfo_ColorDefinition : (contribution instanceof WorkbenchWizardElement ? ContributionInfoMessages.ContributionInfo_Wizard : (contribution instanceof PerspectiveDescriptor ? ContributionInfoMessages.ContributionInfo_Perspective : (contribution instanceof WorkbenchPreferenceExpressionNode ? ContributionInfoMessages.ContributionInfo_Page : (contribution instanceof DecoratorDefinition ? ContributionInfoMessages.ContributionInfo_LabelDecoration : ContributionInfoMessages.ContributionInfo_Unknown)))))))))));
            return new ContributionInfo(contribution.getPluginId(), elementType, null);
        }
        if (adaptableObject instanceof JobInfo && (job = (jobInfo = (JobInfo)adaptableObject).getJob()) != null && (bundle = FrameworkUtil.getBundle(job.getClass())) != null) {
            return new ContributionInfo(bundle.getSymbolicName(), ContributionInfoMessages.ContributionInfo_Job, null);
        }
        return null;
    }

    public Class[] getAdapterList() {
        Class[] classArray = new Class[1];
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.testing.ContributionInfo");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[0] = clazz;
        return classArray;
    }
}

