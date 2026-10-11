/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.ActionContributionItem
 *  org.eclipse.jface.action.IAction
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.ActionContributionItem;
import org.eclipse.jface.action.IAction;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IPluginContribution;
import org.eclipse.ui.IViewPart;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.EditorPluginAction;
import org.eclipse.ui.internal.ObjectPluginAction;
import org.eclipse.ui.internal.PluginAction;
import org.eclipse.ui.internal.ViewPluginAction;
import org.eclipse.ui.internal.WWinPluginAction;
import org.eclipse.ui.internal.WWinPluginPulldown;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.plugin.AbstractUIPlugin;

public class ActionDescriptor
implements IPluginContribution {
    private PluginAction action;
    private String toolbarId;
    private String menuPath;
    private String id;
    private String pluginId;
    private String menuGroup;
    private String toolbarGroupId;
    private int mode = 0;
    public static final int T_POPUP = 1;
    public static final int T_VIEW = 2;
    public static final int T_WORKBENCH = 3;
    public static final int T_EDITOR = 4;
    public static final int T_WORKBENCH_PULLDOWN = 5;
    public static final String STYLE_PUSH = "push";
    public static final String STYLE_RADIO = "radio";
    public static final String STYLE_TOGGLE = "toggle";
    public static final String STYLE_PULLDOWN = "pulldown";

    public ActionDescriptor(IConfigurationElement actionElement, int targetType) {
        this(actionElement, targetType, null);
    }

    public ActionDescriptor(IConfigurationElement actionElement, int targetType, Object target) {
        String state;
        int loc;
        this.id = actionElement.getAttribute("id");
        this.pluginId = actionElement.getNamespace();
        String label = actionElement.getAttribute("label");
        String tooltip = actionElement.getAttribute("tooltip");
        String helpContextId = actionElement.getAttribute("helpContextId");
        String mpath = actionElement.getAttribute("menubarPath");
        String tpath = actionElement.getAttribute("toolbarPath");
        String style = actionElement.getAttribute("style");
        String icon = actionElement.getAttribute("icon");
        String hoverIcon = actionElement.getAttribute("hoverIcon");
        String disabledIcon = actionElement.getAttribute("disabledIcon");
        String description = actionElement.getAttribute("description");
        String accelerator = actionElement.getAttribute("accelerator");
        if ("FORCE_TEXT".equals(actionElement.getAttribute("mode"))) {
            this.mode = ActionContributionItem.MODE_FORCE_TEXT;
        }
        if (label == null) {
            WorkbenchPlugin.log("Invalid action declaration (label == null): " + this.id);
            label = WorkbenchMessages.ActionDescriptor_invalidLabel;
        }
        String mgroup = null;
        String tgroup = null;
        if (mpath != null) {
            loc = mpath.lastIndexOf(47);
            if (loc != -1) {
                mgroup = mpath.substring(loc + 1);
                mpath = mpath.substring(0, loc);
            } else {
                mgroup = mpath;
                mpath = null;
            }
        }
        if (targetType == 1 && mgroup == null) {
            mgroup = "additions";
        }
        if (tpath != null) {
            loc = tpath.lastIndexOf(47);
            if (loc != -1) {
                tgroup = tpath.substring(loc + 1);
                tpath = tpath.substring(0, loc);
            } else {
                tgroup = tpath;
                tpath = null;
            }
        }
        this.menuPath = mpath;
        this.menuGroup = mgroup;
        if (tpath != null && tpath.equals("Normal")) {
            tpath = "";
        }
        this.toolbarId = tpath;
        this.toolbarGroupId = tgroup;
        this.action = this.createAction(targetType, actionElement, target, style);
        if (this.action.getText() == null) {
            this.action.setText(label);
        }
        if (this.action.getToolTipText() == null && tooltip != null) {
            this.action.setToolTipText(tooltip);
        }
        if (helpContextId != null) {
            String fullID = helpContextId;
            if (helpContextId.indexOf(".") == -1) {
                fullID = String.valueOf(actionElement.getNamespace()) + "." + helpContextId;
            }
            PlatformUI.getWorkbench().getHelpSystem().setHelp((IAction)this.action, fullID);
        }
        if (description != null) {
            this.action.setDescription(description);
        }
        if (style != null) {
            state = actionElement.getAttribute("state");
            if (state != null && (style.equals(STYLE_RADIO) || style.equals(STYLE_TOGGLE))) {
                this.action.setChecked(state.equals("true"));
            }
        } else {
            state = actionElement.getAttribute("state");
            if (state != null) {
                this.action.setChecked(state.equals("true"));
            }
        }
        String extendingPluginId = actionElement.getDeclaringExtension().getNamespace();
        if (icon != null) {
            this.action.setImageDescriptor(AbstractUIPlugin.imageDescriptorFromPlugin(extendingPluginId, icon));
        }
        if (hoverIcon != null) {
            this.action.setHoverImageDescriptor(AbstractUIPlugin.imageDescriptorFromPlugin(extendingPluginId, hoverIcon));
        }
        if (disabledIcon != null) {
            this.action.setDisabledImageDescriptor(AbstractUIPlugin.imageDescriptorFromPlugin(extendingPluginId, disabledIcon));
        }
        if (accelerator != null) {
            this.processAccelerator((IAction)this.action, accelerator);
        }
    }

    private PluginAction createAction(int targetType, IConfigurationElement actionElement, Object target, String style) {
        int actionStyle = 0;
        if (style != null) {
            if (style.equals(STYLE_RADIO)) {
                actionStyle = 8;
            } else if (style.equals(STYLE_TOGGLE)) {
                actionStyle = 2;
            } else if (style.equals(STYLE_PULLDOWN)) {
                actionStyle = 4;
            } else if (style.equals(STYLE_PUSH)) {
                actionStyle = 1;
            }
        }
        switch (targetType) {
            case 2: {
                return new ViewPluginAction(actionElement, (IViewPart)target, this.id, actionStyle);
            }
            case 4: {
                return new EditorPluginAction(actionElement, (IEditorPart)target, this.id, actionStyle);
            }
            case 3: {
                return new WWinPluginAction(actionElement, (IWorkbenchWindow)target, this.id, actionStyle);
            }
            case 5: {
                actionStyle = 4;
                return new WWinPluginPulldown(actionElement, (IWorkbenchWindow)target, this.id, actionStyle);
            }
            case 1: {
                return new ObjectPluginAction(actionElement, this.id, actionStyle);
            }
        }
        WorkbenchPlugin.log("Unknown Action Type: " + targetType);
        return null;
    }

    public PluginAction getAction() {
        return this.action;
    }

    public String getId() {
        return this.id;
    }

    public String getMenuGroup() {
        return this.menuGroup;
    }

    public String getMenuPath() {
        return this.menuPath;
    }

    public String getToolbarGroupId() {
        return this.toolbarGroupId;
    }

    public String getToolbarId() {
        return this.toolbarId;
    }

    public String toString() {
        return "ActionDescriptor(" + this.id + ")";
    }

    private void processAccelerator(IAction action, String acceleratorText) {
        if (acceleratorText.length() == 0) {
            return;
        }
        if (Character.isDigit(acceleratorText.charAt(0))) {
            try {
                action.setAccelerator(Integer.valueOf(acceleratorText).intValue());
            }
            catch (NumberFormatException e) {
                WorkbenchPlugin.log("Invalid accelerator declaration for action: " + this.id, e);
            }
        } else {
            action.setAccelerator(Action.convertAccelerator((String)acceleratorText));
        }
    }

    public String getLocalId() {
        return this.getId();
    }

    public String getPluginId() {
        return this.pluginId;
    }

    public int getMode() {
        return this.mode;
    }
}

