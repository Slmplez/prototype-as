/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.swt.widgets.Composite
 */
package org.eclipse.ui.internal.presentations.classic;

import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.presentations.defaultpresentation.DefaultSimpleTabListener;
import org.eclipse.ui.internal.presentations.defaultpresentation.DefaultTabFolder;
import org.eclipse.ui.internal.presentations.defaultpresentation.DefaultThemeListener;
import org.eclipse.ui.internal.presentations.util.ISystemMenu;
import org.eclipse.ui.internal.presentations.util.PresentablePartFolder;
import org.eclipse.ui.internal.presentations.util.StandardViewSystemMenu;
import org.eclipse.ui.internal.presentations.util.TabbedStackPresentation;
import org.eclipse.ui.presentations.IStackPresentationSite;
import org.eclipse.ui.presentations.StackPresentation;
import org.eclipse.ui.presentations.WorkbenchPresentationFactory;

public class WorkbenchPresentationFactoryClassic
extends WorkbenchPresentationFactory {
    private static int viewTabPosition = PlatformUI.getPreferenceStore().getInt("VIEW_TAB_POSITION");

    public StackPresentation createViewPresentation(Composite parent, IStackPresentationSite site) {
        DefaultTabFolder folder = new DefaultTabFolder(parent, viewTabPosition | 0x800, site.supportsState(0), site.supportsState(1));
        IPreferenceStore store = PlatformUI.getPreferenceStore();
        int minimumCharacters = store.getInt("VIEW_MINIMUM_CHARACTERS");
        if (minimumCharacters >= 0) {
            folder.setMinimumCharacters(minimumCharacters);
        }
        PresentablePartFolder partFolder = new PresentablePartFolder(folder);
        folder.setUnselectedCloseVisible(false);
        folder.setUnselectedImageVisible(false);
        TabbedStackPresentation result = new TabbedStackPresentation(site, partFolder, (ISystemMenu)new StandardViewSystemMenu(site));
        DefaultThemeListener themeListener = new DefaultThemeListener(folder, result.getTheme());
        result.getTheme().addListener(themeListener);
        new DefaultSimpleTabListener(result.getApiPreferences(), "SHOW_TRADITIONAL_STYLE_TABS", folder);
        return result;
    }
}

