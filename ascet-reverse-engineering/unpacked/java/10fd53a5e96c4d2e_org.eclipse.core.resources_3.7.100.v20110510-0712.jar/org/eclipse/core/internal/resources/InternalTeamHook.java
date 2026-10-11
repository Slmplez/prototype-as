/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.resources;

import org.eclipse.core.internal.resources.Rules;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResourceRuleFactory;

public class InternalTeamHook {
    protected void setRuleFactory(IProject project, IResourceRuleFactory factory) {
        Workspace workspace = (Workspace)project.getWorkspace();
        ((Rules)workspace.getRuleFactory()).setRuleFactory(project, factory);
    }
}

