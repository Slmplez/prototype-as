/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.events.HelpListener
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Menu
 */
package org.eclipse.jface.action;

import org.eclipse.jface.action.AbstractAction;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IMenuCreator;
import org.eclipse.jface.action.LegacyActionTools;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.swt.events.HelpListener;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Menu;

public abstract class Action
extends AbstractAction
implements IAction {
    private static final IMenuCreator VAL_DROP_DOWN_MENU = new IMenuCreator(){

        public void dispose() {
        }

        public Menu getMenu(Control parent) {
            return null;
        }

        public Menu getMenu(Menu parent) {
            return null;
        }
    };
    private static final String VAL_PUSH_BTN = "PUSH_BTN";
    private static final Integer VAL_RADIO_BTN_OFF = new Integer(0);
    private static final Integer VAL_RADIO_BTN_ON = new Integer(1);
    private static final Boolean VAL_TOGGLE_BTN_OFF = Boolean.FALSE;
    private static final Boolean VAL_TOGGLE_BTN_ON = Boolean.TRUE;
    private int accelerator = 0;
    private String actionDefinitionId;
    private String description;
    private ImageDescriptor disabledImage;
    private boolean enabled = true;
    private HelpListener helpListener;
    private ImageDescriptor hoverImage;
    private String id;
    private ImageDescriptor image;
    private String text;
    private String toolTipText;
    private Object value = null;

    public static String convertAccelerator(int keyCode) {
        return LegacyActionTools.convertAccelerator(keyCode);
    }

    public static int convertAccelerator(String acceleratorText) {
        return LegacyActionTools.convertAccelerator(acceleratorText);
    }

    public static int findKeyCode(String token) {
        return LegacyActionTools.findKeyCode(token);
    }

    public static String findKeyString(int keyCode) {
        return LegacyActionTools.findKeyString(keyCode);
    }

    public static int findModifier(String token) {
        return LegacyActionTools.findModifier(token);
    }

    public static String findModifierString(int keyCode) {
        return LegacyActionTools.findModifierString(keyCode);
    }

    public static String removeAcceleratorText(String text) {
        return LegacyActionTools.removeAcceleratorText(text);
    }

    public static String removeMnemonics(String text) {
        return LegacyActionTools.removeMnemonics(text);
    }

    protected Action() {
    }

    protected Action(String text) {
        this();
        this.setText(text);
    }

    protected Action(String text, ImageDescriptor image) {
        this(text);
        this.setImageDescriptor(image);
    }

    protected Action(String text, int style) {
        this(text);
        switch (style) {
            case 1: {
                this.value = VAL_PUSH_BTN;
                break;
            }
            case 2: {
                this.value = VAL_TOGGLE_BTN_OFF;
                break;
            }
            case 4: {
                this.value = VAL_DROP_DOWN_MENU;
                break;
            }
            case 8: {
                this.value = VAL_RADIO_BTN_OFF;
            }
        }
    }

    public int getAccelerator() {
        return this.accelerator;
    }

    public String getActionDefinitionId() {
        return this.actionDefinitionId;
    }

    public String getDescription() {
        if (this.description != null) {
            return this.description;
        }
        return this.getToolTipText();
    }

    public ImageDescriptor getDisabledImageDescriptor() {
        return this.disabledImage;
    }

    public HelpListener getHelpListener() {
        return this.helpListener;
    }

    public ImageDescriptor getHoverImageDescriptor() {
        return this.hoverImage;
    }

    public String getId() {
        return this.id;
    }

    public ImageDescriptor getImageDescriptor() {
        return this.image;
    }

    public IMenuCreator getMenuCreator() {
        if (this.value == VAL_DROP_DOWN_MENU) {
            return null;
        }
        if (this.value instanceof IMenuCreator) {
            return (IMenuCreator)this.value;
        }
        return null;
    }

    public int getStyle() {
        if (this.value == VAL_PUSH_BTN || this.value == null) {
            return 1;
        }
        if (this.value == VAL_TOGGLE_BTN_ON || this.value == VAL_TOGGLE_BTN_OFF) {
            return 2;
        }
        if (this.value == VAL_RADIO_BTN_ON || this.value == VAL_RADIO_BTN_OFF) {
            return 8;
        }
        if (this.value instanceof IMenuCreator) {
            return 4;
        }
        return 1;
    }

    public String getText() {
        return this.text;
    }

    public String getToolTipText() {
        return this.toolTipText;
    }

    public boolean isChecked() {
        return this.value == VAL_TOGGLE_BTN_ON || this.value == VAL_RADIO_BTN_ON;
    }

    public boolean isEnabled() {
        return this.enabled;
    }

    public boolean isHandled() {
        return true;
    }

    public final void notifyResult(boolean success) {
        this.firePropertyChange("result", null, success ? Boolean.TRUE : Boolean.FALSE);
    }

    public void run() {
    }

    public void runWithEvent(Event event) {
        this.run();
    }

    public void setAccelerator(int keycode) {
        this.accelerator = keycode;
    }

    public void setActionDefinitionId(String id) {
        this.actionDefinitionId = id;
    }

    public void setChecked(boolean checked) {
        Comparable<Boolean> newValue = null;
        if (this.value == null || this.value == VAL_TOGGLE_BTN_ON || this.value == VAL_TOGGLE_BTN_OFF) {
            newValue = checked ? VAL_TOGGLE_BTN_ON : VAL_TOGGLE_BTN_OFF;
        } else if (this.value == VAL_RADIO_BTN_ON || this.value == VAL_RADIO_BTN_OFF) {
            newValue = checked ? VAL_RADIO_BTN_ON : VAL_RADIO_BTN_OFF;
        } else {
            return;
        }
        if (newValue != this.value) {
            this.value = newValue;
            if (checked) {
                this.firePropertyChange("checked", Boolean.FALSE, Boolean.TRUE);
            } else {
                this.firePropertyChange("checked", Boolean.TRUE, Boolean.FALSE);
            }
        }
    }

    public void setDescription(String text) {
        if (this.description == null && text != null || this.description != null && text == null || this.description != null && text != null && !text.equals(this.description)) {
            String oldDescription = this.description;
            this.description = text;
            this.firePropertyChange("description", oldDescription, this.description);
        }
    }

    public void setDisabledImageDescriptor(ImageDescriptor newImage) {
        if (this.disabledImage != newImage) {
            ImageDescriptor oldImage = this.disabledImage;
            this.disabledImage = newImage;
            this.firePropertyChange("image", oldImage, newImage);
        }
    }

    public void setEnabled(boolean enabled) {
        if (enabled != this.enabled) {
            Boolean oldVal = this.enabled ? Boolean.TRUE : Boolean.FALSE;
            Boolean newVal = enabled ? Boolean.TRUE : Boolean.FALSE;
            this.enabled = enabled;
            this.firePropertyChange("enabled", oldVal, newVal);
        }
    }

    public void setHelpListener(HelpListener listener) {
        this.helpListener = listener;
    }

    public void setHoverImageDescriptor(ImageDescriptor newImage) {
        if (this.hoverImage != newImage) {
            ImageDescriptor oldImage = this.hoverImage;
            this.hoverImage = newImage;
            this.firePropertyChange("image", oldImage, newImage);
        }
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setImageDescriptor(ImageDescriptor newImage) {
        if (this.image != newImage) {
            ImageDescriptor oldImage = this.image;
            this.image = newImage;
            this.firePropertyChange("image", oldImage, newImage);
        }
    }

    public void setMenuCreator(IMenuCreator creator) {
        if (this.value == null) {
            this.value = creator;
            return;
        }
        if (this.value instanceof IMenuCreator) {
            this.value = creator == null ? VAL_DROP_DOWN_MENU : creator;
        }
    }

    public void setText(String text) {
        int newAccelerator;
        String acceleratorText;
        String oldText = this.text;
        int oldAccel = this.accelerator;
        this.text = text;
        if (text != null && (acceleratorText = LegacyActionTools.extractAcceleratorText(text)) != null && (newAccelerator = LegacyActionTools.convertLocalizedAccelerator(acceleratorText)) > 0) {
            this.setAccelerator(newAccelerator);
        }
        if (this.accelerator != oldAccel || (oldText == null ? this.text != null : !oldText.equals(this.text))) {
            this.firePropertyChange("text", oldText, this.text);
        }
    }

    public void setToolTipText(String toolTipText) {
        String oldToolTipText = this.toolTipText;
        if (oldToolTipText == null ? toolTipText != null : !oldToolTipText.equals(toolTipText)) {
            this.toolTipText = toolTipText;
            this.firePropertyChange("toolTipText", oldToolTipText, toolTipText);
        }
    }
}

