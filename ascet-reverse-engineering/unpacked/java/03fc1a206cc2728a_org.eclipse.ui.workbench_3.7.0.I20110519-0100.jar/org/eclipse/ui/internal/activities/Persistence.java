/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.ui.internal.activities;

import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.osgi.util.NLS;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.activities.ActivityDefinition;
import org.eclipse.ui.internal.activities.ActivityPatternBindingDefinition;
import org.eclipse.ui.internal.activities.ActivityRequirementBindingDefinition;
import org.eclipse.ui.internal.activities.CategoryActivityBindingDefinition;
import org.eclipse.ui.internal.activities.CategoryDefinition;
import org.eclipse.ui.internal.util.ConfigurationElementMemento;

public final class Persistence {
    static final String PACKAGE_BASE = "activities";
    static final String PACKAGE_FULL = "org.eclipse.ui.activities";
    static final String PACKAGE_PREFIX = "org.eclipse.ui";
    static final String TAG_ACTIVITY = "activity";
    static final String TAG_ACTIVITY_REQUIREMENT_BINDING = "activityRequirementBinding";
    static final String TAG_DEFAULT_ENABLEMENT = "defaultEnablement";
    static final String TAG_ACTIVITY_ID = "activityId";
    static final String TAG_ACTIVITY_PATTERN_BINDING = "activityPatternBinding";
    static final String TAG_CATEGORY = "category";
    static final String TAG_CATEGORY_ACTIVITY_BINDING = "categoryActivityBinding";
    static final String TAG_CATEGORY_ID = "categoryId";
    static final String TAG_REQUIRED_ACTIVITY_ID = "requiredActivityId";
    static final String TAG_ID = "id";
    static final String TAG_NAME = "name";
    static final String TAG_PATTERN = "pattern";
    static final String TAG_IS_EQUALITY_PATTERN = "isEqualityPattern";
    static final String TAG_SOURCE_ID = "sourceId";
    static final String TAG_DESCRIPTION = "description";
    public static final String ACTIVITY_REQUIREMENT_BINDING_DESC = "Invalid activity requirement binding";
    public static final String ACTIVITY_DESC = "Invalid activity";
    public static final String ACTIVITY_PATTERN_BINDING_DESC = "Invalid activity pattern binding";
    public static final String CATEGORY_ACTIVITY_BINDING_DESC = "Invalid category activity binding";
    public static final String CATEGORY_DESC = "Invalid category description";
    public static final String ACTIVITY_IMAGE_BINDING_DESC = "Invalid activity image binding";
    public static final String ACTIVITY_TRIGGER_DESC = "Invalid trigger point";
    public static final String ACTIVITY_TRIGGER_HINT_DESC = "Invalid trigger point hint";
    public static final String shortContextTemplate = " (contributed by ''{0}'')";
    public static final String fullContextTemplate = " (contributed by ''{0}'', extension ID ''{1}'')";

    static ActivityRequirementBindingDefinition readActivityRequirementBindingDefinition(IMemento memento, String sourceIdOverride) {
        String childActivityId = memento.getString(TAG_REQUIRED_ACTIVITY_ID);
        if (childActivityId == null) {
            Persistence.log(memento, ACTIVITY_REQUIREMENT_BINDING_DESC, "missing ID of the required activity");
            return null;
        }
        String parentActivityId = memento.getString(TAG_ACTIVITY_ID);
        if (parentActivityId == null) {
            Persistence.log(memento, ACTIVITY_REQUIREMENT_BINDING_DESC, "missing ID of the activity to bind");
            return null;
        }
        String sourceId = sourceIdOverride != null ? sourceIdOverride : memento.getString(TAG_SOURCE_ID);
        return new ActivityRequirementBindingDefinition(childActivityId, parentActivityId, sourceId);
    }

    static String readDefaultEnablement(IMemento memento) {
        return memento.getString(TAG_ID);
    }

    static ActivityDefinition readActivityDefinition(IMemento memento, String sourceIdOverride) {
        String id = memento.getString(TAG_ID);
        if (id == null) {
            Persistence.log(memento, ACTIVITY_DESC, "missing a unique identifier");
            return null;
        }
        String name = memento.getString(TAG_NAME);
        if (name == null) {
            Persistence.log(memento, ACTIVITY_DESC, "missing a translatable name");
            return null;
        }
        String description = memento.getString(TAG_DESCRIPTION);
        if (description == null) {
            description = "";
        }
        String sourceId = sourceIdOverride != null ? sourceIdOverride : memento.getString(TAG_SOURCE_ID);
        return new ActivityDefinition(id, name, sourceId, description);
    }

    static ActivityPatternBindingDefinition readActivityPatternBindingDefinition(IMemento memento, String sourceIdOverride) {
        String activityId = memento.getString(TAG_ACTIVITY_ID);
        if (activityId == null) {
            Persistence.log(memento, ACTIVITY_PATTERN_BINDING_DESC, "missing an ID of the activity to bind");
            return null;
        }
        String pattern = memento.getString(TAG_PATTERN);
        if (pattern == null) {
            Persistence.log(memento, ACTIVITY_PATTERN_BINDING_DESC, "missing the pattern to be bound");
            return null;
        }
        String sourceId = sourceIdOverride != null ? sourceIdOverride : memento.getString(TAG_SOURCE_ID);
        String isEqualityPatternStr = memento.getString(TAG_IS_EQUALITY_PATTERN);
        boolean isEqualityPattern = isEqualityPatternStr != null && isEqualityPatternStr.equals("true");
        return new ActivityPatternBindingDefinition(activityId, pattern, sourceId, isEqualityPattern);
    }

    static CategoryActivityBindingDefinition readCategoryActivityBindingDefinition(IMemento memento, String sourceIdOverride) {
        String activityId = memento.getString(TAG_ACTIVITY_ID);
        if (activityId == null) {
            Persistence.log(memento, CATEGORY_ACTIVITY_BINDING_DESC, "missing the ID of the activity to bind");
            return null;
        }
        String categoryId = memento.getString(TAG_CATEGORY_ID);
        if (categoryId == null) {
            Persistence.log(memento, CATEGORY_ACTIVITY_BINDING_DESC, "missing the ID of the category to bind");
            return null;
        }
        String sourceId = sourceIdOverride != null ? sourceIdOverride : memento.getString(TAG_SOURCE_ID);
        return new CategoryActivityBindingDefinition(activityId, categoryId, sourceId);
    }

    static CategoryDefinition readCategoryDefinition(IMemento memento, String sourceIdOverride) {
        String id = memento.getString(TAG_ID);
        if (id == null) {
            Persistence.log(memento, CATEGORY_DESC, "has no ID");
            return null;
        }
        String name = memento.getString(TAG_NAME);
        if (name == null) {
            Persistence.log(memento, CATEGORY_DESC, "missing a translatable name");
            return null;
        }
        String description = memento.getString(TAG_DESCRIPTION);
        if (description == null) {
            description = "";
        }
        String sourceId = sourceIdOverride != null ? sourceIdOverride : memento.getString(TAG_SOURCE_ID);
        return new CategoryDefinition(id, name, sourceId, description);
    }

    private Persistence() {
    }

    public static void log(IMemento memento, String elementName, String msg) {
        if (memento instanceof ConfigurationElementMemento) {
            ConfigurationElementMemento cMemento = (ConfigurationElementMemento)memento;
            Persistence.log(elementName, msg, cMemento.getContributorName(), cMemento.getExtensionID());
        } else {
            Persistence.log(elementName, msg, null, null);
        }
    }

    public static void log(IConfigurationElement element, String elementName, String msg) {
        String contributorName = element.getContributor().getName();
        String extensionID = element.getDeclaringExtension().getUniqueIdentifier();
        Persistence.log(elementName, msg, contributorName, extensionID);
    }

    public static void log(String elementName, String msg, String contributorName, String extensionID) {
        String msgInContext = String.valueOf(elementName) + ": " + msg;
        if (contributorName != null && extensionID != null) {
            msgInContext = String.valueOf(msgInContext) + NLS.bind((String)fullContextTemplate, (Object)contributorName, (Object)extensionID);
        } else if (contributorName != null) {
            msgInContext = String.valueOf(msgInContext) + NLS.bind((String)shortContextTemplate, (Object)contributorName);
        }
        WorkbenchPlugin.log(msgInContext);
    }
}

