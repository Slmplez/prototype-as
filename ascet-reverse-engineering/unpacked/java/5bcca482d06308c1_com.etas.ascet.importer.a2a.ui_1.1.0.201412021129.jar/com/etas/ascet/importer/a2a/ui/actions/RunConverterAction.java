/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.etas.ascet.importer.a2a.AutosarVersion
 *  com.etas.ascet.importer.a2a.Converter
 *  com.etas.ascet.importer.a2a.config.IConfig
 *  com.etas.ascet.importer.a2a.logger.Logger
 *  com.etas.ascet.webservice.AaaToolInterfaceCustom
 *  org.apache.commons.lang.StringUtils
 *  org.eclipse.core.resources.IMarker
 *  org.eclipse.core.resources.IWorkspaceRoot
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.dialogs.MessageDialogWithToggle
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.ui.PlatformUI
 *  org.eclipse.ui.console.MessageConsole
 */
package com.etas.ascet.importer.a2a.ui.actions;

import com.etas.ascet.importer.a2a.AutosarVersion;
import com.etas.ascet.importer.a2a.Converter;
import com.etas.ascet.importer.a2a.config.IConfig;
import com.etas.ascet.importer.a2a.logger.Logger;
import com.etas.ascet.importer.a2a.ui.Activator;
import com.etas.ascet.importer.a2a.ui.ConsoleFactory;
import com.etas.ascet.importer.a2a.ui.ConverterGUIModel;
import com.etas.ascet.webservice.AaaToolInterfaceCustom;
import java.io.FileNotFoundException;
import java.util.List;
import javax.xml.ws.WebServiceException;
import org.apache.commons.lang.StringUtils;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jface.action.Action;
import org.eclipse.jface.dialogs.MessageDialogWithToggle;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.console.MessageConsole;

public class RunConverterAction
extends Action {
    private static final String DON_T_SHOW_THIS_MESSAGE_AGAIN = "Don't show this message again";
    private static final String PROCEED_WITHOUT_TRANSFER = "Do you want to proceed conversion without transfering results to ASCET?";
    private static final String TRANSFER_TO_ASCET_STARTED = "Transfer to Ascet started";
    private static final String TRANSFER_CANCELED_BY_USER = "Transfer canceled by user";
    private final IWorkspaceRoot root = ResourcesPlugin.getWorkspace().getRoot();

    public RunConverterAction(String label) {
        super(label);
        this.setId("com.etas.ascet.importer.a2a.ui.cmd.run");
        this.setImageDescriptor(Activator.getImageDescriptor("/icons/AscetRes_GENERALTASKINIT.ico"));
        this.setActionDefinitionId("com.etas.ascet.importer.a2a.ui.cmd.run");
    }

    private IConfig updateConfig() {
        ConverterGUIModel config = ConverterGUIModel.getInstance();
        if (config.getInputFiles().isEmpty()) {
            this.report("no input files given");
            this.setMarker("At least one input file is required, before starting the importer job", "333");
            return null;
        }
        if (config.getOutputFolder().isEmpty()) {
            this.report("no output folder defined");
            this.setMarker("Set output folder, before starting the importer job", "332");
            return null;
        }
        IPreferenceStore preferenceStore = Activator.getDefault().getPreferenceStore();
        config.setNameSpaceRequired(preferenceStore.getBoolean("NameSpaceRequired"));
        config.setProjectsRequired(preferenceStore.getBoolean("ProjectsRequired"));
        config.setTransferRequired(preferenceStore.getBoolean("TransferRequired"));
        config.setAsError(preferenceStore.getString("AsError"));
        config.setAsWarning(preferenceStore.getString("AsWarning"));
        return config;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void run() {
        MessageConsole console = ConsoleFactory.getConsole();
        console.clearConsole();
        IConfig config = this.updateConfig();
        if (config == null) {
            return;
        }
        if (config.isTransferRequired()) {
            try {
                AaaToolInterfaceCustom toolInterface = new AaaToolInterfaceCustom(32510);
                String databasePath = toolInterface.databasePath();
                if (StringUtils.isEmpty((String)databasePath) || StringUtils.equalsIgnoreCase((String)databasePath, (String)"No database.")) {
                    String message = String.format("Attention!\nThe option '%s' is enabled.\nBut there is no open database/workspace.\n%s", "Transfer results to the database/workspace currently opened in ASCET", PROCEED_WITHOUT_TRANSFER);
                    if (!this.openDialogBox("PromptNoDataBase", message, DON_T_SHOW_THIS_MESSAGE_AGAIN)) return;
                    config.setTransferRequired(false);
                } else {
                    String message = String.format("Attention!\nConverted AUTOSAR items will be written in the currently opened ASCET database/worksapce\n%s.\nThe existing objects in this database/workspace will be overwritten, if in the same name space and with the same name.\nMake sure you have a backup of this database/workspace.\nDo you want to proceed?", databasePath);
                    if (!this.openDialogBox("PromptOnTransfer", message, DON_T_SHOW_THIS_MESSAGE_AGAIN)) {
                        return;
                    }
                }
            }
            catch (WebServiceException webServiceException) {
                String message = String.format("Attention!\nThe option '%s' is enabled.\nBut there is no running ASCET instance.\n%s", "Transfer results to the database/workspace currently opened in ASCET", PROCEED_WITHOUT_TRANSFER);
                if (!this.openDialogBox("PromptNoASCETRunning", message, DON_T_SHOW_THIS_MESSAGE_AGAIN)) return;
                config.setTransferRequired(false);
            }
        }
        ConverterJob job = new ConverterJob("Autosar to ASCET converter job", config);
        job.schedule();
    }

    private boolean openDialogBox(String prefKey, String messageText, String confirmText) {
        Shell shell = PlatformUI.getWorkbench().getActiveWorkbenchWindow().getShell();
        IPreferenceStore preferenceStore = Activator.getDefault().getPreferenceStore();
        boolean promptNeeded = preferenceStore.getBoolean(prefKey);
        if (promptNeeded) {
            MessageDialogWithToggle dialog = MessageDialogWithToggle.openOkCancelConfirm((Shell)shell, (String)TRANSFER_TO_ASCET_STARTED, (String)messageText, (String)confirmText, (boolean)false, null, null);
            if (1 == dialog.getReturnCode()) {
                this.report(TRANSFER_CANCELED_BY_USER);
                return false;
            }
            preferenceStore.setValue(prefKey, !dialog.getToggleState());
        }
        return true;
    }

    private void setMarker(String text, String ID) {
        try {
            IMarker marker = this.root.createMarker("org.eclipse.core.resources.problemmarker");
            if (marker.exists()) {
                marker.setAttribute("message", (Object)text);
                marker.setAttribute("priority", 2);
                marker.setAttribute("location", (Object)"input list view");
                marker.setAttribute("sourceId", (Object)ID);
            }
        }
        catch (CoreException coreException) {}
    }

    private void report(String text) {
        Logger logger = new Logger("", "");
        logger.error(text);
    }

    private class ConverterJob
    extends Job {
        private IConfig config;

        private ConverterJob(String name, IConfig aConfig) {
            super(name);
            this.setUser(true);
            this.config = aConfig;
        }

        protected IStatus run(IProgressMonitor monitor) {
            try {
                AutosarVersion ver = Converter.checkValidVersion((List)this.config.getInputFiles());
                if (ver != AutosarVersion.UNKNOWN && ver != AutosarVersion.INCONSISTENT) {
                    Converter converter = ver.getConverter();
                    converter.setConfig(this.config);
                    converter.setProgress(monitor);
                    converter.run();
                    return Status.OK_STATUS;
                }
            }
            catch (InstantiationException e) {
                e.printStackTrace();
            }
            catch (IllegalAccessException e) {
                e.printStackTrace();
            }
            catch (FileNotFoundException fileNotFoundException) {}
            return Status.CANCEL_STATUS;
        }
    }
}

