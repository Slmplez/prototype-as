/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.activities;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.ui.IPluginContribution;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.activities.IActivity;
import org.eclipse.ui.activities.IActivityManager;
import org.eclipse.ui.activities.IActivityRequirementBinding;
import org.eclipse.ui.activities.ICategory;
import org.eclipse.ui.activities.ICategoryActivityBinding;
import org.eclipse.ui.activities.IIdentifier;
import org.eclipse.ui.activities.IMutableActivityManager;
import org.eclipse.ui.activities.ITriggerPoint;
import org.eclipse.ui.activities.ITriggerPointAdvisor;
import org.eclipse.ui.activities.IWorkbenchActivitySupport;
import org.eclipse.ui.internal.activities.ws.WorkbenchActivitySupport;

public final class WorkbenchActivityHelper {
    public static final String TRIGGER_PRE_UI_POINT = "org.eclipse.ui.workbenchModel";

    private static ITriggerPoint getTriggerPoint(String id) {
        return PlatformUI.getWorkbench().getActivitySupport().getTriggerPointManager().getTriggerPoint(id);
    }

    public static IIdentifier getIdentifier(IPluginContribution contribution) {
        IWorkbenchActivitySupport workbenchActivitySupport = PlatformUI.getWorkbench().getActivitySupport();
        IIdentifier identifier = workbenchActivitySupport.getActivityManager().getIdentifier(WorkbenchActivityHelper.createUnifiedId(contribution));
        return identifier;
    }

    public static boolean allowUseOf(Object object) {
        return WorkbenchActivityHelper.allowUseOf(PlatformUI.getWorkbench().getActivitySupport().getTriggerPointManager().getTriggerPoint("org.eclipse.ui.internal.UnknownTriggerPoint"), object);
    }

    public static boolean allowUseOf(ITriggerPoint triggerPoint, Object object) {
        if (!WorkbenchActivityHelper.isFiltering()) {
            return true;
        }
        if (triggerPoint == null) {
            return true;
        }
        if (object instanceof IPluginContribution) {
            IPluginContribution contribution = (IPluginContribution)object;
            IIdentifier identifier = WorkbenchActivityHelper.getIdentifier(contribution);
            return WorkbenchActivityHelper.allow(triggerPoint, identifier);
        }
        return true;
    }

    public static boolean restrictUseOf(Object object) {
        return !WorkbenchActivityHelper.allowUseOf(WorkbenchActivityHelper.getTriggerPoint(TRIGGER_PRE_UI_POINT), object);
    }

    private static boolean allow(ITriggerPoint triggerPoint, IIdentifier identifier) {
        if (identifier.isEnabled()) {
            return true;
        }
        ITriggerPointAdvisor advisor = ((WorkbenchActivitySupport)PlatformUI.getWorkbench().getActivitySupport()).getTriggerPointAdvisor();
        Set activitiesToEnable = advisor.allow(triggerPoint, identifier);
        if (activitiesToEnable == null) {
            return false;
        }
        if (activitiesToEnable.isEmpty()) {
            return true;
        }
        WorkbenchActivityHelper.enableActivities(activitiesToEnable);
        Set newEnabled = PlatformUI.getWorkbench().getActivitySupport().getActivityManager().getEnabledActivityIds();
        return newEnabled.containsAll(activitiesToEnable);
    }

    public static final String createUnifiedId(IPluginContribution contribution) {
        if (contribution.getPluginId() != null) {
            return String.valueOf(contribution.getPluginId()) + '/' + contribution.getLocalId();
        }
        return contribution.getLocalId();
    }

    private static void enableActivities(Collection activities) {
        IWorkbenchActivitySupport activitySupport = PlatformUI.getWorkbench().getActivitySupport();
        HashSet newSet = new HashSet(activitySupport.getActivityManager().getEnabledActivityIds());
        newSet.addAll(activities);
        activitySupport.setEnabledActivityIds(newSet);
    }

    public static final boolean filterItem(Object object) {
        if (object instanceof IPluginContribution) {
            IPluginContribution contribution = (IPluginContribution)object;
            IWorkbenchActivitySupport workbenchActivitySupport = PlatformUI.getWorkbench().getActivitySupport();
            IIdentifier identifier = workbenchActivitySupport.getActivityManager().getIdentifier(WorkbenchActivityHelper.createUnifiedId(contribution));
            if (!identifier.isEnabled()) {
                return true;
            }
        }
        return false;
    }

    public static final boolean isFiltering() {
        return !PlatformUI.getWorkbench().getActivitySupport().getActivityManager().getDefinedActivityIds().isEmpty();
    }

    public static Set getEnabledCategories(IActivityManager activityManager, String categoryId) {
        ICategory category = activityManager.getCategory(categoryId);
        if (!category.isDefined()) {
            return Collections.EMPTY_SET;
        }
        Set activities = WorkbenchActivityHelper.expandActivityDependencies(WorkbenchActivityHelper.getActivityIdsForCategory(category));
        HashSet<String> otherEnabledCategories = new HashSet<String>();
        Set definedCategoryIds = activityManager.getDefinedCategoryIds();
        Iterator i = definedCategoryIds.iterator();
        while (i.hasNext()) {
            String otherCategoryId = (String)i.next();
            if (otherCategoryId.equals(categoryId)) continue;
            ICategory otherCategory = activityManager.getCategory(otherCategoryId);
            Set otherCategoryActivityIds = WorkbenchActivityHelper.expandActivityDependencies(WorkbenchActivityHelper.getActivityIdsForCategory(otherCategory));
            if (activityManager.getEnabledActivityIds().containsAll(otherCategoryActivityIds) || !activities.containsAll(otherCategoryActivityIds)) continue;
            otherEnabledCategories.add(otherCategoryId);
        }
        return otherEnabledCategories;
    }

    public static Set expandActivityDependencies(Set baseActivities) {
        HashSet extendedActivities = new HashSet();
        Iterator i = baseActivities.iterator();
        while (i.hasNext()) {
            String activityId = (String)i.next();
            Set requiredActivities = WorkbenchActivityHelper.getRequiredActivityIds(activityId);
            extendedActivities.addAll(requiredActivities);
        }
        extendedActivities.addAll(baseActivities);
        return extendedActivities;
    }

    public static Set getRequiredActivityIds(String activityId) {
        IActivityManager manager = PlatformUI.getWorkbench().getActivitySupport().getActivityManager();
        IActivity activity = manager.getActivity(activityId);
        if (!activity.isDefined()) {
            return Collections.EMPTY_SET;
        }
        Set requirementBindings = activity.getActivityRequirementBindings();
        if (requirementBindings.isEmpty()) {
            return Collections.EMPTY_SET;
        }
        HashSet<String> requiredActivities = new HashSet<String>(3);
        Iterator i = requirementBindings.iterator();
        while (i.hasNext()) {
            IActivityRequirementBinding binding = (IActivityRequirementBinding)i.next();
            requiredActivities.add(binding.getRequiredActivityId());
            requiredActivities.addAll(WorkbenchActivityHelper.getRequiredActivityIds(binding.getRequiredActivityId()));
        }
        return requiredActivities;
    }

    public static Set getActivityIdsForCategory(ICategory category) {
        Set bindings = category.getCategoryActivityBindings();
        HashSet<String> activityIds = new HashSet<String>();
        Iterator i = bindings.iterator();
        while (i.hasNext()) {
            ICategoryActivityBinding binding = (ICategoryActivityBinding)i.next();
            activityIds.add(binding.getActivityId());
        }
        return activityIds;
    }

    public static Set getDisabledCategories(IActivityManager activityManager, String categoryId) {
        ICategory category = activityManager.getCategory(categoryId);
        if (!category.isDefined()) {
            return Collections.EMPTY_SET;
        }
        Set activities = WorkbenchActivityHelper.expandActivityDependencies(WorkbenchActivityHelper.getActivityIdsForCategory(category));
        HashSet<String> otherDisabledCategories = new HashSet<String>();
        Set definedCategoryIds = activityManager.getDefinedCategoryIds();
        Iterator i = definedCategoryIds.iterator();
        while (i.hasNext()) {
            ICategory otherCategory;
            Set otherCategoryActivityIds;
            String otherCategoryId = (String)i.next();
            if (otherCategoryId.equals(categoryId) || (otherCategoryActivityIds = WorkbenchActivityHelper.expandActivityDependencies(WorkbenchActivityHelper.getActivityIdsForCategory(otherCategory = activityManager.getCategory(otherCategoryId)))).isEmpty() || !activities.containsAll(otherCategoryActivityIds) || !activityManager.getEnabledActivityIds().containsAll(otherCategoryActivityIds)) continue;
            otherDisabledCategories.add(otherCategoryId);
        }
        return otherDisabledCategories;
    }

    public static final Set getContainedCategories(IActivityManager activityManager, String categoryId) {
        ICategory category = activityManager.getCategory(categoryId);
        if (!category.isDefined()) {
            return Collections.EMPTY_SET;
        }
        Set activities = WorkbenchActivityHelper.expandActivityDependencies(WorkbenchActivityHelper.getActivityIdsForCategory(category));
        HashSet<String> containedCategories = new HashSet<String>();
        Set definedCategoryIds = activityManager.getDefinedCategoryIds();
        Iterator i = definedCategoryIds.iterator();
        while (i.hasNext()) {
            ICategory otherCategory;
            Set otherCategoryActivityIds;
            String otherCategoryId = (String)i.next();
            if (otherCategoryId.equals(categoryId) || (otherCategoryActivityIds = WorkbenchActivityHelper.expandActivityDependencies(WorkbenchActivityHelper.getActivityIdsForCategory(otherCategory = activityManager.getCategory(otherCategoryId)))).isEmpty() || !activities.containsAll(otherCategoryActivityIds)) continue;
            containedCategories.add(otherCategoryId);
        }
        return containedCategories;
    }

    public static Set getEnabledCategories(IActivityManager activityManager) {
        Set definedCategoryIds = activityManager.getDefinedCategoryIds();
        HashSet<String> enabledCategories = new HashSet<String>();
        Iterator i = definedCategoryIds.iterator();
        while (i.hasNext()) {
            String categoryId = (String)i.next();
            if (!WorkbenchActivityHelper.isEnabled(activityManager, categoryId)) continue;
            enabledCategories.add(categoryId);
        }
        return enabledCategories;
    }

    public static Set getPartiallyEnabledCategories(IActivityManager activityManager) {
        Set definedCategoryIds = activityManager.getDefinedCategoryIds();
        HashSet<String> partialCategories = new HashSet<String>();
        Iterator i = definedCategoryIds.iterator();
        while (i.hasNext()) {
            String categoryId = (String)i.next();
            if (!WorkbenchActivityHelper.isPartiallyEnabled(activityManager, categoryId)) continue;
            partialCategories.add(categoryId);
        }
        return partialCategories;
    }

    public static boolean isPartiallyEnabled(IActivityManager activityManager, String categoryId) {
        Set activityIds = WorkbenchActivityHelper.getActivityIdsForCategory(activityManager.getCategory(categoryId));
        int foundCount = 0;
        Iterator i = activityIds.iterator();
        while (i.hasNext()) {
            String activityId = (String)i.next();
            if (!activityManager.getEnabledActivityIds().contains(activityId)) continue;
            ++foundCount;
        }
        return foundCount > 0 && foundCount != activityIds.size();
    }

    public static Set getEnabledCategoriesForActivity(IActivityManager activityManager, String activityId) {
        HashSet<String> enabledCategoriesForActivity = new HashSet<String>();
        Set enabledCategories = WorkbenchActivityHelper.getEnabledCategories(activityManager);
        Iterator i = enabledCategories.iterator();
        while (i.hasNext()) {
            String categoryId = (String)i.next();
            if (!WorkbenchActivityHelper.getActivityIdsForCategory(activityManager.getCategory(categoryId)).contains(activityId)) continue;
            enabledCategoriesForActivity.add(categoryId);
        }
        return enabledCategoriesForActivity;
    }

    public static boolean isEnabled(IActivityManager activityManager, String categoryId) {
        ICategory category = activityManager.getCategory(categoryId);
        if (category.isDefined()) {
            Set activityIds = WorkbenchActivityHelper.getActivityIdsForCategory(category);
            if (activityManager.getEnabledActivityIds().containsAll(activityIds)) {
                return true;
            }
        }
        return false;
    }

    public static ICategory[] resolveCategories(IMutableActivityManager activityManager, Set categoryIds) {
        ICategory[] categories = new ICategory[categoryIds.size()];
        String[] categoryIdArray = categoryIds.toArray(new String[categoryIds.size()]);
        int i = 0;
        while (i < categoryIdArray.length) {
            categories[i] = activityManager.getCategory(categoryIdArray[i]);
            ++i;
        }
        return categories;
    }

    public static Collection restrictCollection(Collection toBeFiltered, Collection result) {
        Iterator iterator = toBeFiltered.iterator();
        while (iterator.hasNext()) {
            Object item = iterator.next();
            if (WorkbenchActivityHelper.restrictUseOf(item)) continue;
            result.add(item);
        }
        return result;
    }

    public static Object[] restrictArray(Object[] array) {
        ArrayList<Object> list = new ArrayList<Object>(array.length);
        int i = 0;
        while (i < array.length) {
            if (!WorkbenchActivityHelper.restrictUseOf(array[i])) {
                list.add(array[i]);
            }
            ++i;
        }
        return list.toArray((Object[])Array.newInstance(array.getClass().getComponentType(), list.size()));
    }

    public static Collection filterCollection(Collection toBeFiltered, Collection result) {
        Iterator iterator = toBeFiltered.iterator();
        while (iterator.hasNext()) {
            Object item = iterator.next();
            if (WorkbenchActivityHelper.filterItem(item)) continue;
            result.add(item);
        }
        return result;
    }

    public static Object[] filterArray(Object[] array) {
        ArrayList<Object> list = new ArrayList<Object>(array.length);
        int i = 0;
        while (i < array.length) {
            if (!WorkbenchActivityHelper.filterItem(array[i])) {
                list.add(array[i]);
            }
            ++i;
        }
        return list.toArray((Object[])Array.newInstance(array.getClass().getComponentType(), list.size()));
    }

    private WorkbenchActivityHelper() {
    }
}

