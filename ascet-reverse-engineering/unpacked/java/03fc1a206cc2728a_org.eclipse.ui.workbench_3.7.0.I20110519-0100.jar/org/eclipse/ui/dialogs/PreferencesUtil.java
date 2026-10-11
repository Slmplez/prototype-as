/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.jface.preference.IPreferenceNode
 *  org.eclipse.jface.preference.IPreferencePage
 *  org.eclipse.jface.preference.PreferenceDialog
 *  org.eclipse.jface.preference.PreferencePage
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.dialogs;

import java.util.Collection;
import java.util.List;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.jface.preference.IPreferenceNode;
import org.eclipse.jface.preference.IPreferencePage;
import org.eclipse.jface.preference.PreferenceDialog;
import org.eclipse.jface.preference.PreferencePage;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.internal.dialogs.FilteredPreferenceDialog;
import org.eclipse.ui.internal.dialogs.PropertyDialog;
import org.eclipse.ui.internal.dialogs.PropertyPageContributorManager;
import org.eclipse.ui.internal.dialogs.PropertyPageManager;
import org.eclipse.ui.internal.dialogs.WorkbenchPreferenceDialog;

public final class PreferencesUtil {
    public static final int OPTION_NONE = 0;
    public static final int OPTION_FILTER_LOCKED = 1;

    private static void applyOptions(Object data, String[] displayedIds, FilteredPreferenceDialog dialog, int options) {
        if (data != null) {
            dialog.setPageData(data);
            IPreferencePage page = dialog.getCurrentPage();
            if (page instanceof PreferencePage) {
                ((PreferencePage)page).applyData(data);
            }
        }
        if (displayedIds != null) {
            dialog.showOnly(displayedIds);
        }
        if ((options & 1) != 0) {
            dialog.setLocked(true);
        }
    }

    public static final PreferenceDialog createPreferenceDialogOn(Shell shell, String preferencePageId, String[] displayedIds, Object data) {
        return PreferencesUtil.createPreferenceDialogOn(shell, preferencePageId, displayedIds, data, 0);
    }

    public static final PreferenceDialog createPropertyDialogOn(Shell shell, IAdaptable element, String propertyPageId, String[] displayedIds, Object data) {
        return PreferencesUtil.createPropertyDialogOn(shell, element, propertyPageId, displayedIds, data, 0);
    }

    public static final PreferenceDialog createPreferenceDialogOn(Shell shell, String preferencePageId, String[] displayedIds, Object data, int options) {
        WorkbenchPreferenceDialog dialog = WorkbenchPreferenceDialog.createDialogOn(shell, preferencePageId);
        PreferencesUtil.applyOptions(data, displayedIds, dialog, options);
        return dialog;
    }

    public static final PreferenceDialog createPropertyDialogOn(Shell shell, IAdaptable element, String propertyPageId, String[] displayedIds, Object data, int options) {
        PropertyDialog dialog = PropertyDialog.createDialogOn(shell, propertyPageId, element);
        if (dialog == null) {
            return null;
        }
        PreferencesUtil.applyOptions(data, displayedIds, dialog, options);
        return dialog;
    }

    public static final PreferenceDialog createPropertyDialogOn(Shell shell, Object element, String propertyPageId, String[] displayedIds, Object data, int options) {
        PropertyDialog dialog = PropertyDialog.createDialogOn(shell, propertyPageId, element);
        if (dialog == null) {
            return null;
        }
        PreferencesUtil.applyOptions(data, displayedIds, dialog, options);
        return dialog;
    }

    public static boolean hasPropertiesContributors(Object element) {
        if (element == null || !(element instanceof IAdaptable)) {
            return false;
        }
        Collection contributors = PropertyPageContributorManager.getManager().getApplicableContributors(element);
        return contributors != null && contributors.size() > 0;
    }

    public static IPreferenceNode[] propertiesContributorsFor(Object element) {
        PropertyPageManager pageManager = new PropertyPageManager();
        if (element == null) {
            return null;
        }
        PropertyPageContributorManager.getManager().contribute(pageManager, element);
        List pages = pageManager.getElements(0);
        IPreferenceNode[] nodes = new IPreferenceNode[pages.size()];
        pages.toArray(nodes);
        return nodes;
    }
}

