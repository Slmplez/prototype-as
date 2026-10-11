/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.internal.p2.core.helpers.FileUtils
 *  org.eclipse.equinox.internal.p2.jarprocessor.UnpackStep
 *  org.eclipse.equinox.internal.p2.jarprocessor.Utils
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor
 *  org.eclipse.equinox.p2.repository.artifact.IProcessingStepDescriptor
 *  org.eclipse.internal.provisional.equinox.p2.jarprocessor.JarProcessorExecutor
 *  org.eclipse.internal.provisional.equinox.p2.jarprocessor.JarProcessorExecutor$Options
 */
package org.eclipse.equinox.internal.p2.artifact.processors.pack200;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.artifact.processing.AbstractBufferingStep;
import org.eclipse.equinox.internal.p2.core.helpers.FileUtils;
import org.eclipse.equinox.internal.p2.jarprocessor.UnpackStep;
import org.eclipse.equinox.internal.p2.jarprocessor.Utils;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor;
import org.eclipse.equinox.p2.repository.artifact.IProcessingStepDescriptor;
import org.eclipse.internal.provisional.equinox.p2.jarprocessor.JarProcessorExecutor;

public class Pack200ProcessorStep
extends AbstractBufferingStep {
    public static final String PACKED_SUFFIX = ".pack.gz";
    private static boolean detailedResult = false;
    private File incoming;

    protected OutputStream createIncomingStream() throws IOException {
        this.incoming = File.createTempFile("p2.optimizers.incoming", ".jar.pack.gz");
        return new BufferedOutputStream(new FileOutputStream(this.incoming));
    }

    public void initialize(IProvisioningAgent agent, IProcessingStepDescriptor descriptor, IArtifactDescriptor context) {
        super.initialize(agent, descriptor, context);
        if (!UnpackStep.canUnpack()) {
            Status status = null;
            if (detailedResult) {
                status = new Status(4, "org.eclipse.equinox.p2.artifact.repository", "Unpack facility not configured.");
                detailedResult = true;
            } else {
                String[] locations = Utils.getPack200Commands((String)"unpack200");
                StringBuffer locationTried = new StringBuffer(100);
                int i = 0;
                while (i < locations.length) {
                    locationTried.append(locations[i]).append(", ");
                    ++i;
                }
                status = new Status(4, "org.eclipse.equinox.p2.artifact.repository", "Unpack facility not configured. The locations searched for unpack200 are: " + locationTried);
            }
            this.setStatus((IStatus)status);
        }
    }

    protected void cleanupTempFiles() {
        super.cleanupTempFiles();
        if (this.incoming != null) {
            this.incoming.delete();
        }
    }

    protected void performProcessing() throws IOException {
        File resultFile = null;
        try {
            resultFile = this.process();
            if (resultFile.length() > 0L) {
                BufferedInputStream resultStream = new BufferedInputStream(new FileInputStream(resultFile));
                FileUtils.copyStream((InputStream)resultStream, (boolean)true, (OutputStream)this.getDestination(), (boolean)false);
            } else {
                this.setStatus((IStatus)new Status(4, "org.eclipse.equinox.p2.artifact.repository", "Unpacking fails because intermediate file is empty: " + resultFile));
            }
        }
        finally {
            if (resultFile != null) {
                resultFile.delete();
            }
        }
    }

    protected File process() throws IOException {
        JarProcessorExecutor.Options options = new JarProcessorExecutor.Options();
        options.unpack = true;
        options.processAll = false;
        options.input = this.incoming;
        options.outputDir = this.getWorkDir().getPath();
        options.verbose = false;
        new JarProcessorExecutor().runJarProcessor(options);
        return new File(this.getWorkDir(), this.incoming.getName().substring(0, this.incoming.getName().length() - PACKED_SUFFIX.length()));
    }
}

