/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.util.Util
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.program.Program
 *  org.osgi.framework.Bundle
 */
package org.eclipse.ui.internal.misc;

import java.io.File;
import java.io.IOException;
import java.net.URL;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.util.Util;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.program.Program;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.registry.EditorDescriptor;
import org.osgi.framework.Bundle;

public class ExternalEditor {
    private IPath filePath;
    private EditorDescriptor descriptor;

    public ExternalEditor(IPath newFilePath, EditorDescriptor editorDescriptor) {
        this.filePath = newFilePath;
        this.descriptor = editorDescriptor;
    }

    public void open() throws CoreException {
        Program program = this.descriptor.getProgram();
        if (program != null) {
            String path = "";
            if (this.filePath != null && program.execute(path = this.filePath.toOSString())) {
                return;
            }
            throw new CoreException((IStatus)new Status(4, WorkbenchPlugin.PI_WORKBENCH, 0, NLS.bind((String)WorkbenchMessages.ExternalEditor_errorMessage, (Object)path), null));
        }
        this.openWithUserDefinedProgram();
    }

    public void openWithUserDefinedProgram() throws CoreException {
        String programFileName = null;
        IConfigurationElement configurationElement = this.descriptor.getConfigurationElement();
        if (configurationElement != null) {
            try {
                URL localName;
                File file;
                Bundle bundle = Platform.getBundle((String)configurationElement.getNamespace());
                URL entry = bundle.getEntry(this.descriptor.getFileName());
                if (entry != null && (file = new File((localName = Platform.asLocalURL((URL)entry)).getFile())).exists()) {
                    programFileName = file.getAbsolutePath();
                }
            }
            catch (IOException iOException) {}
        }
        if (programFileName == null) {
            programFileName = this.descriptor.getFileName();
        }
        if (this.filePath == null) {
            throw new CoreException((IStatus)new Status(4, WorkbenchPlugin.PI_WORKBENCH, 0, NLS.bind((String)WorkbenchMessages.ExternalEditor_errorMessage, (Object)programFileName), null));
        }
        String path = this.filePath.toOSString();
        try {
            if (Util.isMac()) {
                Runtime.getRuntime().exec(new String[]{"open", "-a", programFileName, path});
            } else {
                Runtime.getRuntime().exec(new String[]{programFileName, path});
            }
        }
        catch (Exception e) {
            throw new CoreException((IStatus)new Status(4, WorkbenchPlugin.PI_WORKBENCH, 0, NLS.bind((String)WorkbenchMessages.ExternalEditor_errorMessage, (Object)programFileName), (Throwable)e));
        }
    }
}

