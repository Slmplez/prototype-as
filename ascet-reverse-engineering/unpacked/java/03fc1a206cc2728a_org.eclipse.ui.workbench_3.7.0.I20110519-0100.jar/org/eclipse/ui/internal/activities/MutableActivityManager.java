/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 */
package org.eclipse.ui.internal.activities;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.activities.ActivityEvent;
import org.eclipse.ui.activities.ActivityManagerEvent;
import org.eclipse.ui.activities.CategoryEvent;
import org.eclipse.ui.activities.IActivity;
import org.eclipse.ui.activities.IActivityRequirementBinding;
import org.eclipse.ui.activities.ICategory;
import org.eclipse.ui.activities.IIdentifier;
import org.eclipse.ui.activities.IMutableActivityManager;
import org.eclipse.ui.activities.ITriggerPointAdvisor;
import org.eclipse.ui.activities.IdentifierEvent;
import org.eclipse.ui.internal.activities.AbstractActivityManager;
import org.eclipse.ui.internal.activities.Activity;
import org.eclipse.ui.internal.activities.ActivityDefinition;
import org.eclipse.ui.internal.activities.ActivityPatternBinding;
import org.eclipse.ui.internal.activities.ActivityPatternBindingDefinition;
import org.eclipse.ui.internal.activities.ActivityRegistryEvent;
import org.eclipse.ui.internal.activities.ActivityRequirementBinding;
import org.eclipse.ui.internal.activities.ActivityRequirementBindingDefinition;
import org.eclipse.ui.internal.activities.Category;
import org.eclipse.ui.internal.activities.CategoryActivityBinding;
import org.eclipse.ui.internal.activities.CategoryActivityBindingDefinition;
import org.eclipse.ui.internal.activities.CategoryDefinition;
import org.eclipse.ui.internal.activities.ExtensionActivityRegistry;
import org.eclipse.ui.internal.activities.IActivityRegistry;
import org.eclipse.ui.internal.activities.IActivityRegistryListener;
import org.eclipse.ui.internal.activities.Identifier;
import org.eclipse.ui.progress.UIJob;
import org.eclipse.ui.services.IEvaluationReference;
import org.eclipse.ui.services.IEvaluationService;

public final class MutableActivityManager
extends AbstractActivityManager
implements IMutableActivityManager,
Cloneable {
    private Map activitiesById = new HashMap();
    private Map activityRequirementBindingsByActivityId = new HashMap();
    private Map activityDefinitionsById = new HashMap();
    private Map activityPatternBindingsByActivityId = new HashMap();
    private IActivityRegistry activityRegistry;
    private Map categoriesById = new HashMap();
    private Map categoryActivityBindingsByCategoryId = new HashMap();
    private Map categoryDefinitionsById = new HashMap();
    private Set definedActivityIds = new HashSet();
    private Set definedCategoryIds = new HashSet();
    private Set enabledActivityIds = new HashSet();
    private Map identifiersById = new HashMap();
    private boolean addingEvaluationListener = false;
    private List deferredIdentifiers = Collections.synchronizedList(new LinkedList());
    private Job deferredIdentifierJob = null;
    private final IActivityRegistryListener activityRegistryListener = new IActivityRegistryListener(){

        public void activityRegistryChanged(ActivityRegistryEvent activityRegistryEvent) {
            MutableActivityManager.this.readRegistry(false);
        }
    };
    private Map refsByActivityDefinition = new HashMap();
    private IPropertyChangeListener enabledWhenListener = new IPropertyChangeListener(){

        public void propertyChange(PropertyChangeEvent event) {
            if (MutableActivityManager.this.addingEvaluationListener) {
                return;
            }
            Object nv = event.getNewValue();
            boolean enabledWhen = nv == null ? false : (Boolean)nv;
            String id = event.getProperty();
            IActivity activity = (IActivity)MutableActivityManager.this.activitiesById.get(id);
            if (activity.isEnabled() != enabledWhen) {
                if (enabledWhen) {
                    MutableActivityManager.this.addExpressionEnabledActivity(id);
                } else {
                    MutableActivityManager.this.removeExpressionEnabledActivity(id);
                }
            }
        }
    };
    private ITriggerPointAdvisor advisor;
    static /* synthetic */ Class class$0;

    public MutableActivityManager(ITriggerPointAdvisor triggerPointAdvisor) {
        this(triggerPointAdvisor, new ExtensionActivityRegistry(Platform.getExtensionRegistry()));
    }

    public MutableActivityManager(ITriggerPointAdvisor triggerPointAdvisor, IActivityRegistry activityRegistry) {
        Assert.isNotNull((Object)activityRegistry);
        Assert.isNotNull((Object)triggerPointAdvisor);
        this.advisor = triggerPointAdvisor;
        this.activityRegistry = activityRegistry;
        this.activityRegistry.addActivityRegistryListener(this.activityRegistryListener);
        this.readRegistry(true);
    }

    public synchronized IActivity getActivity(String activityId) {
        if (activityId == null) {
            throw new NullPointerException();
        }
        Activity activity = (Activity)this.activitiesById.get(activityId);
        if (activity == null) {
            activity = new Activity(activityId);
            this.updateActivity(activity);
            this.activitiesById.put(activityId, activity);
        }
        return activity;
    }

    public synchronized ICategory getCategory(String categoryId) {
        if (categoryId == null) {
            throw new NullPointerException();
        }
        Category category = (Category)this.categoriesById.get(categoryId);
        if (category == null) {
            category = new Category(categoryId);
            this.updateCategory(category);
            this.categoriesById.put(categoryId, category);
        }
        return category;
    }

    public synchronized Set getDefinedActivityIds() {
        return Collections.unmodifiableSet(this.definedActivityIds);
    }

    public synchronized Set getDefinedCategoryIds() {
        return Collections.unmodifiableSet(this.definedCategoryIds);
    }

    public synchronized Set getEnabledActivityIds() {
        return Collections.unmodifiableSet(this.enabledActivityIds);
    }

    public synchronized IIdentifier getIdentifier(String identifierId) {
        if (identifierId == null) {
            throw new NullPointerException();
        }
        Identifier identifier = (Identifier)this.identifiersById.get(identifierId);
        if (identifier == null) {
            identifier = new Identifier(identifierId);
            this.updateIdentifier(identifier);
            this.identifiersById.put(identifierId, identifier);
        }
        return identifier;
    }

    private void getRequiredActivityIds(Set activityIds, Set requiredActivityIds) {
        Iterator iterator = activityIds.iterator();
        while (iterator.hasNext()) {
            String activityId = (String)iterator.next();
            IActivity activity = this.getActivity(activityId);
            HashSet<String> childActivityIds = new HashSet<String>();
            Set activityRequirementBindings = activity.getActivityRequirementBindings();
            Iterator iterator2 = activityRequirementBindings.iterator();
            while (iterator2.hasNext()) {
                IActivityRequirementBinding activityRequirementBinding = (IActivityRequirementBinding)iterator2.next();
                childActivityIds.add(activityRequirementBinding.getRequiredActivityId());
            }
            childActivityIds.removeAll(requiredActivityIds);
            requiredActivityIds.addAll(childActivityIds);
            this.getRequiredActivityIds(childActivityIds, requiredActivityIds);
        }
    }

    private void notifyActivities(Map activityEventsByActivityId) {
        Iterator iterator = activityEventsByActivityId.entrySet().iterator();
        while (iterator.hasNext()) {
            Map.Entry entry = iterator.next();
            String activityId = (String)entry.getKey();
            ActivityEvent activityEvent = (ActivityEvent)entry.getValue();
            Activity activity = (Activity)this.activitiesById.get(activityId);
            if (activity == null) continue;
            activity.fireActivityChanged(activityEvent);
        }
    }

    private void notifyCategories(Map categoryEventsByCategoryId) {
        Iterator iterator = categoryEventsByCategoryId.entrySet().iterator();
        while (iterator.hasNext()) {
            Map.Entry entry = iterator.next();
            String categoryId = (String)entry.getKey();
            CategoryEvent categoryEvent = (CategoryEvent)entry.getValue();
            Category category = (Category)this.categoriesById.get(categoryId);
            if (category == null) continue;
            category.fireCategoryChanged(categoryEvent);
        }
    }

    private void notifyIdentifiers(Map identifierEventsByIdentifierId) {
        Iterator iterator = identifierEventsByIdentifierId.entrySet().iterator();
        while (iterator.hasNext()) {
            Map.Entry entry = iterator.next();
            String identifierId = (String)entry.getKey();
            IdentifierEvent identifierEvent = (IdentifierEvent)entry.getValue();
            Identifier identifier = (Identifier)this.identifiersById.get(identifierId);
            if (identifier == null) continue;
            identifier.fireIdentifierChanged(identifierEvent);
        }
    }

    private void readRegistry(boolean setDefaults) {
        if (!this.isRegexpSupported()) {
            return;
        }
        this.clearExpressions();
        ArrayList activityDefinitions = new ArrayList();
        activityDefinitions.addAll(this.activityRegistry.getActivityDefinitions());
        HashMap activityDefinitionsById = new HashMap(ActivityDefinition.activityDefinitionsById(activityDefinitions, false));
        Iterator iterator = activityDefinitionsById.values().iterator();
        while (iterator.hasNext()) {
            ActivityDefinition activityDefinition = (ActivityDefinition)iterator.next();
            String name = activityDefinition.getName();
            if (name != null && name.length() != 0) continue;
            iterator.remove();
        }
        ArrayList categoryDefinitions = new ArrayList();
        categoryDefinitions.addAll(this.activityRegistry.getCategoryDefinitions());
        HashMap categoryDefinitionsById = new HashMap(CategoryDefinition.categoryDefinitionsById(categoryDefinitions, false));
        Iterator iterator2 = categoryDefinitionsById.values().iterator();
        while (iterator2.hasNext()) {
            CategoryDefinition categoryDefinition = (CategoryDefinition)iterator2.next();
            String name = categoryDefinition.getName();
            if (name != null && name.length() != 0) continue;
            iterator2.remove();
        }
        Map activityRequirementBindingDefinitionsByActivityId = ActivityRequirementBindingDefinition.activityRequirementBindingDefinitionsByActivityId(this.activityRegistry.getActivityRequirementBindingDefinitions());
        HashMap<String, HashSet<ActivityRequirementBinding>> activityRequirementBindingsByActivityId = new HashMap<String, HashSet<ActivityRequirementBinding>>();
        Iterator iterator3 = activityRequirementBindingDefinitionsByActivityId.entrySet().iterator();
        while (iterator3.hasNext()) {
            Collection activityRequirementBindingDefinitions;
            Map.Entry entry = iterator3.next();
            String parentActivityId = (String)entry.getKey();
            if (!activityDefinitionsById.containsKey(parentActivityId) || (activityRequirementBindingDefinitions = (Collection)entry.getValue()) == null) continue;
            Iterator iterator22 = activityRequirementBindingDefinitions.iterator();
            while (iterator22.hasNext()) {
                ActivityRequirementBindingDefinition activityRequirementBindingDefinition = (ActivityRequirementBindingDefinition)iterator22.next();
                String childActivityId = activityRequirementBindingDefinition.getRequiredActivityId();
                if (!activityDefinitionsById.containsKey(childActivityId)) continue;
                ActivityRequirementBinding activityRequirementBinding = new ActivityRequirementBinding(childActivityId, parentActivityId);
                HashSet<ActivityRequirementBinding> activityRequirementBindings = (HashSet<ActivityRequirementBinding>)activityRequirementBindingsByActivityId.get(parentActivityId);
                if (activityRequirementBindings == null) {
                    activityRequirementBindings = new HashSet<ActivityRequirementBinding>();
                    activityRequirementBindingsByActivityId.put(parentActivityId, activityRequirementBindings);
                }
                activityRequirementBindings.add(activityRequirementBinding);
            }
        }
        Map activityPatternBindingDefinitionsByActivityId = ActivityPatternBindingDefinition.activityPatternBindingDefinitionsByActivityId(this.activityRegistry.getActivityPatternBindingDefinitions());
        HashMap<String, HashSet<ActivityPatternBinding>> activityPatternBindingsByActivityId = new HashMap<String, HashSet<ActivityPatternBinding>>();
        Iterator iterator4 = activityPatternBindingDefinitionsByActivityId.entrySet().iterator();
        while (iterator4.hasNext()) {
            Collection activityPatternBindingDefinitions;
            Map.Entry entry = iterator4.next();
            String activityId = (String)entry.getKey();
            if (!activityDefinitionsById.containsKey(activityId) || (activityPatternBindingDefinitions = (Collection)entry.getValue()) == null) continue;
            Iterator iterator23 = activityPatternBindingDefinitions.iterator();
            while (iterator23.hasNext()) {
                ActivityPatternBindingDefinition activityPatternBindingDefinition = (ActivityPatternBindingDefinition)iterator23.next();
                String pattern = activityPatternBindingDefinition.getPattern();
                if (pattern == null || pattern.length() == 0) continue;
                ActivityPatternBinding activityPatternBinding = new ActivityPatternBinding(activityId, pattern, activityPatternBindingDefinition.isEqualityPattern());
                HashSet<ActivityPatternBinding> activityPatternBindings = (HashSet<ActivityPatternBinding>)activityPatternBindingsByActivityId.get(activityId);
                if (activityPatternBindings == null) {
                    activityPatternBindings = new HashSet<ActivityPatternBinding>();
                    activityPatternBindingsByActivityId.put(activityId, activityPatternBindings);
                }
                activityPatternBindings.add(activityPatternBinding);
            }
        }
        Map categoryActivityBindingDefinitionsByCategoryId = CategoryActivityBindingDefinition.categoryActivityBindingDefinitionsByCategoryId(this.activityRegistry.getCategoryActivityBindingDefinitions());
        HashMap<String, HashSet<CategoryActivityBinding>> categoryActivityBindingsByCategoryId = new HashMap<String, HashSet<CategoryActivityBinding>>();
        Iterator iterator5 = categoryActivityBindingDefinitionsByCategoryId.entrySet().iterator();
        while (iterator5.hasNext()) {
            Collection categoryActivityBindingDefinitions;
            Map.Entry entry = iterator5.next();
            String categoryId = (String)entry.getKey();
            if (!categoryDefinitionsById.containsKey(categoryId) || (categoryActivityBindingDefinitions = (Collection)entry.getValue()) == null) continue;
            Iterator iterator24 = categoryActivityBindingDefinitions.iterator();
            while (iterator24.hasNext()) {
                CategoryActivityBindingDefinition categoryActivityBindingDefinition = (CategoryActivityBindingDefinition)iterator24.next();
                String activityId = categoryActivityBindingDefinition.getActivityId();
                if (!activityDefinitionsById.containsKey(activityId)) continue;
                CategoryActivityBinding categoryActivityBinding = new CategoryActivityBinding(activityId, categoryId);
                HashSet<CategoryActivityBinding> categoryActivityBindings = (HashSet<CategoryActivityBinding>)categoryActivityBindingsByCategoryId.get(categoryId);
                if (categoryActivityBindings == null) {
                    categoryActivityBindings = new HashSet<CategoryActivityBinding>();
                    categoryActivityBindingsByCategoryId.put(categoryId, categoryActivityBindings);
                }
                categoryActivityBindings.add(categoryActivityBinding);
            }
        }
        this.activityRequirementBindingsByActivityId = activityRequirementBindingsByActivityId;
        this.activityDefinitionsById = activityDefinitionsById;
        this.activityPatternBindingsByActivityId = activityPatternBindingsByActivityId;
        this.categoryActivityBindingsByCategoryId = categoryActivityBindingsByCategoryId;
        this.categoryDefinitionsById = categoryDefinitionsById;
        boolean definedActivityIdsChanged = false;
        HashSet definedActivityIds = new HashSet(activityDefinitionsById.keySet());
        Set previouslyDefinedActivityIds = null;
        if (!definedActivityIds.equals(this.definedActivityIds)) {
            previouslyDefinedActivityIds = this.definedActivityIds;
            this.definedActivityIds = definedActivityIds;
            definedActivityIdsChanged = true;
        }
        boolean definedCategoryIdsChanged = false;
        HashSet definedCategoryIds = new HashSet(categoryDefinitionsById.keySet());
        Set previouslyDefinedCategoryIds = null;
        if (!definedCategoryIds.equals(this.definedCategoryIds)) {
            previouslyDefinedCategoryIds = this.definedCategoryIds;
            this.definedCategoryIds = definedCategoryIds;
            definedCategoryIdsChanged = true;
        }
        HashSet enabledActivityIds = new HashSet(this.enabledActivityIds);
        this.getRequiredActivityIds(this.enabledActivityIds, enabledActivityIds);
        boolean enabledActivityIdsChanged = false;
        Set previouslyEnabledActivityIds = null;
        if (!this.enabledActivityIds.equals(enabledActivityIds)) {
            previouslyEnabledActivityIds = this.enabledActivityIds;
            this.enabledActivityIds = enabledActivityIds;
            enabledActivityIdsChanged = true;
        }
        Map activityEventsByActivityId = this.updateActivities(this.activitiesById.keySet());
        Map categoryEventsByCategoryId = this.updateCategories(this.categoriesById.keySet());
        Map identifierEventsByIdentifierId = this.updateIdentifiers(this.identifiersById.keySet());
        if (definedActivityIdsChanged || definedCategoryIdsChanged || enabledActivityIdsChanged) {
            this.fireActivityManagerChanged(new ActivityManagerEvent(this, definedActivityIdsChanged, definedCategoryIdsChanged, enabledActivityIdsChanged, previouslyDefinedActivityIds, previouslyDefinedCategoryIds, previouslyEnabledActivityIds));
        }
        if (activityEventsByActivityId != null) {
            this.notifyActivities(activityEventsByActivityId);
        }
        if (categoryEventsByCategoryId != null) {
            this.notifyCategories(categoryEventsByCategoryId);
        }
        if (identifierEventsByIdentifierId != null) {
            this.notifyIdentifiers(identifierEventsByIdentifierId);
        }
        if (setDefaults) {
            this.setEnabledActivityIds(new HashSet(this.activityRegistry.getDefaultEnabledActivities()));
        }
    }

    private void clearExpressions() {
        IWorkbench iWorkbench = PlatformUI.getWorkbench();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.services.IEvaluationService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IEvaluationService evaluationService = (IEvaluationService)iWorkbench.getService(clazz);
        Iterator i = this.refsByActivityDefinition.values().iterator();
        while (i.hasNext()) {
            IEvaluationReference ref = (IEvaluationReference)i.next();
            evaluationService.removeEvaluationListener(ref);
        }
        this.refsByActivityDefinition.clear();
    }

    private boolean isRegexpSupported() {
        try {
            Class.forName("java.util.regex.Pattern");
            return true;
        }
        catch (Exception exception) {
            return false;
        }
    }

    public synchronized void setEnabledActivityIds(Set enabledActivityIds) {
        enabledActivityIds = new HashSet(enabledActivityIds);
        HashSet requiredActivityIds = new HashSet(enabledActivityIds);
        this.getRequiredActivityIds(enabledActivityIds, requiredActivityIds);
        enabledActivityIds = requiredActivityIds;
        HashSet deltaActivityIds = null;
        boolean activityManagerChanged = false;
        Map activityEventsByActivityId = null;
        Set previouslyEnabledActivityIds = null;
        if (!this.enabledActivityIds.equals(enabledActivityIds)) {
            previouslyEnabledActivityIds = this.enabledActivityIds;
            activityManagerChanged = true;
            HashSet additions = new HashSet(enabledActivityIds);
            additions.removeAll(previouslyEnabledActivityIds);
            HashSet removals = new HashSet(previouslyEnabledActivityIds);
            removals.removeAll(enabledActivityIds);
            this.removeExpressionControlledActivities(additions);
            this.removeExpressionControlledActivities(removals);
            deltaActivityIds = new HashSet(additions);
            deltaActivityIds.addAll(removals);
            if (deltaActivityIds.size() > 0) {
                enabledActivityIds.addAll(additions);
                enabledActivityIds.removeAll(removals);
                this.enabledActivityIds = enabledActivityIds;
                activityEventsByActivityId = this.updateActivities(deltaActivityIds);
            } else {
                return;
            }
        }
        this.updateListeners(activityManagerChanged, activityEventsByActivityId, deltaActivityIds, previouslyEnabledActivityIds);
    }

    private void updateListeners(boolean activityManagerChanged, Map activityEventsByActivityId, Set deltaActivityIds, Set previouslyEnabledActivityIds) {
        Map identifierEventsByIdentifierId;
        if (activityManagerChanged && (identifierEventsByIdentifierId = this.updateIdentifiers(this.identifiersById.keySet(), deltaActivityIds)) != null) {
            this.notifyIdentifiers(identifierEventsByIdentifierId);
        }
        if (activityEventsByActivityId != null) {
            this.notifyActivities(activityEventsByActivityId);
        }
        if (activityManagerChanged) {
            this.fireActivityManagerChanged(new ActivityManagerEvent(this, false, false, true, null, null, previouslyEnabledActivityIds));
        }
    }

    private void addExpressionEnabledActivity(String id) {
        HashSet previouslyEnabledActivityIds = new HashSet(this.enabledActivityIds);
        this.enabledActivityIds.add(id);
        this.updateExpressionEnabledActivities(id, previouslyEnabledActivityIds);
    }

    private void removeExpressionEnabledActivity(String id) {
        HashSet previouslyEnabledActivityIds = new HashSet(this.enabledActivityIds);
        this.enabledActivityIds.remove(id);
        this.updateExpressionEnabledActivities(id, previouslyEnabledActivityIds);
    }

    private void updateExpressionEnabledActivities(String id, Set previouslyEnabledActivityIds) {
        HashSet<String> deltaActivityIds = new HashSet<String>();
        deltaActivityIds.add(id);
        Map activityEventsByActivityId = this.updateActivities(deltaActivityIds);
        this.updateListeners(true, activityEventsByActivityId, deltaActivityIds, previouslyEnabledActivityIds);
    }

    private void removeExpressionControlledActivities(Set delta) {
        Iterator i = delta.iterator();
        while (i.hasNext()) {
            String id = (String)i.next();
            IActivity activity = (IActivity)this.activitiesById.get(id);
            Expression expression = activity.getExpression();
            if (expression == null) continue;
            i.remove();
        }
    }

    private Map updateActivities(Collection activityIds) {
        TreeMap<String, ActivityEvent> activityEventsByActivityId = new TreeMap<String, ActivityEvent>();
        Iterator iterator = activityIds.iterator();
        while (iterator.hasNext()) {
            ActivityEvent activityEvent;
            String activityId = (String)iterator.next();
            Activity activity = (Activity)this.activitiesById.get(activityId);
            if (activity == null || (activityEvent = this.updateActivity(activity)) == null) continue;
            activityEventsByActivityId.put(activityId, activityEvent);
        }
        return activityEventsByActivityId;
    }

    private ActivityEvent updateActivity(Activity activity) {
        boolean enabledChanged;
        Set activityRequirementBindings = (Set)this.activityRequirementBindingsByActivityId.get(activity.getId());
        boolean activityRequirementBindingsChanged = activity.setActivityRequirementBindings(activityRequirementBindings != null ? activityRequirementBindings : Collections.EMPTY_SET);
        Set activityPatternBindings = (Set)this.activityPatternBindingsByActivityId.get(activity.getId());
        boolean activityPatternBindingsChanged = activity.setActivityPatternBindings(activityPatternBindings != null ? activityPatternBindings : Collections.EMPTY_SET);
        ActivityDefinition activityDefinition = (ActivityDefinition)this.activityDefinitionsById.get(activity.getId());
        boolean definedChanged = activity.setDefined(activityDefinition != null);
        IEvaluationReference ref = (IEvaluationReference)this.refsByActivityDefinition.get(activityDefinition);
        IWorkbench iWorkbench = PlatformUI.getWorkbench();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.services.IEvaluationService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IEvaluationService evaluationService = (IEvaluationService)iWorkbench.getService(clazz);
        boolean newRef = false;
        if (activityDefinition != null && evaluationService != null) {
            activity.setExpression(activityDefinition.getEnabledWhen());
            if (ref == null && activityDefinition.getEnabledWhen() != null) {
                this.addingEvaluationListener = true;
                try {
                    ref = evaluationService.addEvaluationListener(activityDefinition.getEnabledWhen(), this.enabledWhenListener, activityDefinition.getId());
                    newRef = true;
                }
                finally {
                    this.addingEvaluationListener = false;
                }
                if (ref != null) {
                    this.refsByActivityDefinition.put(activityDefinition, ref);
                }
            }
        }
        if (ref != null && evaluationService != null) {
            enabledChanged = activity.setEnabled(ref.evaluate(evaluationService.getCurrentState()));
            if (newRef && activity.isEnabled()) {
                this.enabledActivityIds.add(activity.getId());
            }
        } else {
            enabledChanged = activity.setEnabled(this.enabledActivityIds.contains(activity.getId()));
        }
        boolean nameChanged = activity.setName(activityDefinition != null ? activityDefinition.getName() : null);
        boolean descriptionChanged = activity.setDescription(activityDefinition != null ? activityDefinition.getDescription() : null);
        boolean defaultEnabledChanged = activity.setDefaultEnabled(this.activityRegistry.getDefaultEnabledActivities().contains(activity.getId()));
        if (activityRequirementBindingsChanged || activityPatternBindingsChanged || definedChanged || enabledChanged || nameChanged || descriptionChanged || defaultEnabledChanged) {
            return new ActivityEvent(activity, activityRequirementBindingsChanged, activityPatternBindingsChanged, definedChanged, descriptionChanged, enabledChanged, nameChanged, defaultEnabledChanged);
        }
        return null;
    }

    private Map updateCategories(Collection categoryIds) {
        TreeMap<String, CategoryEvent> categoryEventsByCategoryId = new TreeMap<String, CategoryEvent>();
        Iterator iterator = categoryIds.iterator();
        while (iterator.hasNext()) {
            CategoryEvent categoryEvent;
            String categoryId = (String)iterator.next();
            Category category = (Category)this.categoriesById.get(categoryId);
            if (category == null || (categoryEvent = this.updateCategory(category)) == null) continue;
            categoryEventsByCategoryId.put(categoryId, categoryEvent);
        }
        return categoryEventsByCategoryId;
    }

    private CategoryEvent updateCategory(Category category) {
        Set categoryActivityBindings = (Set)this.categoryActivityBindingsByCategoryId.get(category.getId());
        boolean categoryActivityBindingsChanged = category.setCategoryActivityBindings(categoryActivityBindings != null ? categoryActivityBindings : Collections.EMPTY_SET);
        CategoryDefinition categoryDefinition = (CategoryDefinition)this.categoryDefinitionsById.get(category.getId());
        boolean definedChanged = category.setDefined(categoryDefinition != null);
        boolean nameChanged = category.setName(categoryDefinition != null ? categoryDefinition.getName() : null);
        boolean descriptionChanged = category.setDescription(categoryDefinition != null ? categoryDefinition.getDescription() : null);
        if (categoryActivityBindingsChanged || definedChanged || nameChanged || descriptionChanged) {
            return new CategoryEvent(category, categoryActivityBindingsChanged, definedChanged, descriptionChanged, nameChanged);
        }
        return null;
    }

    private IdentifierEvent updateIdentifier(Identifier identifier) {
        return this.updateIdentifier(identifier, this.definedActivityIds);
    }

    private IdentifierEvent updateIdentifier(Identifier identifier, Set changedActivityIds) {
        String id = identifier.getId();
        HashSet<String> activityIds = new HashSet<String>();
        boolean enabled = false;
        boolean activityIdsChanged = false;
        boolean enabledChanged = false;
        if (this.enabledActivityIds.size() == this.definedActivityIds.size()) {
            enabled = true;
            enabledChanged = identifier.setEnabled(enabled);
            identifier.setActivityIds(Collections.EMPTY_SET);
            this.deferredIdentifiers.add(identifier);
            this.getUpdateJob().schedule();
            if (enabledChanged) {
                return new IdentifierEvent(identifier, activityIdsChanged, enabledChanged);
            }
        } else {
            HashSet activityIdsToUpdate = new HashSet(changedActivityIds);
            if (identifier.getActivityIds() != null) {
                activityIdsToUpdate.addAll(identifier.getActivityIds());
            }
            Iterator iterator = activityIdsToUpdate.iterator();
            while (iterator.hasNext()) {
                String activityId = (String)iterator.next();
                Activity activity = (Activity)this.getActivity(activityId);
                if (!activity.isMatch(id)) continue;
                activityIds.add(activityId);
            }
            activityIdsChanged = identifier.setActivityIds(activityIds);
            if (this.advisor != null) {
                enabled = this.advisor.computeEnablement(this, identifier);
            }
            enabledChanged = identifier.setEnabled(enabled);
            if (activityIdsChanged || enabledChanged) {
                return new IdentifierEvent(identifier, activityIdsChanged, enabledChanged);
            }
        }
        return null;
    }

    private Map updateIdentifiers(Collection identifierIds) {
        return this.updateIdentifiers(identifierIds, this.definedActivityIds);
    }

    private Map updateIdentifiers(Collection identifierIds, Set changedActivityIds) {
        TreeMap<String, IdentifierEvent> identifierEventsByIdentifierId = new TreeMap<String, IdentifierEvent>();
        Iterator iterator = identifierIds.iterator();
        while (iterator.hasNext()) {
            IdentifierEvent identifierEvent;
            String identifierId = (String)iterator.next();
            Identifier identifier = (Identifier)this.identifiersById.get(identifierId);
            if (identifier == null || (identifierEvent = this.updateIdentifier(identifier, changedActivityIds)) == null) continue;
            identifierEventsByIdentifierId.put(identifierId, identifierEvent);
        }
        return identifierEventsByIdentifierId;
    }

    public void unhookRegistryListeners() {
        this.activityRegistry.removeActivityRegistryListener(this.activityRegistryListener);
    }

    public synchronized Object clone() {
        MutableActivityManager clone = new MutableActivityManager(this.advisor, this.activityRegistry);
        clone.setEnabledActivityIds(this.getEnabledActivityIds());
        return clone;
    }

    private Job getUpdateJob() {
        if (this.deferredIdentifierJob == null) {
            this.deferredIdentifierJob = new Job("Identifier Update Job"){

                protected IStatus run(IProgressMonitor monitor) {
                    while (!MutableActivityManager.this.deferredIdentifiers.isEmpty()) {
                        Identifier identifier = (Identifier)MutableActivityManager.this.deferredIdentifiers.remove(0);
                        HashSet<String> activityIds = new HashSet<String>();
                        Iterator iterator = MutableActivityManager.this.definedActivityIds.iterator();
                        while (iterator.hasNext()) {
                            String activityId = (String)iterator.next();
                            Activity activity = (Activity)MutableActivityManager.this.getActivity(activityId);
                            if (!activity.isMatch(identifier.getId())) continue;
                            activityIds.add(activityId);
                        }
                        boolean activityIdsChanged = identifier.setActivityIds(activityIds);
                        if (!activityIdsChanged) continue;
                        IdentifierEvent identifierEvent = new IdentifierEvent(identifier, activityIdsChanged, false);
                        HashMap<String, IdentifierEvent> identifierEventsByIdentifierId = new HashMap<String, IdentifierEvent>(1);
                        identifierEventsByIdentifierId.put(identifier.getId(), identifierEvent);
                        UIJob notifyJob = new UIJob(this, "Identifier Update Job", identifierEventsByIdentifierId){
                            final /* synthetic */ 3 this$1;
                            private final /* synthetic */ Map val$identifierEventsByIdentifierId;
                            {
                                this.this$1 = var1_1;
                                this.val$identifierEventsByIdentifierId = map;
                            }

                            public IStatus runInUIThread(IProgressMonitor monitor) {
                                MutableActivityManager.access$7(3.access$0(this.this$1), this.val$identifierEventsByIdentifierId);
                                return Status.OK_STATUS;
                            }
                        };
                        notifyJob.setSystem(true);
                        notifyJob.schedule();
                    }
                    return Status.OK_STATUS;
                }

                static /* synthetic */ MutableActivityManager access$0(3 var0) {
                    return var0.MutableActivityManager.this;
                }
            };
            this.deferredIdentifierJob.setSystem(true);
        }
        return this.deferredIdentifierJob;
    }

    static /* synthetic */ void access$7(MutableActivityManager mutableActivityManager, Map map) {
        mutableActivityManager.notifyIdentifiers(map);
    }
}

