/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.PropertyTester
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.QualifiedName
 */
package org.eclipse.core.internal.propertytester;

import org.eclipse.core.expressions.PropertyTester;
import org.eclipse.core.internal.propertytester.StringMatcher;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourceAttributes;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.QualifiedName;

public class ResourcePropertyTester
extends PropertyTester {
    protected static final String EXTENSION = "extension";
    protected static final String NAME = "name";
    protected static final String PATH = "path";
    protected static final String PERSISTENT_PROPERTY = "persistentProperty";
    protected static final String PROJECT_NATURE = "projectNature";
    protected static final String PROJECT_PERSISTENT_PROPERTY = "projectPersistentProperty";
    protected static final String PROJECT_SESSION_PROPERTY = "projectSessionProperty";
    protected static final String READ_ONLY = "readOnly";
    protected static final String SESSION_PROPERTY = "sessionProperty";

    public boolean test(Object receiver, String method, Object[] args, Object expectedValue) {
        if (!(receiver instanceof IResource)) {
            return false;
        }
        IResource res = (IResource)receiver;
        if (method.equals(NAME)) {
            return new StringMatcher(this.toString(expectedValue)).match(res.getName());
        }
        if (method.equals(PATH)) {
            return new StringMatcher(this.toString(expectedValue)).match(res.getFullPath().toString());
        }
        if (method.equals(EXTENSION)) {
            return new StringMatcher(this.toString(expectedValue)).match(res.getFileExtension());
        }
        if (method.equals(READ_ONLY)) {
            ResourceAttributes attr = res.getResourceAttributes();
            return (attr != null && attr.isReadOnly()) == this.toBoolean(expectedValue);
        }
        if (method.equals(PROJECT_NATURE)) {
            try {
                IProject proj = res.getProject();
                return proj != null && proj.isAccessible() && proj.hasNature(this.toString(expectedValue));
            }
            catch (CoreException coreException) {
                return false;
            }
        }
        if (method.equals(PERSISTENT_PROPERTY)) {
            return this.testProperty(res, true, args, expectedValue);
        }
        if (method.equals(PROJECT_PERSISTENT_PROPERTY)) {
            return this.testProperty(res.getProject(), true, args, expectedValue);
        }
        if (method.equals(SESSION_PROPERTY)) {
            return this.testProperty(res, false, args, expectedValue);
        }
        if (method.equals(PROJECT_SESSION_PROPERTY)) {
            return this.testProperty(res.getProject(), false, args, expectedValue);
        }
        return false;
    }

    protected boolean testProperty(IResource resource, boolean persistentFlag, Object[] args, Object expectedValue) {
        Object actualVal;
        String expectedVal;
        block8: {
            String propertyName;
            if (resource == null) {
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
            try {
                QualifiedName key = this.toQualifedName(propertyName);
                Object object = actualVal = persistentFlag ? resource.getPersistentProperty(key) : resource.getSessionProperty(key);
                if (actualVal != null) break block8;
                return false;
            }
            catch (CoreException coreException) {
                return false;
            }
        }
        return expectedVal == null || expectedVal.equals(actualVal.toString());
    }

    protected boolean toBoolean(Object expectedValue) {
        if (expectedValue instanceof Boolean) {
            return (Boolean)expectedValue;
        }
        return true;
    }

    protected QualifiedName toQualifedName(String name) {
        int dot = name.lastIndexOf(46);
        QualifiedName key = dot != -1 ? new QualifiedName(name.substring(0, dot), name.substring(dot + 1)) : new QualifiedName(null, name);
        return key;
    }

    protected String toString(Object expectedValue) {
        return expectedValue == null ? "" : expectedValue.toString();
    }
}

