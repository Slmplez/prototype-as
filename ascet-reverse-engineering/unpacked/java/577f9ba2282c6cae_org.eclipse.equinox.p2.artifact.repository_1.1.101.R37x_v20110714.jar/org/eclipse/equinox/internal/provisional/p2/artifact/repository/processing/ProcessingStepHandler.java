/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.RegistryFactory
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.internal.provisional.p2.repository.IStateful
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor
 *  org.eclipse.equinox.p2.repository.artifact.IProcessingStepDescriptor
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.provisional.p2.artifact.repository.processing;

import java.io.OutputStream;
import java.util.ArrayList;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.RegistryFactory;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.artifact.repository.simple.SimpleArtifactRepository;
import org.eclipse.equinox.internal.provisional.p2.artifact.repository.processing.Messages;
import org.eclipse.equinox.internal.provisional.p2.artifact.repository.processing.ProcessingStep;
import org.eclipse.equinox.internal.provisional.p2.repository.IStateful;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor;
import org.eclipse.equinox.p2.repository.artifact.IProcessingStepDescriptor;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ProcessingStepHandler {
    private static final String PROCESSING_STEPS_EXTENSION_ID = "org.eclipse.equinox.p2.artifact.repository.processingSteps";

    public static IStatus checkStatus(OutputStream output) {
        return ProcessingStepHandler.getStatus(output, true);
    }

    public static boolean canProcess(IArtifactDescriptor descriptor) {
        IExtensionRegistry registry = RegistryFactory.getRegistry();
        IExtensionPoint point = registry.getExtensionPoint(PROCESSING_STEPS_EXTENSION_ID);
        if (point == null) {
            return false;
        }
        IProcessingStepDescriptor[] steps = descriptor.getProcessingSteps();
        int i = 0;
        while (i < steps.length) {
            if (point.getExtension(steps[i].getProcessorId()) == null) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public static IStatus getStatus(OutputStream stream, boolean deep) {
        if (!deep) {
            return ProcessingStepHandler.getStatus(stream);
        }
        ArrayList<IStatus> list = new ArrayList<IStatus>();
        int severity = ProcessingStepHandler.collectStatus(stream, list);
        if (severity == 0) {
            return Status.OK_STATUS;
        }
        IStatus[] result = list.toArray(new IStatus[list.size()]);
        return new MultiStatus("org.eclipse.equinox.p2.artifact.repository", severity, result, Messages.processing_step_results, null);
    }

    public static IStatus getErrorStatus(OutputStream stream) {
        ArrayList<IStatus> list = new ArrayList<IStatus>();
        int severity = ProcessingStepHandler.collectErrorStatus(stream, list);
        if (severity == 0) {
            return Status.OK_STATUS;
        }
        IStatus[] result = list.toArray(new IStatus[list.size()]);
        return new MultiStatus("org.eclipse.equinox.p2.artifact.repository", 0, result, Messages.processing_step_results, null);
    }

    private static int collectErrorStatus(OutputStream stream, ArrayList<IStatus> list) {
        IStatus status = ProcessingStepHandler.getStatus(stream);
        if (!status.isOK()) {
            list.add(status);
        }
        if (status.matches(4)) {
            return status.getSeverity();
        }
        OutputStream destination = ProcessingStepHandler.getDestination(stream);
        if (destination == null || !(destination instanceof IStateful)) {
            return status.getSeverity();
        }
        int result = ProcessingStepHandler.collectErrorStatus(destination, list);
        return status.getSeverity() > result ? status.getSeverity() : result;
    }

    public static IStatus getStatus(OutputStream stream) {
        if (stream instanceof IStateful) {
            return ((IStateful)stream).getStatus();
        }
        return Status.OK_STATUS;
    }

    private static int collectStatus(OutputStream stream, ArrayList<IStatus> list) {
        IStatus status = ProcessingStepHandler.getStatus(stream);
        list.add(status);
        OutputStream destination = ProcessingStepHandler.getDestination(stream);
        if (destination == null || !(destination instanceof IStateful)) {
            return status.getSeverity();
        }
        int result = ProcessingStepHandler.collectStatus(destination, list);
        return status.getSeverity() > result ? status.getSeverity() : result;
    }

    private static OutputStream getDestination(OutputStream stream) {
        if (stream instanceof ProcessingStep) {
            return ((ProcessingStep)stream).getDestination();
        }
        if (stream instanceof SimpleArtifactRepository.ArtifactOutputStream) {
            return ((SimpleArtifactRepository.ArtifactOutputStream)stream).getDestination();
        }
        return null;
    }

    public ProcessingStep[] create(IProvisioningAgent agent, IProcessingStepDescriptor[] descriptors, IArtifactDescriptor context) {
        ProcessingStep[] result = new ProcessingStep[descriptors.length];
        int i = 0;
        while (i < descriptors.length) {
            result[i] = this.create(agent, descriptors[i], context);
            ++i;
        }
        return result;
    }

    public ProcessingStep create(IProvisioningAgent agent, IProcessingStepDescriptor descriptor, IArtifactDescriptor context) {
        Exception error;
        IExtensionRegistry registry = RegistryFactory.getRegistry();
        IExtension extension = registry.getExtension(PROCESSING_STEPS_EXTENSION_ID, descriptor.getProcessorId());
        if (extension != null) {
            IConfigurationElement[] config = extension.getConfigurationElements();
            try {
                Object object = config[0].createExecutableExtension("class");
                ProcessingStep step = (ProcessingStep)object;
                step.initialize(agent, descriptor, context);
                return step;
            }
            catch (Exception e) {
                error = e;
            }
        } else {
            error = new ProcessingStepHandlerException(NLS.bind((String)Messages.cannot_get_extension, (Object)PROCESSING_STEPS_EXTENSION_ID, (Object)descriptor.getProcessorId()));
        }
        int severity = descriptor.isRequired() ? 4 : 1;
        EmptyProcessingStep result = new EmptyProcessingStep();
        result.setStatus((IStatus)new Status(severity, "org.eclipse.equinox.p2.artifact.repository", new StringBuffer(String.valueOf(Messages.cannot_instantiate_step)).append(descriptor.getProcessorId()).toString(), (Throwable)error));
        return result;
    }

    public OutputStream createAndLink(IProvisioningAgent agent, IProcessingStepDescriptor[] descriptors, IArtifactDescriptor context, OutputStream output, IProgressMonitor monitor) {
        if (descriptors == null) {
            return output;
        }
        ProcessingStep[] steps = this.create(agent, descriptors, context);
        return this.link(steps, output, monitor);
    }

    public OutputStream link(ProcessingStep[] steps, OutputStream output, IProgressMonitor monitor) {
        OutputStream previous = output;
        int i = steps.length - 1;
        while (i >= 0) {
            ProcessingStep step = steps[i];
            step.link(previous, monitor);
            previous = step;
            --i;
        }
        if (steps.length == 0) {
            return previous;
        }
        SimpleArtifactRepository.ArtifactOutputStream lastLink = this.getArtifactStream(previous);
        if (lastLink != null) {
            lastLink.setFirstLink(previous);
        }
        return previous;
    }

    private SimpleArtifactRepository.ArtifactOutputStream getArtifactStream(OutputStream stream) {
        OutputStream current = stream;
        while (current instanceof ProcessingStep) {
            current = ((ProcessingStep)current).getDestination();
        }
        if (current instanceof SimpleArtifactRepository.ArtifactOutputStream) {
            return (SimpleArtifactRepository.ArtifactOutputStream)current;
        }
        return null;
    }

    protected static final class EmptyProcessingStep
    extends ProcessingStep {
        protected EmptyProcessingStep() {
        }
    }

    protected static final class ProcessingStepHandlerException
    extends Exception {
        private static final long serialVersionUID = 1L;

        public ProcessingStepHandlerException(String message) {
            super(message);
        }
    }
}

