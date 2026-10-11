/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jdt.launching.environments.IExecutionEnvironment
 *  org.eclipse.osgi.util.ManifestElement
 */
package org.eclipse.pde.internal.core.text.bundle;

import java.util.ArrayList;
import org.eclipse.jdt.launching.environments.IExecutionEnvironment;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.pde.internal.core.ibundle.IBundle;
import org.eclipse.pde.internal.core.text.bundle.CompositeManifestHeader;
import org.eclipse.pde.internal.core.text.bundle.ExecutionEnvironment;
import org.eclipse.pde.internal.core.text.bundle.ManifestHeader;
import org.eclipse.pde.internal.core.text.bundle.PDEManifestElement;

public class RequiredExecutionEnvironmentHeader
extends CompositeManifestHeader {
    private static final long serialVersionUID = 1L;

    public RequiredExecutionEnvironmentHeader(String name, String value, IBundle bundle, String lineDelimiter) {
        super(name, value, bundle, lineDelimiter);
    }

    protected PDEManifestElement createElement(ManifestElement element) {
        return new ExecutionEnvironment((ManifestHeader)this, element.getValue());
    }

    public boolean hasExecutionEnvironment(IExecutionEnvironment env) {
        return this.hasElement(env.getId());
    }

    public void addExecutionEnvironment(IExecutionEnvironment env) {
        this.addManifestElement(new ExecutionEnvironment((ManifestHeader)this, env.getId()));
    }

    public void addExecutionEnvironment(ExecutionEnvironment environment, int index) {
        this.addManifestElement(environment, index, true);
    }

    public void addExecutionEnvironments(Object[] envs) {
        ArrayList<ExecutionEnvironment> list = new ArrayList<ExecutionEnvironment>(envs.length);
        int i = 0;
        while (i < envs.length) {
            ExecutionEnvironment env = null;
            if (envs[i] instanceof ExecutionEnvironment) {
                env = (ExecutionEnvironment)envs[i];
            } else if (envs[i] instanceof IExecutionEnvironment) {
                env = new ExecutionEnvironment((ManifestHeader)this, ((IExecutionEnvironment)envs[i]).getId());
            }
            if (env != null && !this.hasElement(env.getName())) {
                list.add(env);
            }
            ++i;
        }
        if (list.size() > 0) {
            this.addManifestElements(list.toArray(new ExecutionEnvironment[list.size()]));
        }
    }

    public void addExecutionEnvironments(ExecutionEnvironment[] envs) {
        this.addManifestElements(envs);
    }

    public ExecutionEnvironment removeExecutionEnvironment(ExecutionEnvironment env) {
        return (ExecutionEnvironment)this.removeManifestElement(env);
    }

    public ExecutionEnvironment removeExecutionEnvironmentUnique(ExecutionEnvironment environment) {
        return (ExecutionEnvironment)this.removeManifestElement(environment, true);
    }

    public ExecutionEnvironment[] getEnvironments() {
        PDEManifestElement[] elements = this.getElements();
        ExecutionEnvironment[] result = new ExecutionEnvironment[elements.length];
        System.arraycopy(elements, 0, result, 0, elements.length);
        return result;
    }
}

