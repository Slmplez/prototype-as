/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 */
package org.eclipse.ui.internal;

import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.activities.ActivityManagerEvent;
import org.eclipse.ui.activities.IActivity;
import org.eclipse.ui.activities.IActivityManager;
import org.eclipse.ui.activities.IActivityManagerListener;
import org.eclipse.ui.activities.IActivityRequirementBinding;
import org.eclipse.ui.activities.IWorkbenchActivitySupport;
import org.eclipse.ui.activities.NotDefinedException;
import org.eclipse.ui.internal.WorkbenchPlugin;

final class ActivityPersistanceHelper {
    protected static final String PREFIX = "UIActivities.";
    private static ActivityPersistanceHelper singleton;
    private final IActivityManagerListener activityManagerListener = new IActivityManagerListener(){

        public void activityManagerChanged(ActivityManagerEvent activityManagerEvent) {
            if (activityManagerEvent.haveDefinedActivityIdsChanged()) {
                HashSet delta = new HashSet(activityManagerEvent.getActivityManager().getDefinedActivityIds());
                delta.removeAll(activityManagerEvent.getPreviouslyDefinedActivityIds());
                ActivityPersistanceHelper.this.loadEnabledStates(activityManagerEvent.getActivityManager().getEnabledActivityIds(), delta);
            }
            if (activityManagerEvent.haveEnabledActivityIdsChanged()) {
                ActivityPersistanceHelper.this.saveEnabledStates();
            }
        }
    };
    private final IPropertyChangeListener propertyChangeListener = new IPropertyChangeListener(){

        public void propertyChange(PropertyChangeEvent event) {
            if (!ActivityPersistanceHelper.this.saving && event.getProperty().startsWith(ActivityPersistanceHelper.PREFIX)) {
                String activityId = event.getProperty().substring(ActivityPersistanceHelper.PREFIX.length());
                IWorkbenchActivitySupport support = PlatformUI.getWorkbench().getActivitySupport();
                IActivityManager activityManager = support.getActivityManager();
                boolean enabled = Boolean.valueOf(event.getNewValue().toString());
                HashSet<String> set = new HashSet<String>(activityManager.getEnabledActivityIds());
                if (!enabled) {
                    Set dependencies = ActivityPersistanceHelper.this.buildDependencies(activityManager, activityId);
                    set.removeAll(dependencies);
                } else {
                    set.add(activityId);
                }
                support.setEnabledActivityIds(set);
            }
        }
    };
    protected boolean saving = false;

    public static ActivityPersistanceHelper getInstance() {
        if (singleton == null) {
            singleton = new ActivityPersistanceHelper();
        }
        return singleton;
    }

    protected Set buildDependencies(IActivityManager activityManager, String activityId) {
        HashSet<String> set = new HashSet<String>();
        Iterator i = activityManager.getDefinedActivityIds().iterator();
        while (i.hasNext()) {
            IActivity activity = activityManager.getActivity((String)i.next());
            Iterator j = activity.getActivityRequirementBindings().iterator();
            while (j.hasNext()) {
                IActivityRequirementBinding binding = (IActivityRequirementBinding)j.next();
                if (!activityId.equals(binding.getRequiredActivityId())) continue;
                set.addAll(this.buildDependencies(activityManager, activity.getId()));
            }
        }
        set.add(activityId);
        return set;
    }

    private ActivityPersistanceHelper() {
        this.loadEnabledStates();
        this.hookListeners();
    }

    private void hookListeners() {
        IWorkbenchActivitySupport support = PlatformUI.getWorkbench().getActivitySupport();
        IActivityManager activityManager = support.getActivityManager();
        activityManager.addActivityManagerListener(this.activityManagerListener);
        IPreferenceStore store = WorkbenchPlugin.getDefault().getPreferenceStore();
        store.addPropertyChangeListener(this.propertyChangeListener);
    }

    private void unhookListeners() {
        IWorkbenchActivitySupport support = PlatformUI.getWorkbench().getActivitySupport();
        IActivityManager activityManager = support.getActivityManager();
        activityManager.removeActivityManagerListener(this.activityManagerListener);
        IPreferenceStore store = WorkbenchPlugin.getDefault().getPreferenceStore();
        store.removePropertyChangeListener(this.propertyChangeListener);
    }

    private String createPreferenceKey(String activityId) {
        return PREFIX + activityId;
    }

    void loadEnabledStates() {
        this.loadEnabledStates(Collections.EMPTY_SET, PlatformUI.getWorkbench().getActivitySupport().getActivityManager().getDefinedActivityIds());
    }

    protected void loadEnabledStates(Set previouslyEnabledActivities, Set activityIdsToProcess) {
        if (activityIdsToProcess.isEmpty()) {
            return;
        }
        HashSet<String> enabledActivities = new HashSet<String>(previouslyEnabledActivities);
        IPreferenceStore store = WorkbenchPlugin.getDefault().getPreferenceStore();
        IWorkbenchActivitySupport support = PlatformUI.getWorkbench().getActivitySupport();
        IActivityManager activityManager = support.getActivityManager();
        Iterator i = activityIdsToProcess.iterator();
        while (i.hasNext()) {
            String activityId = (String)i.next();
            String preferenceKey = this.createPreferenceKey(activityId);
            try {
                IActivity activity = activityManager.getActivity(activityId);
                if (activity.getExpression() != null) continue;
                if ("".equals(store.getDefaultString(preferenceKey))) {
                    store.setDefault(preferenceKey, activity.isDefaultEnabled());
                }
            }
            catch (NotDefinedException notDefinedException) {}
            if (store.getBoolean(preferenceKey)) {
                enabledActivities.add(activityId);
                continue;
            }
            enabledActivities.remove(activityId);
        }
        support.setEnabledActivityIds(enabledActivities);
    }

    protected void saveEnabledStates() {
        try {
            this.saving = true;
            IPreferenceStore store = WorkbenchPlugin.getDefault().getPreferenceStore();
            IWorkbenchActivitySupport support = PlatformUI.getWorkbench().getActivitySupport();
            IActivityManager activityManager = support.getActivityManager();
            Iterator values = activityManager.getDefinedActivityIds().iterator();
            while (values.hasNext()) {
                IActivity activity = activityManager.getActivity((String)values.next());
                if (activity.getExpression() != null) continue;
                store.setValue(this.createPreferenceKey(activity.getId()), activity.isEnabled());
            }
            WorkbenchPlugin.getDefault().savePluginPreferences();
        }
        finally {
            this.saving = false;
        }
    }

    public void shutdown() {
        this.unhookListeners();
        this.saveEnabledStates();
    }
}

