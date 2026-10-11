/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionTracker
 */
package org.eclipse.ui.internal.registry;

import java.util.HashSet;
import java.util.Set;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.ui.IViewLayout;
import org.eclipse.ui.internal.DirtyPerspectiveMarker;
import org.eclipse.ui.internal.PageLayout;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.registry.RegistryReader;

public class PerspectiveExtensionReader
extends RegistryReader {
    private String targetID;
    private PageLayout pageLayout;
    private Set includeOnlyTags = null;
    private static final String VAL_LEFT = "left";
    private static final String VAL_RIGHT = "right";
    private static final String VAL_TOP = "top";
    private static final String VAL_BOTTOM = "bottom";
    private static final String VAL_STACK = "stack";
    private static final String VAL_FAST = "fast";
    private static final String VAL_TRUE = "true";
    private static final String VAL_FALSE = "false";
    private IExtensionTracker tracker;

    public void extendLayout(IExtensionTracker extensionTracker, String id, PageLayout out) {
        this.tracker = extensionTracker;
        this.targetID = id;
        this.pageLayout = out;
        this.readRegistry(Platform.getExtensionRegistry(), "org.eclipse.ui", "perspectiveExtensions");
    }

    private boolean includeTag(String tag) {
        return this.includeOnlyTags == null || this.includeOnlyTags.contains(tag);
    }

    private boolean processActionSet(IConfigurationElement element) {
        String id = element.getAttribute("id");
        if (id != null) {
            this.pageLayout.addActionSet(id);
        }
        return true;
    }

    private boolean processExtension(IConfigurationElement element) {
        IConfigurationElement[] children = element.getChildren();
        int nX = 0;
        while (nX < children.length) {
            IConfigurationElement child = children[nX];
            String type = child.getName();
            if (this.includeTag(type)) {
                boolean result = false;
                if (type.equals("actionSet")) {
                    result = this.processActionSet(child);
                } else if (type.equals("view")) {
                    result = this.processView(child);
                } else if (type.equals("viewShortcut")) {
                    result = this.processViewShortcut(child);
                } else if (type.equals("newWizardShortcut")) {
                    result = this.processWizardShortcut(child);
                } else if (type.equals("perspectiveShortcut")) {
                    result = this.processPerspectiveShortcut(child);
                } else if (type.equals("showInPart")) {
                    result = this.processShowInPart(child);
                } else if (type.equals("hiddenMenuItem")) {
                    result = this.processHiddenMenuItem(child);
                } else if (type.equals("hiddenToolBarItem")) {
                    result = this.processHiddenToolBarItem(child);
                }
                if (!result) {
                    WorkbenchPlugin.log("Unable to process element: " + type + " in perspective extension: " + element.getDeclaringExtension().getUniqueIdentifier());
                }
            }
            ++nX;
        }
        return true;
    }

    private boolean processPerspectiveShortcut(IConfigurationElement element) {
        String id = element.getAttribute("id");
        if (id != null) {
            this.pageLayout.addPerspectiveShortcut(id);
        }
        return true;
    }

    private boolean processShowInPart(IConfigurationElement element) {
        String id = element.getAttribute("id");
        if (id != null) {
            this.pageLayout.addShowInPart(id);
        }
        return true;
    }

    private boolean processHiddenMenuItem(IConfigurationElement element) {
        String id = element.getAttribute("id");
        if (id != null) {
            this.pageLayout.addHiddenMenuItemId(id);
        }
        return true;
    }

    private boolean processHiddenToolBarItem(IConfigurationElement element) {
        String id = element.getAttribute("id");
        if (id != null) {
            this.pageLayout.addHiddenToolBarItemId(id);
        }
        return true;
    }

    private boolean processView(IConfigurationElement element) {
        float ratio;
        boolean minimized;
        String id = element.getAttribute("id");
        String relative = element.getAttribute("relative");
        String relationship = element.getAttribute("relationship");
        String ratioString = element.getAttribute("ratio");
        boolean visible = !VAL_FALSE.equals(element.getAttribute("visible"));
        String closeable = element.getAttribute("closeable");
        String moveable = element.getAttribute("moveable");
        String standalone = element.getAttribute("standalone");
        String showTitle = element.getAttribute("showTitle");
        String minVal = element.getAttribute("minimized");
        boolean bl = minimized = minVal != null && VAL_TRUE.equals(minVal);
        if (id == null) {
            PerspectiveExtensionReader.logMissingAttribute(element, "id");
            return false;
        }
        if (relationship == null) {
            PerspectiveExtensionReader.logMissingAttribute(element, "relationship");
            return false;
        }
        if (!VAL_FAST.equals(relationship) && relative == null) {
            PerspectiveExtensionReader.logError(element, "Attribute 'relative' not defined.  This attribute is required when relationship=\"" + relationship + "\".");
            return false;
        }
        if (ratioString == null) {
            ratio = -2.0f;
        } else {
            try {
                ratio = new Float(ratioString).floatValue();
            }
            catch (NumberFormatException numberFormatException) {
                return false;
            }
            if (ratio < 0.05f || ratio > 0.95f) {
                ratio = -1.0f;
            }
        }
        boolean stack = false;
        boolean fast = false;
        int intRelation = 0;
        if (relationship.equals(VAL_LEFT)) {
            intRelation = 1;
        } else if (relationship.equals(VAL_RIGHT)) {
            intRelation = 2;
        } else if (relationship.equals(VAL_TOP)) {
            intRelation = 3;
        } else if (relationship.equals(VAL_BOTTOM)) {
            intRelation = 4;
        } else if (relationship.equals(VAL_STACK)) {
            stack = true;
        } else if (relationship.equals(VAL_FAST)) {
            fast = true;
        } else {
            return false;
        }
        if (visible) {
            this.pageLayout.removePlaceholder(id);
        }
        if (stack) {
            if (visible) {
                this.pageLayout.stackView(id, relative);
            } else {
                this.pageLayout.stackPlaceholder(id, relative);
            }
        } else if (fast) {
            if (ratio == -2.0f) {
                this.pageLayout.addFastView(id);
            } else {
                this.pageLayout.addFastView(id, ratio);
            }
        } else {
            if (ratio == -2.0f || ratio == -1.0f) {
                ratio = 0.5f;
            }
            if (visible) {
                if (VAL_TRUE.equals(standalone)) {
                    this.pageLayout.addStandaloneView(id, !VAL_FALSE.equals(showTitle), intRelation, ratio, relative);
                } else {
                    this.pageLayout.addView(id, intRelation, ratio, relative, minimized);
                }
            } else if (VAL_TRUE.equals(standalone)) {
                this.pageLayout.addStandaloneViewPlaceholder(id, intRelation, ratio, relative, !VAL_FALSE.equals(showTitle));
            } else {
                this.pageLayout.addPlaceholder(id, intRelation, ratio, relative);
            }
        }
        IViewLayout viewLayout = this.pageLayout.getViewLayout(id);
        if (viewLayout != null) {
            if (closeable != null) {
                viewLayout.setCloseable(!VAL_FALSE.equals(closeable));
            }
            if (moveable != null) {
                viewLayout.setMoveable(!VAL_FALSE.equals(moveable));
            }
        }
        return true;
    }

    private boolean processViewShortcut(IConfigurationElement element) {
        String id = element.getAttribute("id");
        if (id != null) {
            this.pageLayout.addShowViewShortcut(id);
        }
        return true;
    }

    private boolean processWizardShortcut(IConfigurationElement element) {
        String id = element.getAttribute("id");
        if (id != null) {
            this.pageLayout.addNewWizardShortcut(id);
        }
        return true;
    }

    protected boolean readElement(IConfigurationElement element) {
        String type = element.getName();
        if (type.equals("perspectiveExtension")) {
            String id = element.getAttribute("targetID");
            if (this.targetID.equals(id) || "*".equals(id)) {
                if (this.tracker != null) {
                    this.tracker.registerObject(element.getDeclaringExtension(), (Object)new DirtyPerspectiveMarker(id), 0);
                }
                return this.processExtension(element);
            }
            return true;
        }
        return false;
    }

    public void setIncludeOnlyTags(String[] tags) {
        this.includeOnlyTags = new HashSet();
        int i = 0;
        while (i < tags.length) {
            this.includeOnlyTags.add(tags[i]);
            ++i;
        }
    }
}

