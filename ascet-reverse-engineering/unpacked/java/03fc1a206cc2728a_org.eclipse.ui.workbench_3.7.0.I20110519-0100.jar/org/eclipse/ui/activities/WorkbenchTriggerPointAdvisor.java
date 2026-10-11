/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExecutableExtension
 */
package org.eclipse.ui.activities;

import java.util.Collections;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Properties;
import java.util.Set;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExecutableExtension;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.activities.IActivity;
import org.eclipse.ui.activities.IActivityManager;
import org.eclipse.ui.activities.IIdentifier;
import org.eclipse.ui.activities.ITriggerPoint;
import org.eclipse.ui.activities.ITriggerPointAdvisor;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.activities.ws.EnablementDialog;
import org.eclipse.ui.internal.util.PrefUtil;
import org.eclipse.ui.internal.util.Util;

public class WorkbenchTriggerPointAdvisor
implements ITriggerPointAdvisor,
IExecutableExtension {
    public static String PROCEED_MULTI = "proceedMulti";
    public static String PROCEED_SINGLE = "proceedSingle";
    public static String DONT_ASK = "dontAsk";
    public static String NO_DETAILS = "noDetails";
    private Properties strings = new Properties();

    public Set allow(ITriggerPoint triggerPoint, IIdentifier identifier) {
        if (triggerPoint.getBooleanHint("pre_UI")) {
            IActivityManager activityManager = PlatformUI.getWorkbench().getActivitySupport().getActivityManager();
            Iterator iterator = identifier.getActivityIds().iterator();
            while (iterator.hasNext()) {
                String id = (String)iterator.next();
                IActivity activity = activityManager.getActivity(id);
                if (activity.getExpression() == null || activity.isEnabled()) continue;
                return null;
            }
            return Collections.EMPTY_SET;
        }
        if (!PrefUtil.getInternalPreferenceStore().getBoolean("shouldPromptForEnablement")) {
            return identifier.getActivityIds();
        }
        if (!triggerPoint.getBooleanHint("interactive")) {
            return identifier.getActivityIds();
        }
        EnablementDialog dialog = new EnablementDialog(Util.getShellToParentOn(), identifier.getActivityIds(), this.strings);
        if (dialog.open() == 0) {
            Set activities = dialog.getActivitiesToEnable();
            if (dialog.getDontAsk()) {
                PrefUtil.getInternalPreferenceStore().setValue("shouldPromptForEnablement", false);
                WorkbenchPlugin.getDefault().savePluginPreferences();
            }
            return activities;
        }
        return null;
    }

    public void setInitializationData(IConfigurationElement config, String propertyName, Object data) {
        if (data instanceof Hashtable) {
            this.strings.putAll((Hashtable)data);
        }
    }

    public boolean computeEnablement(IActivityManager activityManager, IIdentifier identifier) {
        return this.doComputeEnablement(activityManager, identifier, false);
    }

    protected boolean doComputeEnablement(IActivityManager activityManager, IIdentifier identifier, boolean disabledExpressionActivitiesTakePrecedence) {
        Set activityIds = identifier.getActivityIds();
        if (activityIds.size() == 0) {
            return true;
        }
        boolean matchesAtLeastOneEnabled = false;
        boolean matchesDisabledExpressionActivitiesWithPrecedence = false;
        Iterator iterator = activityIds.iterator();
        while (iterator.hasNext()) {
            String activityId = (String)iterator.next();
            IActivity activity = activityManager.getActivity(activityId);
            if (activity.isEnabled()) {
                if (!disabledExpressionActivitiesTakePrecedence) {
                    return true;
                }
                matchesAtLeastOneEnabled = true;
                continue;
            }
            if (!disabledExpressionActivitiesTakePrecedence || activity.getExpression() == null) continue;
            matchesDisabledExpressionActivitiesWithPrecedence = true;
        }
        return !matchesDisabledExpressionActivitiesWithPrecedence && matchesAtLeastOneEnabled;
    }
}

