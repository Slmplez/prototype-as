/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.ui.PlatformUI
 *  org.eclipse.ui.internal.WorkbenchImages
 */
package org.eclipse.ui.views.properties;

import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.IAction;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.views.properties.PropertiesMessages;

public class PinPropertySheetAction
extends Action {
    static /* synthetic */ Class class$0;

    public PinPropertySheetAction() {
        super(PropertiesMessages.Pin_text, 2);
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.views.properties.PinPropertySheetAction");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.setId(String.valueOf(clazz.getName()) + "#" + Long.toString(System.currentTimeMillis()));
        this.setToolTipText(PropertiesMessages.Pin_toolTip);
        this.setImageDescriptor(WorkbenchImages.getImageDescriptor((String)"IMG_ETOOL_PIN_EDITOR"));
        this.setDisabledImageDescriptor(WorkbenchImages.getImageDescriptor((String)"IMG_ETOOL_PIN_EDITOR_DISABLED"));
        PlatformUI.getWorkbench().getHelpSystem().setHelp((IAction)this, "org.eclipse.ui.properties_pin_action_context");
    }
}

