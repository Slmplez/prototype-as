/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.swt.widgets.Composite
 */
package org.eclipse.ui.presentations;

import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.presentations.defaultpresentation.DefaultMultiTabListener;
import org.eclipse.ui.internal.presentations.defaultpresentation.DefaultSimpleTabListener;
import org.eclipse.ui.internal.presentations.defaultpresentation.DefaultTabFolder;
import org.eclipse.ui.internal.presentations.defaultpresentation.DefaultThemeListener;
import org.eclipse.ui.internal.presentations.defaultpresentation.EmptyTabFolder;
import org.eclipse.ui.internal.presentations.util.ISystemMenu;
import org.eclipse.ui.internal.presentations.util.PresentablePartFolder;
import org.eclipse.ui.internal.presentations.util.StandardEditorSystemMenu;
import org.eclipse.ui.internal.presentations.util.StandardViewSystemMenu;
import org.eclipse.ui.internal.presentations.util.TabbedStackPresentation;
import org.eclipse.ui.presentations.AbstractPresentationFactory;
import org.eclipse.ui.presentations.IStackPresentationSite;
import org.eclipse.ui.presentations.StackPresentation;

public class WorkbenchPresentationFactory
extends AbstractPresentationFactory {
    private static int editorTabPosition = PlatformUI.getPreferenceStore().getInt("EDITOR_TAB_POSITION");
    private static int viewTabPosition = PlatformUI.getPreferenceStore().getInt("VIEW_TAB_POSITION");

    public StackPresentation createEditorPresentation(Composite parent, IStackPresentationSite site) {
        int minimumCharacters;
        DefaultTabFolder folder = new DefaultTabFolder(parent, editorTabPosition | 0x800, site.supportsState(0), site.supportsState(1));
        IPreferenceStore store = PlatformUI.getPreferenceStore();
        if (store.contains("EDITOR_MINIMUM_CHARACTERS") && (minimumCharacters = store.getInt("EDITOR_MINIMUM_CHARACTERS")) >= 0) {
            folder.setMinimumCharacters(minimumCharacters);
        }
        PresentablePartFolder partFolder = new PresentablePartFolder(folder);
        TabbedStackPresentation result = new TabbedStackPresentation(site, partFolder, (ISystemMenu)new StandardEditorSystemMenu(site));
        DefaultThemeListener themeListener = new DefaultThemeListener(folder, result.getTheme());
        result.getTheme().addListener(themeListener);
        new DefaultMultiTabListener(result.getApiPreferences(), "SHOW_MULTIPLE_EDITOR_TABS", folder);
        new DefaultSimpleTabListener(result.getApiPreferences(), "SHOW_TRADITIONAL_STYLE_TABS", folder);
        return result;
    }

    public StackPresentation createViewPresentation(Composite parent, IStackPresentationSite site) {
        DefaultTabFolder folder = new DefaultTabFolder(parent, viewTabPosition | 0x800, site.supportsState(0), site.supportsState(1));
        IPreferenceStore store = PlatformUI.getPreferenceStore();
        int minimumCharacters = store.getInt("VIEW_MINIMUM_CHARACTERS");
        if (minimumCharacters >= 0) {
            folder.setMinimumCharacters(minimumCharacters);
        }
        PresentablePartFolder partFolder = new PresentablePartFolder(folder);
        folder.setUnselectedCloseVisible(false);
        folder.setUnselectedImageVisible(true);
        TabbedStackPresentation result = new TabbedStackPresentation(site, partFolder, (ISystemMenu)new StandardViewSystemMenu(site));
        DefaultThemeListener themeListener = new DefaultThemeListener(folder, result.getTheme());
        result.getTheme().addListener(themeListener);
        new DefaultSimpleTabListener(result.getApiPreferences(), "SHOW_TRADITIONAL_STYLE_TABS", folder);
        return result;
    }

    public StackPresentation createStandaloneViewPresentation(Composite parent, IStackPresentationSite site, boolean showTitle) {
        if (showTitle) {
            return this.createViewPresentation(parent, site);
        }
        EmptyTabFolder folder = new EmptyTabFolder(parent, true);
        TabbedStackPresentation presentation = new TabbedStackPresentation(site, folder, (ISystemMenu)new StandardViewSystemMenu(site));
        return presentation;
    }
}

