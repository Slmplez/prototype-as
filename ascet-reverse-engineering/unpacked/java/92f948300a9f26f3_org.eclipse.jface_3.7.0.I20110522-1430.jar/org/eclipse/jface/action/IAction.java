/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.events.HelpListener
 *  org.eclipse.swt.widgets.Event
 */
package org.eclipse.jface.action;

import org.eclipse.jface.action.IMenuCreator;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.swt.events.HelpListener;
import org.eclipse.swt.widgets.Event;

public interface IAction {
    public static final int AS_UNSPECIFIED = 0;
    public static final int AS_PUSH_BUTTON = 1;
    public static final int AS_CHECK_BOX = 2;
    public static final int AS_DROP_DOWN_MENU = 4;
    public static final int AS_RADIO_BUTTON = 8;
    public static final String TEXT = "text";
    public static final String ENABLED = "enabled";
    public static final String IMAGE = "image";
    public static final String TOOL_TIP_TEXT = "toolTipText";
    public static final String DESCRIPTION = "description";
    public static final String CHECKED = "checked";
    public static final String RESULT = "result";
    public static final String HANDLED = "handled";

    public void addPropertyChangeListener(IPropertyChangeListener var1);

    public int getAccelerator();

    public String getActionDefinitionId();

    public String getDescription();

    public ImageDescriptor getDisabledImageDescriptor();

    public HelpListener getHelpListener();

    public ImageDescriptor getHoverImageDescriptor();

    public String getId();

    public ImageDescriptor getImageDescriptor();

    public IMenuCreator getMenuCreator();

    public int getStyle();

    public String getText();

    public String getToolTipText();

    public boolean isChecked();

    public boolean isEnabled();

    public boolean isHandled();

    public void removePropertyChangeListener(IPropertyChangeListener var1);

    public void run();

    public void runWithEvent(Event var1);

    public void setActionDefinitionId(String var1);

    public void setChecked(boolean var1);

    public void setDescription(String var1);

    public void setDisabledImageDescriptor(ImageDescriptor var1);

    public void setEnabled(boolean var1);

    public void setHelpListener(HelpListener var1);

    public void setHoverImageDescriptor(ImageDescriptor var1);

    public void setId(String var1);

    public void setImageDescriptor(ImageDescriptor var1);

    public void setMenuCreator(IMenuCreator var1);

    public void setText(String var1);

    public void setToolTipText(String var1);

    public void setAccelerator(int var1);
}

