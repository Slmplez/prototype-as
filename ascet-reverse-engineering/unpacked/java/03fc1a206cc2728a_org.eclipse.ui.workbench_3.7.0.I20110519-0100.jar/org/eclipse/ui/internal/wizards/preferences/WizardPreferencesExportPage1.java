/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.eclipse.core.runtime.preferences.IPreferenceFilter
 *  org.eclipse.core.runtime.preferences.IPreferencesService
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.wizards.preferences;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.IPreferenceFilter;
import org.eclipse.core.runtime.preferences.IPreferencesService;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.preferences.PreferenceTransferElement;
import org.eclipse.ui.internal.wizards.preferences.PreferencesMessages;
import org.eclipse.ui.internal.wizards.preferences.WizardPreferencesPage;

public class WizardPreferencesExportPage1
extends WizardPreferencesPage {
    private static final String PREFERENCESEXPORTPAGE1 = "preferencesExportPage1";

    protected WizardPreferencesExportPage1(String name) {
        super(name);
        this.setTitle(PreferencesMessages.WizardPreferencesExportPage1_exportTitle);
        this.setDescription(PreferencesMessages.WizardPreferencesExportPage1_exportDescription);
    }

    public WizardPreferencesExportPage1() {
        this(PREFERENCESEXPORTPAGE1);
    }

    protected String getOutputSuffix() {
        return ".epf";
    }

    protected String getDestinationValue() {
        String idealSuffix = this.getOutputSuffix();
        String destinationText = super.getDestinationValue();
        if (destinationText.length() != 0 && !destinationText.endsWith(File.separator)) {
            int dotIndex = destinationText.lastIndexOf(46);
            if (dotIndex != -1) {
                int pathSepIndex = destinationText.lastIndexOf(File.separator);
                if (pathSepIndex != -1 && dotIndex < pathSepIndex) {
                    destinationText = String.valueOf(destinationText) + idealSuffix;
                }
            } else {
                destinationText = String.valueOf(destinationText) + idealSuffix;
            }
        }
        return destinationText;
    }

    protected String getAllButtonText() {
        return PreferencesMessages.WizardPreferencesExportPage1_all;
    }

    protected String getChooseButtonText() {
        return PreferencesMessages.WizardPreferencesExportPage1_choose;
    }

    protected void createTransferArea(Composite composite) {
        this.createTransfersList(composite);
        this.createDestinationGroup(composite);
        this.createOptionsGroup(composite);
    }

    public void createControl(Composite parent) {
        super.createControl(parent);
        PlatformUI.getWorkbench().getHelpSystem().setHelp(this.getControl(), "org.eclipse.ui.preferences_export_wizard_page");
    }

    protected String getDestinationLabel() {
        return PreferencesMessages.WizardPreferencesExportPage1_file;
    }

    protected PreferenceTransferElement[] getTransfers() {
        PreferenceTransferElement[] elements = super.getTransfers();
        PreferenceTransferElement[] returnElements = new PreferenceTransferElement[elements.length];
        IPreferenceFilter[] filters = new IPreferenceFilter[1];
        IPreferencesService service = Platform.getPreferencesService();
        int count = 0;
        try {
            int i = 0;
            while (i < elements.length) {
                PreferenceTransferElement element = elements[i];
                filters[0] = element.getFilter();
                IPreferenceFilter[] matches = service.matches((IEclipsePreferences)service.getRootNode().node("instance"), filters);
                if (matches.length > 0) {
                    returnElements[count++] = element;
                }
                ++i;
            }
            elements = new PreferenceTransferElement[count];
            System.arraycopy(returnElements, 0, elements, 0, count);
        }
        catch (CoreException e) {
            WorkbenchPlugin.log(e.getMessage(), e);
            return new PreferenceTransferElement[0];
        }
        return elements;
    }

    protected boolean transfer(IPreferenceFilter[] transfers) {
        block20: {
            File exportFile = new File(this.getDestinationValue());
            if (!this.ensureTargetIsValid(exportFile)) {
                return false;
            }
            FileOutputStream fos = null;
            try {
                if (transfers.length <= 0) break block20;
                try {
                    fos = new FileOutputStream(exportFile);
                }
                catch (FileNotFoundException e) {
                    WorkbenchPlugin.log(e.getMessage(), e);
                    MessageDialog.open((int)1, (Shell)this.getControl().getShell(), (String)new String(), (String)e.getLocalizedMessage(), (int)0x10000000);
                    if (fos != null) {
                        try {
                            fos.close();
                        }
                        catch (IOException e2) {
                            WorkbenchPlugin.log(e2.getMessage(), e2);
                            MessageDialog.open((int)1, (Shell)this.getControl().getShell(), (String)new String(), (String)e2.getLocalizedMessage(), (int)0x10000000);
                            return false;
                        }
                    }
                    return false;
                }
                IPreferencesService service = Platform.getPreferencesService();
                try {
                    service.exportPreferences(service.getRootNode(), transfers, (OutputStream)fos);
                }
                catch (CoreException e) {
                    WorkbenchPlugin.log(e.getMessage(), e);
                    MessageDialog.open((int)1, (Shell)this.getControl().getShell(), (String)new String(), (String)e.getLocalizedMessage(), (int)0x10000000);
                    if (fos != null) {
                        try {
                            fos.close();
                        }
                        catch (IOException e3) {
                            WorkbenchPlugin.log(e3.getMessage(), e3);
                            MessageDialog.open((int)1, (Shell)this.getControl().getShell(), (String)new String(), (String)e3.getLocalizedMessage(), (int)0x10000000);
                            return false;
                        }
                    }
                    return false;
                }
            }
            finally {
                if (fos != null) {
                    try {
                        fos.close();
                    }
                    catch (IOException e) {
                        WorkbenchPlugin.log(e.getMessage(), e);
                        MessageDialog.open((int)1, (Shell)this.getControl().getShell(), (String)new String(), (String)e.getLocalizedMessage(), (int)0x10000000);
                        return false;
                    }
                }
            }
        }
        return true;
    }

    protected String getFileDialogTitle() {
        return PreferencesMessages.WizardPreferencesExportPage1_title;
    }

    protected int getFileDialogStyle() {
        return 0x10002000;
    }

    protected String getInvalidDestinationMessage() {
        return PreferencesMessages.WizardPreferencesExportPage1_noPrefFile;
    }

    protected boolean shouldSaveTransferAll() {
        return true;
    }
}

