/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.activities;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.ui.activities.IActivityManager;
import org.eclipse.ui.activities.ICategory;
import org.eclipse.ui.activities.ICategoryActivityBinding;

public final class InternalActivityHelper {
    public static Set getActivityIdsForCategory(IActivityManager activityManager, ICategory category) {
        Set bindings = category.getCategoryActivityBindings();
        HashSet<String> activityIds = new HashSet<String>();
        Iterator i = bindings.iterator();
        while (i.hasNext()) {
            ICategoryActivityBinding binding = (ICategoryActivityBinding)i.next();
            String id = binding.getActivityId();
            if (activityManager.getActivity(id).getExpression() != null) continue;
            activityIds.add(id);
        }
        return activityIds;
    }

    private static boolean isEnabled(IActivityManager activityManager, String categoryId) {
        ICategory category = activityManager.getCategory(categoryId);
        if (category.isDefined()) {
            Set activityIds = InternalActivityHelper.getActivityIdsForCategory(activityManager, category);
            if (activityManager.getEnabledActivityIds().containsAll(activityIds)) {
                return true;
            }
        }
        return false;
    }

    public static Set getEnabledCategories(IActivityManager activityManager) {
        Set definedCategoryIds = activityManager.getDefinedCategoryIds();
        HashSet<String> enabledCategories = new HashSet<String>();
        Iterator i = definedCategoryIds.iterator();
        while (i.hasNext()) {
            String categoryId = (String)i.next();
            if (!InternalActivityHelper.isEnabled(activityManager, categoryId)) continue;
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
            if (!InternalActivityHelper.isPartiallyEnabled(activityManager, categoryId)) continue;
            partialCategories.add(categoryId);
        }
        return partialCategories;
    }

    private static boolean isPartiallyEnabled(IActivityManager activityManager, String categoryId) {
        Set activityIds = InternalActivityHelper.getActivityIdsForCategory(activityManager, activityManager.getCategory(categoryId));
        int foundCount = 0;
        Iterator i = activityIds.iterator();
        while (i.hasNext()) {
            String activityId = (String)i.next();
            if (!activityManager.getEnabledActivityIds().contains(activityId)) continue;
            ++foundCount;
        }
        return foundCount > 0 && foundCount != activityIds.size();
    }
}

