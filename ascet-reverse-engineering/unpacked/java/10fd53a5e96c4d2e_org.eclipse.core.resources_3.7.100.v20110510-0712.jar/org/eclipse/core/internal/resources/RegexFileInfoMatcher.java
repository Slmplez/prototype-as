/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.IFileInfo
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.core.internal.resources;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import org.eclipse.core.filesystem.IFileInfo;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.filtermatchers.AbstractFileInfoMatcher;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;

public class RegexFileInfoMatcher
extends AbstractFileInfoMatcher {
    Pattern pattern = null;

    public boolean matches(IContainer parent, IFileInfo fileInfo) throws CoreException {
        if (this.pattern != null) {
            Matcher m = this.pattern.matcher(fileInfo.getName());
            return m.matches();
        }
        return false;
    }

    public void initialize(IProject project, Object arguments) throws CoreException {
        if (arguments != null) {
            try {
                this.pattern = Pattern.compile((String)arguments);
            }
            catch (PatternSyntaxException e) {
                throw new CoreException((IStatus)new Status(4, "org.eclipse.core.resources", 2, e.getMessage(), (Throwable)e));
            }
        }
    }
}

