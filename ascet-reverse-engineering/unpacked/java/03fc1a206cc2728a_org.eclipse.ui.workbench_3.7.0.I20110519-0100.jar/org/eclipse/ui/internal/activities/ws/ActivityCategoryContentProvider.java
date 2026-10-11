/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.ITreeContentProvider
 *  org.eclipse.jface.viewers.Viewer
 */
package org.eclipse.ui.internal.activities.ws;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.jface.viewers.ITreeContentProvider;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.ui.activities.IActivity;
import org.eclipse.ui.activities.IActivityManager;
import org.eclipse.ui.activities.IActivityRequirementBinding;
import org.eclipse.ui.activities.ICategory;
import org.eclipse.ui.internal.activities.InternalActivityHelper;
import org.eclipse.ui.internal.activities.ws.CategorizedActivity;

public class ActivityCategoryContentProvider
implements ITreeContentProvider {
    private IActivityManager manager;

    public void dispose() {
        this.manager = null;
    }

    private IActivity[] getCategoryActivities(ICategory category) {
        Set activityIds = InternalActivityHelper.getActivityIdsForCategory(this.manager, category);
        ArrayList<CategorizedActivity> categoryActivities = new ArrayList<CategorizedActivity>(activityIds.size());
        Iterator i = activityIds.iterator();
        while (i.hasNext()) {
            String activityId = (String)i.next();
            categoryActivities.add(new CategorizedActivity(category, this.manager.getActivity(activityId)));
        }
        return categoryActivities.toArray(new IActivity[categoryActivities.size()]);
    }

    public Object[] getDuplicateCategoryActivities(CategorizedActivity categorizedActivity) {
        ArrayList<CategorizedActivity> duplicateCategorizedactivities = new ArrayList<CategorizedActivity>();
        Set categoryIds = this.manager.getDefinedCategoryIds();
        ICategory currentCategory = null;
        String currentActivityId = null;
        IActivity[] categoryActivities = null;
        String currentCategoryId = null;
        Iterator i = categoryIds.iterator();
        block0: while (i.hasNext()) {
            currentCategoryId = (String)i.next();
            if (currentCategoryId.equals(categorizedActivity.getCategory().getId())) continue;
            currentCategory = this.manager.getCategory(currentCategoryId);
            categoryActivities = this.getCategoryActivities(currentCategory);
            int index = 0;
            while (index < categoryActivities.length) {
                currentActivityId = categoryActivities[index].getId();
                if (currentActivityId.equals(categorizedActivity.getActivity().getId())) {
                    duplicateCategorizedactivities.add(new CategorizedActivity(currentCategory, this.manager.getActivity(currentActivityId)));
                    continue block0;
                }
                ++index;
            }
        }
        return duplicateCategorizedactivities.toArray();
    }

    public Object[] getChildRequiredActivities(String activityId) {
        ArrayList<CategorizedActivity> childRequiredActivities = new ArrayList<CategorizedActivity>();
        IActivity activity = this.manager.getActivity(activityId);
        Set actvitiyRequirementBindings = activity.getActivityRequirementBindings();
        String requiredActivityId = null;
        IActivityRequirementBinding currentActivityRequirementBinding = null;
        Object[] currentCategoryIds = null;
        Iterator i = actvitiyRequirementBindings.iterator();
        while (i.hasNext()) {
            currentActivityRequirementBinding = (IActivityRequirementBinding)i.next();
            requiredActivityId = currentActivityRequirementBinding.getRequiredActivityId();
            currentCategoryIds = this.getActivityCategories(requiredActivityId);
            int index = 0;
            while (index < currentCategoryIds.length) {
                childRequiredActivities.add(new CategorizedActivity(this.manager.getCategory((String)currentCategoryIds[index]), this.manager.getActivity(requiredActivityId)));
                ++index;
            }
        }
        return childRequiredActivities.toArray();
    }

    public Object[] getParentRequiredActivities(String activityId) {
        ArrayList<CategorizedActivity> parentRequiredActivities = new ArrayList<CategorizedActivity>();
        Set definedActivities = this.manager.getDefinedActivityIds();
        String currentActivityId = null;
        Set activityRequirementBindings = null;
        IActivityRequirementBinding currentActivityRequirementBinding = null;
        Object[] currentCategoryIds = null;
        Iterator i = definedActivities.iterator();
        while (i.hasNext()) {
            currentActivityId = (String)i.next();
            activityRequirementBindings = this.manager.getActivity(currentActivityId).getActivityRequirementBindings();
            Iterator j = activityRequirementBindings.iterator();
            while (j.hasNext()) {
                currentActivityRequirementBinding = (IActivityRequirementBinding)j.next();
                if (!currentActivityRequirementBinding.getRequiredActivityId().equals(activityId)) continue;
                currentCategoryIds = this.getActivityCategories(currentActivityId);
                int index = 0;
                while (index < currentCategoryIds.length) {
                    parentRequiredActivities.add(new CategorizedActivity(this.manager.getCategory((String)currentCategoryIds[index]), this.manager.getActivity(currentActivityId)));
                    ++index;
                }
            }
        }
        return parentRequiredActivities.toArray();
    }

    private Object[] getActivityCategories(String activityId) {
        ArrayList<String> activityCategories = new ArrayList<String>();
        Set categoryIds = this.manager.getDefinedCategoryIds();
        String currentCategoryId = null;
        IActivity[] categoryActivities = null;
        Iterator i = categoryIds.iterator();
        block0: while (i.hasNext()) {
            currentCategoryId = (String)i.next();
            categoryActivities = this.getCategoryActivities(this.manager.getCategory(currentCategoryId));
            int index = 0;
            while (index < categoryActivities.length) {
                if (categoryActivities[index].getId().equals(activityId)) {
                    activityCategories.add(currentCategoryId);
                    continue block0;
                }
                ++index;
            }
        }
        return activityCategories.toArray();
    }

    public Object[] getChildren(Object parentElement) {
        if (parentElement instanceof IActivityManager) {
            Set categoryIds = this.manager.getDefinedCategoryIds();
            ArrayList<ICategory> categories = new ArrayList<ICategory>(categoryIds.size());
            Iterator i = categoryIds.iterator();
            while (i.hasNext()) {
                String categoryId = (String)i.next();
                ICategory category = this.manager.getCategory(categoryId);
                if (this.getCategoryActivities(category).length <= 0) continue;
                categories.add(category);
            }
            return categories.toArray();
        }
        if (parentElement instanceof ICategory) {
            return this.getCategoryActivities((ICategory)parentElement);
        }
        return new Object[0];
    }

    public Object[] getElements(Object inputElement) {
        return this.getChildren(inputElement);
    }

    public Object getParent(Object element) {
        if (element instanceof CategorizedActivity) {
            return ((CategorizedActivity)element).getCategory();
        }
        return null;
    }

    public boolean hasChildren(Object element) {
        return element instanceof IActivityManager || element instanceof ICategory;
    }

    public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {
        this.manager = (IActivityManager)newInput;
    }
}

