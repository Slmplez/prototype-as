/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.jdt.core.IAccessRule
 *  org.eclipse.jdt.core.IJavaProject
 */
package org.eclipse.jdt.internal.launching.environments;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.jdt.core.IAccessRule;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.internal.launching.LaunchingPlugin;
import org.eclipse.jdt.launching.IVMInstall;
import org.eclipse.jdt.launching.LibraryLocation;
import org.eclipse.jdt.launching.environments.IAccessRuleParticipant;
import org.eclipse.jdt.launching.environments.IExecutionEnvironment;

class AccessRuleParticipant
implements IAccessRuleParticipant {
    private IConfigurationElement fElement;
    private IAccessRuleParticipant fDelegate;

    AccessRuleParticipant(IConfigurationElement element) {
        this.fElement = element;
    }

    /*
     * Unable to fully structure code
     */
    public IAccessRule[][] getAccessRules(IExecutionEnvironment environment, IVMInstall vm, LibraryLocation[] libraries, IJavaProject project) {
        try {
            return this.getDelegate().getAccessRules(environment, vm, libraries, project);
        }
        catch (CoreException e) {
            LaunchingPlugin.log(e.getStatus());
            rules = new IAccessRule[libraries.length][];
            i = 0;
            ** while (i < rules.length)
        }
lbl-1000:
        // 1 sources

        {
            rules[i] = new IAccessRule[0];
            ++i;
            continue;
        }
lbl11:
        // 1 sources

        return rules;
    }

    private IAccessRuleParticipant getDelegate() throws CoreException {
        if (this.fDelegate == null) {
            this.fDelegate = this.fElement.getName().equals("environment") ? (IAccessRuleParticipant)this.fElement.createExecutableExtension("ruleParticipant") : (IAccessRuleParticipant)this.fElement.createExecutableExtension("class");
        }
        return this.fDelegate;
    }

    String getId() {
        if (this.fElement.getName().equals("environment")) {
            return this.fElement.getAttribute("ruleParticipant");
        }
        return this.fElement.getAttribute("id");
    }

    private String getDelegateClassName() {
        if (this.fElement.getName().equals("environment")) {
            return this.fElement.getAttribute("ruleParticipant");
        }
        return this.fElement.getAttribute("class");
    }

    public boolean equals(Object obj) {
        if (obj instanceof AccessRuleParticipant) {
            AccessRuleParticipant participant = (AccessRuleParticipant)obj;
            return participant.getDelegateClassName().equals(this.getDelegateClassName());
        }
        return false;
    }

    public int hashCode() {
        return this.getDelegateClassName().hashCode();
    }

    public String toString() {
        return this.getDelegateClassName();
    }
}

