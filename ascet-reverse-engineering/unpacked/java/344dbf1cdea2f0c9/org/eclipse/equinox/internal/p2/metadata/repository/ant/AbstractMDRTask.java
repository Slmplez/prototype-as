/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.BuildException
 *  org.apache.tools.ant.Task
 *  org.eclipse.equinox.internal.p2.core.helpers.ServiceHelper
 *  org.eclipse.equinox.internal.p2.metadata.repository.Messages
 *  org.eclipse.equinox.internal.p2.repository.Activator
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.equinox.internal.p2.metadata.repository.ant;

import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Task;
import org.eclipse.equinox.internal.p2.core.helpers.ServiceHelper;
import org.eclipse.equinox.internal.p2.metadata.repository.Messages;
import org.eclipse.equinox.internal.p2.repository.Activator;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.osgi.framework.BundleContext;

public class AbstractMDRTask
extends Task {
    public static IProvisioningAgent getAgent() throws BuildException {
        IProvisioningAgent agent = (IProvisioningAgent)ServiceHelper.getService((BundleContext)Activator.getContext(), (String)IProvisioningAgent.SERVICE_NAME);
        if (agent == null) {
            throw new BuildException(Messages.no_provisioning_agent);
        }
        return agent;
    }
}

