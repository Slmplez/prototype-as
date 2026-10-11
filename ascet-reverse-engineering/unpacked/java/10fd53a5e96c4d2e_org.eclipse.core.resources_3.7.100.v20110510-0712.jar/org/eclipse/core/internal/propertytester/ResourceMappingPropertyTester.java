/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.QualifiedName
 */
package org.eclipse.core.internal.propertytester;

import org.eclipse.core.internal.propertytester.ResourcePropertyTester;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.mapping.ResourceMapping;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.QualifiedName;

public class ResourceMappingPropertyTester
extends ResourcePropertyTester {
    public boolean test(Object receiver, String method, Object[] args, Object expectedValue) {
        String expectedVal;
        String propertyName;
        if (!(receiver instanceof ResourceMapping)) {
            return false;
        }
        if (!method.equals("projectPersistentProperty")) {
            return false;
        }
        IProject[] projects = ((ResourceMapping)((Object)receiver)).getProjects();
        if (projects.length == 0) {
            return false;
        }
        if (args.length == 0) {
            propertyName = this.toString(expectedValue);
            expectedVal = null;
        } else if (args.length == 1) {
            propertyName = this.toString(args[0]);
            expectedVal = null;
        } else {
            propertyName = this.toString(args[0]);
            expectedVal = this.toString(args[1]);
        }
        QualifiedName key = this.toQualifedName(propertyName);
        boolean found = false;
        int i = 0;
        while (i < projects.length) {
            try {
                String actualVal = projects[i].getPersistentProperty(key);
                if (actualVal != null) {
                    found = true;
                    if (expectedVal != null && !expectedVal.equals(actualVal.toString())) {
                        return false;
                    }
                }
            }
            catch (CoreException coreException) {}
            ++i;
        }
        return found;
    }
}

