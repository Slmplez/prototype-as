/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExecutableExtension
 *  org.eclipse.core.runtime.IExecutableExtensionFactory
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.ui;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExecutableExtension;
import org.eclipse.core.runtime.IExecutableExtensionFactory;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.ui.internal.ShowInMenu;
import org.eclipse.ui.internal.dialogs.ContentTypesPreferencePage;
import org.eclipse.ui.internal.dialogs.DecoratorsPreferencePage;
import org.eclipse.ui.internal.dialogs.EditorsPreferencePage;
import org.eclipse.ui.internal.dialogs.FileEditorsPreferencePage;
import org.eclipse.ui.internal.dialogs.PerspectivesPreferencePage;
import org.eclipse.ui.internal.dialogs.ViewsPreferencePage;
import org.eclipse.ui.internal.dialogs.WorkbenchPreferencePage;
import org.eclipse.ui.internal.keys.KeysPreferencePage;
import org.eclipse.ui.internal.keys.NewKeysPreferencePage;
import org.eclipse.ui.internal.progress.ProgressView;
import org.eclipse.ui.internal.themes.ColorsAndFontsPreferencePage;
import org.eclipse.ui.internal.wizards.preferences.PreferencesExportWizard;
import org.eclipse.ui.internal.wizards.preferences.PreferencesImportWizard;

public class ExtensionFactory
implements IExecutableExtensionFactory,
IExecutableExtension {
    public static final String APPEARANCE_PREFERENCE_PAGE = "appearancePreferencePage";
    public static final String COLORS_AND_FONTS_PREFERENCE_PAGE = "colorsAndFontsPreferencePage";
    public static final String DECORATORS_PREFERENCE_PAGE = "decoratorsPreferencePage";
    public static final String EDITORS_PREFERENCE_PAGE = "editorsPreferencePage";
    public static final String FILE_ASSOCIATIONS_PREFERENCE_PAGE = "fileAssociationsPreferencePage";
    public static final String KEYS_PREFERENCE_PAGE = "keysPreferencePage";
    public static final String NEW_KEYS_PREFERENCE_PAGE = "newKeysPreferencePage";
    public static final String PERSPECTIVES_PREFERENCE_PAGE = "perspectivesPreferencePage";
    public static final String PREFERENCES_EXPORT_WIZARD = "preferencesExportWizard";
    public static final String PREFERENCES_IMPORT_WIZARD = "preferencesImportWizard";
    public static final String PROGRESS_VIEW = "progressView";
    public static final String WORKBENCH_PREFERENCE_PAGE = "workbenchPreferencePage";
    public static final String CONTENT_TYPES_PREFERENCE_PAGE = "contentTypesPreferencePage";
    public static final String SHOW_IN_CONTRIBUTION = "showInContribution";
    private IConfigurationElement config;
    private String id;
    private String propertyName;

    private Object configure(Object obj) throws CoreException {
        if (obj instanceof IExecutableExtension) {
            ((IExecutableExtension)obj).setInitializationData(this.config, this.propertyName, null);
        }
        return obj;
    }

    public Object create() throws CoreException {
        if (APPEARANCE_PREFERENCE_PAGE.equals(this.id)) {
            return this.configure(new ViewsPreferencePage());
        }
        if (COLORS_AND_FONTS_PREFERENCE_PAGE.equals(this.id)) {
            return this.configure(new ColorsAndFontsPreferencePage());
        }
        if (DECORATORS_PREFERENCE_PAGE.equals(this.id)) {
            return this.configure(new DecoratorsPreferencePage());
        }
        if (EDITORS_PREFERENCE_PAGE.equals(this.id)) {
            return this.configure(new EditorsPreferencePage());
        }
        if (FILE_ASSOCIATIONS_PREFERENCE_PAGE.equals(this.id)) {
            return this.configure(new FileEditorsPreferencePage());
        }
        if (KEYS_PREFERENCE_PAGE.equals(this.id)) {
            return this.configure(new KeysPreferencePage());
        }
        if (NEW_KEYS_PREFERENCE_PAGE.equals(this.id)) {
            return this.configure(new NewKeysPreferencePage());
        }
        if (PERSPECTIVES_PREFERENCE_PAGE.equals(this.id)) {
            return this.configure(new PerspectivesPreferencePage());
        }
        if (PREFERENCES_EXPORT_WIZARD.equals(this.id)) {
            return this.configure(new PreferencesExportWizard());
        }
        if (PREFERENCES_IMPORT_WIZARD.equals(this.id)) {
            return this.configure(new PreferencesImportWizard());
        }
        if (PROGRESS_VIEW.equals(this.id)) {
            return this.configure(new ProgressView());
        }
        if (WORKBENCH_PREFERENCE_PAGE.equals(this.id)) {
            return this.configure(new WorkbenchPreferencePage());
        }
        if (CONTENT_TYPES_PREFERENCE_PAGE.equals(this.id)) {
            return this.configure(new ContentTypesPreferencePage());
        }
        if (SHOW_IN_CONTRIBUTION.equals(this.id)) {
            ShowInMenu showInMenu = new ShowInMenu();
            return showInMenu;
        }
        throw new CoreException((IStatus)new Status(4, "org.eclipse.ui", 0, "Unknown id in data argument for " + this.getClass(), null));
    }

    public void setInitializationData(IConfigurationElement config, String propertyName, Object data) throws CoreException {
        if (!(data instanceof String)) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.ui", 0, "Data argument must be a String for " + this.getClass(), null));
        }
        this.id = (String)data;
        this.config = config;
        this.propertyName = propertyName;
    }
}

