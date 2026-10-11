/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.eclipse.core.runtime.preferences.IExportedPreferences
 *  org.eclipse.core.runtime.preferences.IPreferenceFilter
 *  org.eclipse.core.runtime.preferences.IPreferencesService
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.wizards.preferences;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.IExportedPreferences;
import org.eclipse.core.runtime.preferences.IPreferenceFilter;
import org.eclipse.core.runtime.preferences.IPreferencesService;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.preferences.PreferenceTransferElement;
import org.eclipse.ui.internal.wizards.preferences.PreferencesMessages;
import org.eclipse.ui.internal.wizards.preferences.WizardPreferencesPage;

public class WizardPreferencesImportPage1
extends WizardPreferencesPage {
    protected WizardPreferencesImportPage1(String pageName) {
        super(pageName);
        this.setTitle(PreferencesMessages.WizardPreferencesImportPage1_importTitle);
        this.setDescription(PreferencesMessages.WizardPreferencesImportPage1_importDescription);
    }

    public WizardPreferencesImportPage1() {
        this("preferencesImportPage1");
    }

    public void createControl(Composite parent) {
        super.createControl(parent);
        PlatformUI.getWorkbench().getHelpSystem().setHelp(this.getControl(), "org.eclipse.ui.preferences_import_wizard_page");
    }

    protected String getAllButtonText() {
        return PreferencesMessages.WizardPreferencesImportPage1_all;
    }

    protected String getChooseButtonText() {
        return PreferencesMessages.WizardPreferencesImportPage1_choose;
    }

    protected PreferenceTransferElement[] getTransfers() {
        if (this.validFromFile()) {
            FileInputStream fis;
            try {
                fis = new FileInputStream(this.getDestinationValue());
            }
            catch (FileNotFoundException e) {
                WorkbenchPlugin.log(e.getMessage(), e);
                return new PreferenceTransferElement[0];
            }
            IPreferencesService service = Platform.getPreferencesService();
            try {
                IExportedPreferences prefs = service.readPreferences((InputStream)fis);
                PreferenceTransferElement[] transfers = super.getTransfers();
                IPreferenceFilter[] filters = new IPreferenceFilter[transfers.length];
                int i = 0;
                while (i < transfers.length) {
                    PreferenceTransferElement transfer = transfers[i];
                    filters[i] = transfer.getFilter();
                    ++i;
                }
                IPreferenceFilter[] matches = service.matches((IEclipsePreferences)prefs, filters);
                PreferenceTransferElement[] returnTransfers = new PreferenceTransferElement[matches.length];
                int index = 0;
                int i2 = 0;
                while (i2 < matches.length) {
                    IPreferenceFilter filter = matches[i2];
                    int j = 0;
                    while (j < transfers.length) {
                        PreferenceTransferElement element = transfers[j];
                        if (element.getFilter().equals(filter)) {
                            returnTransfers[index++] = element;
                        }
                        ++j;
                    }
                    ++i2;
                }
                PreferenceTransferElement[] destTransfers = new PreferenceTransferElement[index];
                System.arraycopy(returnTransfers, 0, destTransfers, 0, index);
                PreferenceTransferElement[] preferenceTransferElementArray = destTransfers;
                return preferenceTransferElementArray;
            }
            catch (CoreException coreException) {
            }
            finally {
                try {
                    fis.close();
                }
                catch (IOException e) {
                    WorkbenchPlugin.log(e.getMessage(), e);
                }
            }
        }
        return new PreferenceTransferElement[0];
    }

    private boolean validFromFile() {
        File fromFile = new File(this.getDestinationValue());
        return fromFile.exists() && !fromFile.isDirectory();
    }

    protected void setPreferenceTransfers() {
        super.setPreferenceTransfers();
        if (this.validFromFile() && this.transfersTree.getViewer().getTree().getItemCount() == 0) {
            this.descText.setText(PreferencesMessages.WizardPreferences_noSpecificPreferenceDescription);
        } else {
            this.descText.setText("");
        }
    }

    protected void createTransferArea(Composite composite) {
        this.createDestinationGroup(composite);
        this.createTransfersList(composite);
    }

    protected String getDestinationLabel() {
        return PreferencesMessages.WizardPreferencesImportPage1_file;
    }

    protected boolean transfer(IPreferenceFilter[] filters) {
        block19: {
            File importFile = new File(this.getDestinationValue());
            FileInputStream fis = null;
            try {
                if (filters.length <= 0) break block19;
                try {
                    fis = new FileInputStream(importFile);
                }
                catch (FileNotFoundException e) {
                    WorkbenchPlugin.log(e.getMessage(), e);
                    MessageDialog.open((int)1, (Shell)this.getControl().getShell(), (String)new String(), (String)e.getLocalizedMessage(), (int)0x10000000);
                    if (fis != null) {
                        try {
                            fis.close();
                        }
                        catch (IOException e2) {
                            WorkbenchPlugin.log(e2.getMessage(), e2);
                            MessageDialog.open((int)1, (Shell)this.getControl().getShell(), (String)new String(), (String)e2.getLocalizedMessage(), (int)0x10000000);
                        }
                    }
                    return false;
                }
                IPreferencesService service = Platform.getPreferencesService();
                try {
                    IExportedPreferences prefs = service.readPreferences((InputStream)fis);
                    service.applyPreferences((IEclipsePreferences)prefs, filters);
                }
                catch (CoreException e) {
                    WorkbenchPlugin.log(e.getMessage(), e);
                    MessageDialog.open((int)1, (Shell)this.getControl().getShell(), (String)new String(), (String)e.getLocalizedMessage(), (int)0x10000000);
                    if (fis != null) {
                        try {
                            fis.close();
                        }
                        catch (IOException e3) {
                            WorkbenchPlugin.log(e3.getMessage(), e3);
                            MessageDialog.open((int)1, (Shell)this.getControl().getShell(), (String)new String(), (String)e3.getLocalizedMessage(), (int)0x10000000);
                        }
                    }
                    return false;
                }
            }
            finally {
                if (fis != null) {
                    try {
                        fis.close();
                    }
                    catch (IOException e) {
                        WorkbenchPlugin.log(e.getMessage(), e);
                        MessageDialog.open((int)1, (Shell)this.getControl().getShell(), (String)new String(), (String)e.getLocalizedMessage(), (int)0x10000000);
                    }
                }
            }
        }
        return true;
    }

    public void handleEvent(Event e) {
        if (e.widget == this.destinationNameField) {
            this.setPreferenceTransfers();
        }
        super.handleEvent(e);
    }

    protected String getFileDialogTitle() {
        return PreferencesMessages.WizardPreferencesImportPage1_title;
    }

    protected int getFileDialogStyle() {
        return 0x10001000;
    }

    protected boolean validDestination() {
        return super.validDestination() && this.validFromFile();
    }

    protected String getInvalidDestinationMessage() {
        return PreferencesMessages.WizardPreferencesImportPage1_invalidPrefFile;
    }

    protected boolean shouldSaveTransferAll() {
        return false;
    }
}

